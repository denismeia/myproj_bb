<map version="freeplane 1.5.9">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node FOLDED="false" ID="ID_1723255651" CREATED="1283093380553" MODIFIED="1484774566260" BACKGROUND_COLOR="#ccffcc"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>DROUGHT AGRO</b>
    </p>
  </body>
</html>
</richcontent>
<hook NAME="MapStyle" background="#ffffff">
    <properties fit_to_viewport="false;" show_note_icons="true"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24.0 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" MAX_WIDTH="600.0 px" COLOR="#000000" STYLE="as_parent">
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes">
<font SIZE="9"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important">
<icon BUILTIN="yes"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10"/>
</stylenode>
</stylenode>
</stylenode>
</map_styles>
</hook>
<hook NAME="AutomaticEdgeColor" COUNTER="26" RULE="ON_BRANCH_CREATION"/>
<node TEXT="Datasets" POSITION="right" ID="ID_1603373953" CREATED="1484687962696" MODIFIED="1484774530044">
<edge COLOR="#666666" WIDTH="thin"/>
<font BOLD="true"/>
<node TEXT="M_D09Q1" ID="ID_1579298378" CREATED="1484688197315" MODIFIED="1485189000420">
<icon BUILTIN="button_ok"/>
<node ID="ID_1930929963" CREATED="1484690359940" MODIFIED="1485189101241"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Surface reflectance of R and NIR at 250m each 8-days</b>.
    </p>
    <p>
      From this, we can calculate NDVI. <i>(Aqua downloaded)</i>
    </p>
  </body>
</html>
</richcontent>
<node TEXT="" ID="ID_1847384186" CREATED="1485992065757" MODIFIED="1485992111160" LINK="../../../../../media/denis/seagate/MODIS/MYD09Q1/"/>
</node>
</node>
<node TEXT="M_D11A2" ID="ID_45537891" CREATED="1484688651203" MODIFIED="1485216833277">
<icon BUILTIN="button_ok"/>
<node ID="ID_1106123707" CREATED="1484690393999" MODIFIED="1484774291062"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>LST day and night at 1000m every 8-days.</b>
    </p>
    <p>
      This is an input for VPD following the simple method of Hashimoto 2008
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="MCD15A3H" FOLDED="true" ID="ID_1576708674" CREATED="1484688337048" MODIFIED="1486415802240">
<icon BUILTIN="yes"/>
<node ID="ID_568193431" CREATED="1484690431864" MODIFIED="1486415809629"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>LAI / FPAR at 500m every 4-day. </b>
    </p>
    <p>
      <font color="rgb(85, 85, 85)" face="Arial">R. Myneni, Y. K., T.Park. (2015). MCD15A3H MODIS/Terra+Aqua Leaf Area Index/FPAR 4-day L4 Global 500m SIN Grid V006. NASA EOSDIS Land Processes DAAC. https://doi.org/10.5067/MODIS/MCD15A3H.006</font>
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="M_17AH2" ID="ID_1473677649" CREATED="1484688572567" MODIFIED="1485188995177">
<icon BUILTIN="button_ok"/>
<node ID="ID_213811655" CREATED="1484690456963" MODIFIED="1484770954346"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>GPP &amp; Net Photosynthesis at 500m every 8-days.</b>
    </p>
    <p>
      S. Running, Q. M., M.Zhao. (2015). MOD17A2H MODIS/Terra Gross Primary Productivity 8-Day L4 Global 500m SIN Grid V006. NASA EOSDIS Land Processes DAAC. https://doi.org/10.5067/MODIS/MOD17A2H.006
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="CHIRPS-V2" ID="ID_1716737875" CREATED="1484689832545" MODIFIED="1484689854066">
<node ID="ID_1458422900" CREATED="1484690478656" MODIFIED="1484764542984"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Precipitation, prec. anomaly and prec. z-score at 5000m daily.</b>
    </p>
    <p>
      Funk, Chris, Pete Peterson, Martin Landsfeld, Diego Pedreros, James Verdin, Shraddhanand Shukla, Gregory Husak, James Rowland, Laura Harrison, Andrew Hoell &amp; Joel Michaelsen. &quot;The climate hazards infrared precipitation with stations&#8212;a new environmental record for monitoring extremes&quot;. Scientific Data 2, 150066. doi:10.1038/sdata.2015.66 2015.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="ESI" ID="ID_678799077" CREATED="1484690101687" MODIFIED="1484690105560">
