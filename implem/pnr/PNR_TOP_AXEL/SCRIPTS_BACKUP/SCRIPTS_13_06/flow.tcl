#////////////////////////////////////////////////////
#DEROULEMENT DU FLOW DE CONCEPTION
#Modified : 20 May 2022
#////////////////////////////////////////////////////

#Init le design (netlist, lef, alims, etc..)
source ../SCRIPTS/init.tcl
init_design

saveDesign dbs/pnr_at_init

#Placement des pads + creation de la grille + connexion des pads d'alimentation a la grille
source ../SCRIPTS/design_config.tcl

saveDesign dbs/pnr_at_design_config

#Placement des standard cells
source ../SCRIPTS/placement.tcl

saveDesign dbs/pnr_at_placement

#Création du clock_tree
#source ../SCRIPTS/clock_tree_synthesis.tcl

#Ajout des fillers in core and pads
source ../SCRIPTS/add_fillers.tcl
saveDesign dbs/pnr_at_fillers


routeDesign

saveDesign dbs/pnr_before_opt_design

setOptMode -allEndPoints true
optDesign -postRoute

setOptMode -allEndPoints true
setAnalysisMode -analysisType onChipVariation
route_opt_design

pinAnalysis
#pinAlignment

#fixVia -short
