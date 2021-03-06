#////////////////////////////////////////////////////
#DEROULEMENT DU FLOW DE CONCEPTION
#Modified : 20 May 2022
#////////////////////////////////////////////////////

#Init le design (netlist, lef, alims, etc..)
source ../SCRIPTS/init.tcl
init_design
saveDesign dbs/pnr_after_init

#Placement des pads + creation de la grille + connexion des pads d'alimentation a la grille
source ../SCRIPTS/design_config.tcl
#setAnalysisMode -analysisType onChipVariation
saveDesign dbs/pnr_after_design_config

#Placement des standard cells
source ../SCRIPTS/placement.tcl
saveDesign dbs/pnr_after_placement

#saveDesign dbs/prects_enc
#Création du clock_tree
source ../SCRIPTS/clock_tree_synthesis.tcl
saveDesign dbs/pnr_after_CTS

#Ajout des fillers in core and pads
source ../SCRIPTS/add_fillers.tcl
saveDesign dbs/pnr_after_filler

#Useful skew
setOptMode -usefulSkewPostRoute true

routeDesign

saveDesign dbs/pnr_after_routeDesign

optDesign -postRoute

#route_opt_design



pinAnalysis
#pinAlignment
fixVia -short

saveDesign dbs/route_enc