<node ID="ID_1048493866" CREATED="1484690496072" MODIFIED="1484764564515"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <div>
      <div align="left" style="width: 600pt">
        <p>
          <b>Evaporative Stress Index (ESI) at 4000m weekly</b>
        </p>
        <p>
          Anderson, M.C., C. Hain, B. Wardlow, A. Pimstein, J.R. Mecikalski and W.P. Kustas, 2011:Evaluation of drought indices based on thermal remote sensing of evapotranspiration over the continental United States. Journal of Climate, 24(8):2025&#8211;2044.
        </p>
      </div>
    </div>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="VIIRS Suomi NPP Stuff" ID="ID_1137105915" CREATED="1488559822210" MODIFIED="1488559856134">
<icon BUILTIN="messagebox_warning"/>
<node TEXT="VIIRS products were launched on 2012, these datasets might not be considered in this study due to the date range. However, Chris Neale asked me about testing ET models relying on such data as input and, in turn, this could engage us in proto-projects with Brazil. Chris also said something about partnering with a a professor (Ivo ex-advisor) and being funded by FapeSP." ID="ID_1551705198" CREATED="1488559903650" MODIFIED="1488560164262"/>
</node>
</node>
<node TEXT="Possible datasets" POSITION="right" ID="ID_1733458538" CREATED="1484690199883" MODIFIED="1484690215429">
<edge COLOR="#808080"/>
<node TEXT="JPL VPD" ID="ID_841740002" CREATED="1484690218793" MODIFIED="1484690226630"/>
</node>
<node TEXT="Questions" POSITION="left" ID="ID_1715149422" CREATED="1484691149772" MODIFIED="1484770832224">
<edge COLOR="#808080"/>
<font BOLD="true"/>
<node ID="ID_670000699" CREATED="1484691170097" MODIFIED="1484692675884"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>1. Is it possible to detect drought early? Or, how early can we detect drought?</b>
    </p>
    <ul>
      <li>
        some variables hopefully show sensitivity earlier, so we can detect the drought onset.
      </li>
    </ul>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_1856671452" CREATED="1484691228461" MODIFIED="1484853885019"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>2. Model(s) derived from the 1st objective can correlate well to the yield? How was the panorama of drought during the studied period?</b>
    </p>
    <ul>
      <li>
        A comprehensive assessment of the drought occurrences throughout the years.
      </li>
      <li>
        A long and thoughtful backward variables selection will tell me what matters what don't in a yield prediction model.
      </li>
    </ul>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_1265234420" CREATED="1484691334598" MODIFIED="1484771799138"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>3. Is LUE affected by drought?</b>
    </p>
    <ul>
      <li>
        <p>
          <font color="#ff0000">My hyphothesis for that is: if GPP = PAR x fPAR&#160;x LUE or GPP = APAR x LUE, is it an immediate relation? Is LUE constant regardless the stress? I need better insights here.</font>
        </p>
      </li>
      <li>
        <p>
          How is VPD related to drought?
        </p>
      </li>
    </ul>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Outputs" POSITION="right" ID="ID_1489016840" CREATED="1484695540579" MODIFIED="1484695564962">
