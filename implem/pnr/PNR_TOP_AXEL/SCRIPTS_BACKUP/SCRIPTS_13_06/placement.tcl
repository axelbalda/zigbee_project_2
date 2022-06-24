#////////////////////////////////////////////////////
#SCRIPT DE PLACEMENT DES CELLULES
#Modified : 20 May 2022
#////////////////////////////////////////////////////

#Utilisation d'un noeud technologique supérieur ou égal à 130 nm
setDesignMode -process 250

# Placement des capa de découplage entre les rails d'alimentation vdd! gnd!
#addEndCap -preCap ENDCAPL -postCap ENDCAPR -prefix ENDCAP
setEndCap -rightEdge ENDCAPL

################# Blockage routage sur les stipes en métal 2
#createRouteBlk -box {522.2  421.2 534.8  1760.2} -layer M2 -spacing 0.5
#createRouteBlk -box {624.4  421.2 637    1760.2} -layer M2 -spacing 0.5
#createRouteBlk -box {728    421.2 740.6  1760.2} -layer M2 -spacing 0.5
#createRouteBlk -box {831.6  421.2 844.2  1760.2} -layer M2 -spacing 0.5
#createRouteBlk -box {933.8  421.2 946.4  1760.2} -layer M2 -spacing 0.5
#createRouteBlk -box {1037.4 421.2 1050   1760.2} -layer M2 -spacing 0.5
#createRouteBlk -box {1141   421.2 1153.6 1760.2} -layer M2 -spacing 0.5
#createRouteBlk -box {1243.2 421.2 1257   1760.2} -layer M2 -spacing 0.5
#createRouteBlk -box {1346.8 421.2 1359.4 1760.2} -layer M2 -spacing 0.5
#createRouteBlk -box {1450.4 421.2 1463   1760.2} -layer M2 -spacing 0.5
#createRouteBlk -box {1552.6 421.2 1566.6 1760.2} -layer M2 -spacing 0.5
#createRouteBlk -box {1656.2 421.2 1668.8 1760.2} -layer M2 -spacing 0.5

################# Blockages arround stripes
createPlaceBlockage -type hard -box { { 522.2  421.2 534.8  1760.2 } }
createPlaceBlockage -type hard -box { { 624.4  421.2 637    1760.2 } }
createPlaceBlockage -type hard -box { { 728    421.2 740.6  1760.2 } }
createPlaceBlockage -type hard -box { { 831.6  421.2 844.2  1760.2 } }
createPlaceBlockage -type hard -box { { 933.8  421.2 946.4  1760.2 } }
createPlaceBlockage -type hard -box { { 1037.4 421.2 1050   1760.2 } }
createPlaceBlockage -type hard -box { { 1141   421.2 1153.6 1760.2 } }
createPlaceBlockage -type hard -box { { 1243.2 421.2 1257   1760.2 } }
createPlaceBlockage -type hard -box { { 1346.8 421.2 1359.4 1760.2 } }
createPlaceBlockage -type hard -box { { 1450.4 421.2 1463   1760.2 } }
createPlaceBlockage -type hard -box { { 1552.6 421.2 1566.6 1760.2 } }
createPlaceBlockage -type hard -box { { 1656.2 421.2 1668.8 1760.2 } }


#Placement automatique des standard cells
setRouteMode -earlyGlobalMaxRouteLayer 4
setRouteMode -earlyGlobalMinRouteLayer 1


place_opt_design

setOptMode -fixCap true -fixTran  true -fixFanoutLoad false
optDesign -preCTS

source ../SCRIPTS/clock_tree_synthesis.tcl

optDesign -postCTS

#routeDesign -globalDetail

#setAnalysisMode -analysisType onChipVariation -cppr both
#setOptMode -fixCap true -fixTran true -fixFanoutLoad false











