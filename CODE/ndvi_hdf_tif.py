

import os, sys, time, numpy, fnmatch
from osgeo import gdal
from osgeo.gdalconst import *
import multiprocessing
import xuleta2

# information on myd09q1 file
ncol = 4800
nrow = 4800
nband = 7		# band 1 to 7, quality flag 8-13 skipped
scalef = 10000		# scalefactor
ocean_fillval = -3.0	# oceans
fillval = -2.0
# valid range -0.2 to 1.0
min_ndvi= -0.2
max_ndvi = 1.0
min_evi= -0.2
max_evi = 1.0
min_lswi= -1.0
max_lswi = 1.0


def return_band(myd09q1_file_name, band_number):
    #open myd09q1
    fn_myd09q1 = myd09q1_file_name

    if band_number < 14 and band_number > 0:
        #print 'Get band: ' + str(band_number)
        fn_myd09q1 = 'HDF4_EOS:EOS_GRID:'+fn_myd09q1+':MOD_Grid_250m_Surface_Reflectance:sur_refl_b0'+str(band_number)
        #print fn_myd09q1

        ds_myd09q1 = gdal.Open(fn_myd09q1,GA_ReadOnly)
        if ds_myd09q1 is None:
            print "Could not open " + fn_myd09q1
            sys.exit(1)

        geoTransform = ds_myd09q1.GetGeoTransform()
        proj = ds_myd09q1.GetProjection()

        rasterband = ds_myd09q1.GetRasterBand(1)
        #type(rasterband)
        band = rasterband.ReadAsArray(0,0,ncol,nrow)
        band = band.astype(numpy.float)

        return band,geoTransform,proj

        ds_myd09q1 = None
        band = None

def output_file(output_name,output_array,geoTransform,proj):
    format = "GTiff"
    driver = gdal.GetDriverByName( format )
    outDataset = driver.Create(output_name,4800,4800,1,GDT_Float32)
    outBand = outDataset.GetRasterBand(1)
    outBand.WriteArray(output_array,0,0)
    outBand.FlushCache()
    outBand.SetNoDataValue(fillval)
    outDataset.SetGeoTransform(geoTransform )
    outDataset.SetProjection(proj)

def normalize(band1,band2):
    var1 = numpy.subtract(band1,band2)
    var2 = numpy.add(band1,band2)

    numpy.seterr(all='ignore')
    ndvi = numpy.divide(var1,var2)

    return ndvi

def process_ndvi(myd09q1_file_name,ndvi_output_name):
    #open myd09q1
    fn_myd09q1 = myd09q1_file_name

    red,geoTransform,proj  = return_band(fn_myd09q1,1) # band 1 -- red		(620 - 670nm)
    nir1 = return_band(fn_myd09q1,2)[0] # band 2 -- nir1	(841 - 875 nm)

    ocean_mask = numpy.where(red == -28672, 1, 0)
    red_mask = numpy.where(red <= 1 , 1, 0)
    nir1_mask = numpy.where(nir1 <= 1, 1, 0)


    ndvi = normalize(nir1,red)

    #ndvi = (nir1 - red) / (red + nir1 +0.00000000001)
    min_ndvi_mask = numpy.where(ndvi < min_ndvi, 1, 0)
    max_ndvi_mask = numpy.where(ndvi > max_ndvi, 1, 0)

    numpy.putmask(ndvi, min_ndvi_mask, min_ndvi)

    numpy.putmask(ndvi, max_ndvi_mask, max_ndvi)

    numpy.putmask(ndvi, red_mask, fillval)
    numpy.putmask(ndvi, nir1_mask, fillval)
    numpy.putmask(ndvi, ocean_mask, ocean_fillval)

    #output file

    output_file(ndvi_output_name,ndvi,geoTransform,proj)

    red = None
    nir1 = None
    ndvi = None
    min_ndvi_mask = None
    max_ndvi_mask = None
    ocean_mask = None

def findfiles(root_dir):
    toprocess = []  # list to store paths for processing in
    for root,dir,files in os.walk(root_dir):
        for name in files:
            if fnmatch.fnmatch(name,'*.hdf'):
               toprocess.append( os.path.join(root, name) )
               print os.path.join(root, name)
    return toprocess

def creatoutputfolder(path,root_dir,output_dir,product):
    myd09q1_dir = os.path.dirname(path)
    name = os.path.basename(path)
    myd09q1 = os.path.join(myd09q1_dir,name)
    #print 'Processing: ', myd09q1

    relative_path = os.path.relpath(myd09q1_dir,root_dir)
    #print relative_path

    product_dir = os.path.join(output_dir,product)
    product_dir = os.path.join(product_dir,relative_path)
    if not os.path.exists(product_dir):
        os.makedirs(product_dir)
        print '    Creating dir: ',product_dir