<edge COLOR="#808080"/>
<font BOLD="true"/>
<node TEXT="NDVI time-series" ID="ID_478705361" CREATED="1484696982759" MODIFIED="1484697058816">
<node TEXT="from M_D09Q1 &gt;Vegetation indices may be submitted to a filtering procedure" ID="ID_1119034280" CREATED="1484761882088" MODIFIED="1484761947018"/>
</node>
<node TEXT="GPP time-series" ID="ID_1678724937" CREATED="1484761959381" MODIFIED="1484762019143">
<node TEXT="from M_17AH2 &gt; Filtered or not?" ID="ID_1189962479" CREATED="1484762021675" MODIFIED="1484762047026"/>
</node>
<node TEXT="LAI / FPAR" ID="ID_1317926404" CREATED="1484762056719" MODIFIED="1484762065012">
<node TEXT="from MCD15AH2 &gt; Just as input for LUE calculation? FPAR = APAR/PARinc" ID="ID_1410407963" CREATED="1484762069200" MODIFIED="1484770258586">
<icon BUILTIN="yes"/>
</node>
</node>
<node TEXT="LUE" ID="ID_1704415422" CREATED="1484762156082" MODIFIED="1484764345363">
<icon BUILTIN="messagebox_warning"/>
<node ID="ID_651481560" CREATED="1484762167204" MODIFIED="1484774112761"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>from LUE = GPP/(FPAR x PARinc); however, there is no PAR! </b>
    </p>
    <p>
      <b>an alternative for LUE is <font color="#ff0000">PRI </font>(Photochemical Reflectance Index)</b>.
    </p>
    <p>
      Drolet, G. G., Middleton, E. M., Huemmrich, K. F., Hall, F. G., Amiro, B. D., Barr, A. G., &#8230; Margolis, H. A. (2008). Regional mapping of gross light-use efficiency using MODIS spectral indices. Remote Sensing of Environment, 112(6), 3064&#8211;3078. https://doi.org/10.1016/j.rse.2008.03.002
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="LST time-series" ID="ID_1960436942" CREATED="1484773726862" MODIFIED="1484773735090">
<node TEXT="as input for VPD following Hashimoto 2008." ID="ID_299911913" CREATED="1484773737404" MODIFIED="1484773766151"/>
</node>
<node TEXT="VPD" ID="ID_481405121" CREATED="1484773773543" MODIFIED="1484853882482">
<icon BUILTIN="messagebox_warning"/>
<node TEXT="I&apos;m not sure wether 8-day time-step will tell me anything about how VPD is driven by drought and, hence, vegetation underdevelopment." ID="ID_143511291" CREATED="1484853696817" MODIFIED="1484853864441"/>
</node>
<node TEXT="SPI3" ID="ID_480508248" CREATED="1484774723810" MODIFIED="1484774732778">
<node TEXT="This is calculated in R using SPEI package, by applying the function over the data-frames." ID="ID_1720547736" CREATED="1484774734262" MODIFIED="1484774803397"/>
</node>
<node TEXT="ESI" ID="ID_1159934478" CREATED="1484770298940" MODIFIED="1484770302417">
<node TEXT="From ESI &gt; weekly evapotranspiration anomalies.&#xa;My preliminary studies for QuickDRI have showed that ESI has earlier response to drought up to two weeks." ID="ID_844760623" CREATED="1484770304606" MODIFIED="1484770405833"/>
</node>
</node>
<node TEXT="Study area and period" FOLDED="true" POSITION="left" ID="ID_382754904" CREATED="1484692750316" MODIFIED="1484777157869" HGAP_QUANTITY="43.2499991282821 pt" VSHIFT_QUANTITY="-23.249999307096026 pt">
<edge COLOR="#808080"/>
<font BOLD="true"/>
<node TEXT="Brazil" ID="ID_727408508" CREATED="1484692763833" MODIFIED="1484770579915">
<icon BUILTIN="messagebox_warning"/>
<node TEXT="Soybean in Parana and Mato Grosso." ID="ID_1460544721" CREATED="1484692782350" MODIFIED="1484777166625">
<node TEXT="Yield data for modeling is an issue.&#xa;We might have to figure out how to break down the data by rotation.&#xa;It is time to work on contacts and communication with EMBRAPAs, IAPAR, Fundacao Santo Andre, IMEA and so on." ID="ID_1794106104" CREATED="1484770609711" MODIFIED="1484777166622"/>
</node>
<node TEXT="Maize as second crop?" ID="ID_546534144" CREATED="1484692856791" MODIFIED="1484692867398">
<node TEXT="For some regions, if the yearly mapping is accurate, it will be easy to break down yield data to maize and soy." ID="ID_890302154" CREATED="1484770756869" MODIFIED="1484770811916"/>
</node>
</node>
<node TEXT="USA" ID="ID_1642395105" CREATED="1484692815518" MODIFIED="1484692818495">
<node TEXT="Maize in Nebraska, Illinois, Iowa." ID="ID_896688307" CREATED="1484692822710" MODIFIED="1484692838045"/>
<node TEXT="Soybean somewhere" ID="ID_1001503880" CREATED="1484692839498" MODIFIED="1484692845047"/>
</node>
</node>
<node TEXT="Committee" POSITION="left" ID="ID_61302216" CREATED="1486138355474" MODIFIED="1486138701564">
<edge COLOR="#808080"/>
<font BOLD="true"/>
<node ID="ID_1142419692" CREATED="1486138616035" MODIFIED="1486138662002"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Brian Wardlow</b>
    </p>
    <p>
      <a href="mailto:bwardlow2@unl.edu">bwardlow2@unl.edu</a>
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_1112804636" CREATED="1486138373588" MODIFIED="1486138546300"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>John Gamon</b>
    </p>
    <p>
      <a href="mailto:jgamon@unl.edu">jgamon@unl.edu</a>
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_307811857" CREATED="1486138562221" MODIFIED="1486138701563"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Mark Svoboda</b>
    </p>
    <p>
      <a href="mailto:msvoboda2@unl.edu">msvoboda2@unl.edu</a>
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_304409441" CREATED="1486138708182" MODIFIED="1486138797436"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Christopher Neale</b>
    </p>
    <p>
      <a href="mailto:cneale2@unl.edu">cneale2@unl.edu </a>
    </p>
    <p>
      <a href="mailto:cneale@nebraska.edu">cneale@nebraska.edu</a>
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="People" POSITION="left" ID="ID_829856239" CREATED="1484771395181" MODIFIED="1484771414790">
<edge COLOR="#808080"/>
<font BOLD="true"/>
<node ID="ID_256774624" CREATED="1484771410641" MODIFIED="1486138460359"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Fabio Ricardo Marin (ESALQ)</b>
    </p>
    <p>
      <a href="mailto:fabio.marin@usp.br">fabio.marin@usp.br</a>
    </p>
    <p>
      p: +55 19 3447 8507
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_359827225" CREATED="1484771471127" MODIFIED="1486138476467"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Daniel de Castro Victoria EMBRAPA-InA</b>
    </p>
    <p>
      <a href="mailto:daniel.victoria@embrapa.br">daniel.victoria@embrapa.br</a>
    </p>
  </body>
