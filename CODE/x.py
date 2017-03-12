import xuleta2, os, time

start = time.time()
warp = 'for kep in *.tif;do gdalwarp -overwrite -multi -tr 0.00225 0.00225 -s_srs "+proj=sinu +lon_0=0 +x_0=0 +y_0=0 +a=6371007.181 +b=6371007.181 +units=m +no_defs" -t_srs EPSG:4326 -multi -dstnodata -2 -of GTiff $kep t$kep;done'
translate = 'for kep in t*.*;do gdal_translate -co COMPRESS=DEFLATE -co PREDICTOR=2 -co ZLEVEL=9 -a_nodata -2 -of GTiff $kep final$kep;done'

os.chdir("/media/denis/seagate/MODIS/MYD09Q1/h12v10/ndvi")
os.system(warp)
os.system(translate)
os.system('rm t*.*')
os.system('rm M*.tif')

os.chdir("/media/denis/seagate/MODIS/MYD09Q1/h13v11/ndvi")
os.system(warp)
os.system(translate)
os.system('rm t*.*')
os.system('rm M*.tif')

end = time.time()
taime = (end - start)/60
xuleta2.shemale(taime=taime)
