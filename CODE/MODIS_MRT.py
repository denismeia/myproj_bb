import xuleta2, os, time

start = time.time()

os.chdir("/home/denis/apps/MRT/bin/")
jar = 'java -jar MRTBatch.jar -d '
root = "/media/denis/seagate/MODIS/MYD09Q1/"
pastas = ["h10v04","h11v04","h12v10","h13v11"]
prms = ["p1004.prm","p1104.prm","p1210.prm","p1311.prm"]

for i,j in zip(pastas,prms):
    os.system(jar + root + i + " -p " + root + j)
    os.system("chmod +x mrtbatch; ./mrtbatch; rm mrtbatch")
taime = (time.time()-start)/60

xuleta2.shemale(taime)