</html>
</richcontent>
<node TEXT="Mato Grosso good data" ID="ID_1001934966" CREATED="1484773821742" MODIFIED="1484773832035"/>
</node>
<node ID="ID_1601992064" CREATED="1484771578713" MODIFIED="1486138492502"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Jeslyn Christopher Brown (KU)</b>
    </p>
    <p>
      <a href="mailto:jcbrown2@ku.edu">jcbrown2@ku.edu</a>
    </p>
    <p>
      p: 785 864 5543
    </p>
    <p>
      Brian's friend!
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_1067526381" CREATED="1484772346749" MODIFIED="1486138511000"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Martha Anderson (USDA-ARS)</b>
    </p>
    <p>
      <a href="mailto:martha.anderson@ars.usda.gov">martha.anderson@ars.usda.gov</a>
    </p>
    <p>
      p: 301 504 6616
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_1692704930" CREATED="1486137940110" MODIFIED="1486418400425"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Christopher Hain (NASA-NOAA) </b>
    </p>
    <p>
      <b>NASA Marshall Space Flight Center</b>
    </p>
    <p>
      <a href="mailto:christopher.hain@nasa.gov">christopher.hain@nasa.gov</a>
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="LINKS" POSITION="right" ID="ID_1099415822" CREATED="1485993347002" MODIFIED="1485993373206">
<edge COLOR="#808080"/>
<font BOLD="true"/>
<node TEXT="VPD" ID="ID_1111042275" CREATED="1485993357215" MODIFIED="1485993376108">
<font BOLD="true"/>
<node TEXT="http://physics.stackexchange.com/questions/4343/how-can-i-calculate-vapor-pressure-deficit-from-temperature-and-relative-humidit" ID="ID_534648567" CREATED="1485993364125" MODIFIED="1485993367935"/>
</node>
</node>
<node POSITION="left" ID="ID_377113480" CREATED="1485993853606" MODIFIED="1485993859981"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>IDEAS</b>
    </p>
  </body>
</html>
</richcontent>
<edge COLOR="#808080"/>
<node TEXT="VPD" ID="ID_1250673349" CREATED="1485993862053" MODIFIED="1485993867148">
<font BOLD="true"/>
<node TEXT="Usar LST Nighttime e Daytime do Terra e Aqua pra tentar derivar VPD. So precisamos de VPD datasets. Se arrumar, blz, tacale pau" ID="ID_379384074" CREATED="1485993870775" MODIFIED="1485993922492"/>
</node>
</node>
</node>
</map>