def product_output_name(output_dir,myd09q1_name,relative_path,product):
    product_dir = os.path.join(output_dir,product)
    product_dir = os.path.join(product_dir,relative_path)
    #print product_dir
    product_output_name = myd09q1_name[:-4]+'.'+product+'.tif'
    #print product_output_name
    #print product_dir
    product_path_file = os.path.join(product_dir,product_output_name)
    #print '    Output file: ',product_path_file
    return product_path_file

def doprocess(path):
    t1 = time.time()
    myd09q1_dir = os.path.dirname(path)
    name = os.path.basename(path)
    myd09q1 = os.path.join(myd09q1_dir,name)
    #print 'Processing: ', myd09q1

    relative_path = os.path.relpath(myd09q1_dir,root_dir)
    #print relative_path


    ndvi = product_output_name(output_dir,name,relative_path,'ndvi')
    #print '    Processing: ',ndvi
    process_ndvi(myd09q1,ndvi)
    #print '\n'

#    evi = product_output_name(output_dir,name,relative_path,'evi')
    #print '    Processing: ',evi
#    process_evi(myd09q1,evi)

#    lswi = product_output_name(output_dir,name,relative_path,'lswi')
    #print '    Processing: ',lswi
#    process_lswi(myd09q1,lswi)

    print 'Processing done: ',myd09q1
    t2 = time.time()
    print 'Onee process took :' +str(t2 - t1)+ ' seconds'
    #print '\n'

def run(root_dir_input,out_put_dir):
    #input myd09q1 root directory

    global root_dir
    global output_dir

    root_dir = root_dir_input
    output_dir = out_put_dir

    filelist = findfiles(root_dir)
    print root_dir
    print output_dir

    for f in filelist:
        creatoutputfolder(f,root_dir,output_dir,'ndvi')
#        creatoutputfolder(f,root_dir,output_dir,'evi')
#        creatoutputfolder(f,root_dir,output_dir,'lswi')

    pool = multiprocessing.Pool(processes=multiprocessing.cpu_count())
    pool.map(doprocess,findfiles(root_dir))
    print 'Using ' +str(multiprocessing.cpu_count())+' cores.'


start =time.time()
myd09q1_path = "/media/denis/seagate/MODIS/MYD09Q1/h10v04"
geotiff_path = "/media/denis/seagate/MODIS/MYD09Q1/h10v04"
run(myd09q1_path,geotiff_path)

myd09q1_path = "/media/denis/seagate/MODIS/MYD09Q1/h11v04"
geotiff_path = "/media/denis/seagate/MODIS/MYD09Q1/h11v04"
run(myd09q1_path,geotiff_path)

myd09q1_path = "/media/denis/seagate/MODIS/MYD09Q1/h12v10"
geotiff_path = "/media/denis/seagate/MODIS/MYD09Q1/h12v10"
run(myd09q1_path,geotiff_path)

myd09q1_path = "/media/denis/seagate/MODIS/MYD09Q1/h13v11"
geotiff_path = "/media/denis/seagate/MODIS/MYD09Q1/h13v11"
run(myd09q1_path,geotiff_path)

#GDAL processes
warp = 'for kep in *.tif;do gdalwarp -overwrite -multi -tr 0.00225 0.00225 -s_srs "+proj=sinu +lon_0=0 +x_0=0 +y_0=0 +a=6371007.181 +b=6371007.181 +units=m +no_defs" -t_srs EPSG:4326 -multi -dstnodata -2 -of GTiff $kep t$kep;done'
translate = 'for kep in t*.*;do gdal_translate -co COMPRESS=DEFLATE -co PREDICTOR=2 -co ZLEVEL=9 -a_nodata -2 -of GTiff $kep final$kep;done'

os.chdir("/media/denis/seagate/MODIS/MYD09Q1/h10v04/ndvi")
os.system(warp)
os.system(translate)
os.system('rm t*.*')

os.chdir("/media/denis/seagate/MODIS/MYD09Q1/h11v04/ndvi")
os.system(warp)
os.system(translate)
os.system('rm t*.*')

os.chdir("/media/denis/seagate/MODIS/MYD09Q1/h12v10v04/ndvi")
os.system(warp)
os.system(translate)
os.system('rm t*.*')

os.chdir("/media/denis/seagate/MODIS/MYD09Q1/h13v11v04/ndvi")
os.system(warp)
os.system(translate)
os.system('rm t*.*')

end = time.time()
taime = (end - start)/60
xuleta2.shemale(taime=taime)

#for kep in *.tif;do gdalwarp -overwrite -multi -tr 0.00225 0.00225 -s_srs "+proj=sinu +lon_0=0 +x_0=0 +y_0=0 +a=6371007.181 +b=6371007.181 +units=m +no_defs" -t_srs EPSG:4326 -multi -dstnodata -2 -of GTiff $kep t$kep;done

#for kep in t*.*;do gdal_translate -co COMPRESS=DEFLATE -co PREDICTOR=2 -co ZLEVEL=9 -a_nodata -2 -of GTiff $kep final$kep;done
