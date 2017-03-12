 
 **DROUGHT AGRO** 

# Datasets

## M_D09Q1

### 
 **Surface reflectance of R and NIR at 250m each 8-days** .
From this, we can calculate NDVI. *(Aqua downloaded)* 

#### 

## M_D11A2

### 
 **LST day and night at 1000m every 8-days.** 
This is an input for VPD following the simple method of Hashimoto 2008

## MCD15A3H

### 
 **LAI / FPAR at 500m every 4-day.** 
R. Myneni, Y. K., T.Park. (2015). MCD15A3H MODIS/Terra+Aqua Leaf Area Index/FPAR 4-day L4 Global 500m SIN Grid V006. NASA EOSDIS Land Processes DAAC. https://doi.org/10.5067/MODIS/MCD15A3H.006

## M_17AH2

### 
 **GPP & Net Photosynthesis at 500m every 8-days.** 
S. Running, Q. M., M.Zhao. (2015). MOD17A2H MODIS/Terra Gross Primary Productivity 8-Day L4 Global 500m SIN Grid V006. NASA EOSDIS Land Processes DAAC. https://doi.org/10.5067/MODIS/MOD17A2H.006

## CHIRPS-V2

### 
 **Precipitation, prec. anomaly and prec. z-score at 5000m daily.** 
Funk, Chris, Pete Peterson, Martin Landsfeld, Diego Pedreros, James Verdin, Shraddhanand Shukla, Gregory Husak, James Rowland, Laura Harrison, Andrew Hoell & Joel Michaelsen. "The climate hazards infrared precipitation with stations—a new environmental record for monitoring extremes". Scientific Data 2, 150066. doi:10.1038/sdata.2015.66 2015.

## ESI

### 
 **Evaporative Stress Index (ESI) at 4000m weekly** 
Anderson, M.C., C. Hain, B. Wardlow, A. Pimstein, J.R. Mecikalski and W.P. Kustas, 2011:Evaluation of drought indices based on thermal remote sensing of evapotranspiration over the continental United States. Journal of Climate, 24(8):2025–2044.

## VIIRS Suomi NPP Stuff

### VIIRS products were launched on 2012, these datasets might not be considered in this study due to the date range. However, Chris Neale asked me about testing ET models relying on such data as input and, in turn, this could engage us in proto-projects with Brazil. Chris also said something about partnering with a a professor (Ivo ex-advisor) and being funded by FapeSP.

# Possible datasets

## JPL VPD

# Questions

## 
 **1. Is it possible to detect drought early? Or, how early can we detect drought?** some variables hopefully show sensitivity earlier, so we can detect the drought onset.

## 
 **2. Model(s) derived from the 1st objective can correlate well to the yield? How was the panorama of drought during the studied period?** A comprehensive assessment of the drought occurrences throughout the years.
A long and thoughtful backward variables selection will tell me what matters what don't in a yield prediction model.

## 
 **3. Is LUE affected by drought?** My hyphothesis for that is: if GPP = PAR x fPAR x LUE or GPP = APAR x LUE, is it an immediate relation? Is LUE constant regardless the stress? I need better insights here.
How is VPD related to drought?

# Outputs

## NDVI time-series

### from M_D09Q1 >Vegetation indices may be submitted to a filtering procedure

## GPP time-series

### from M_17AH2 > Filtered or not?

## LAI / FPAR

### from MCD15AH2 > Just as input for LUE calculation? FPAR = APAR/PARinc

## LUE

### 
 **from LUE = GPP/(FPAR x PARinc); however, there is no PAR!** 
 **an alternative for LUE isPRI(Photochemical Reflectance Index)** .
Drolet, G. G., Middleton, E. M., Huemmrich, K. F., Hall, F. G., Amiro, B. D., Barr, A. G., … Margolis, H. A. (2008). Regional mapping of gross light-use efficiency using MODIS spectral indices. Remote Sensing of Environment, 112(6), 3064–3078. https://doi.org/10.1016/j.rse.2008.03.002

## LST time-series

### as input for VPD following Hashimoto 2008.

## VPD

### I'm not sure wether 8-day time-step will tell me anything about how VPD is driven by drought and, hence, vegetation underdevelopment.

## SPI3

### This is calculated in R using SPEI package, by applying the function over the data-frames.

## ESI

### From ESI > weekly evapotranspiration anomalies. My preliminary studies for QuickDRI have showed that ESI has earlier response to drought up to two weeks.

# Study area and period

## Brazil

### Soybean in Parana and Mato Grosso.

#### Yield data for modeling is an issue. We might have to figure out how to break down the data by rotation. It is time to work on contacts and communication with EMBRAPAs, IAPAR, Fundacao Santo Andre, IMEA and so on.

### Maize as second crop?

#### For some regions, if the yearly mapping is accurate, it will be easy to break down yield data to maize and soy.

## USA

### Maize in Nebraska, Illinois, Iowa.

### Soybean somewhere

# Committee

## 
 **Brian Wardlow** 
bwardlow2@unl.edu

## 
 **John Gamon** 
jgamon@unl.edu

## 
 **Mark Svoboda** 
msvoboda2@unl.edu

## 
 **Christopher Neale** 
cneale2@unl.edu
cneale@nebraska.edu

# People

## 
 **Fabio Ricardo Marin (ESALQ)** 
fabio.marin@usp.br
p: +55 19 3447 8507

## 
 **Daniel de Castro Victoria EMBRAPA-InA** 
daniel.victoria@embrapa.br

### Mato Grosso good data

## 
 **Jeslyn Christopher Brown (KU)** 
jcbrown2@ku.edu
p: 785 864 5543
Brian's friend!

## 
 **Martha Anderson (USDA-ARS)** 
martha.anderson@ars.usda.gov
p: 301 504 6616

## 
 **Christopher Hain (NASA-NOAA)** 
 **NASA Marshall Space Flight Center** 
christopher.hain@nasa.gov

# LINKS

## VPD

### http://physics.stackexchange.com/questions/4343/how-can-i-calculate-vapor-pressure-deficit-from-temperature-and-relative-humidit

# 
 **IDEAS** 

## VPD

### Usar LST Nighttime e Daytime do Terra e Aqua pra tentar derivar VPD. So precisamos de VPD datasets. Se arrumar, blz, tacale pau
