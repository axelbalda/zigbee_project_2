#////////////////////////////////////////////////////
#DEROULEMENT DU FLOW DE CONCEPTION
#Modified : 20 May 2022
#////////////////////////////////////////////////////

#Init le design (netlist, lef, alims, etc..)
source ../SCRIPTS/init.tcl
init_design
#Placement des pads + creation de la grille + connexion des pads d'alimentation a la grille
source ../SCRIPTS/design_config.tcl

#Placement des standard cells
source ../SCRIPTS/placement.tcl

#Création du clock_tree
source ../SCRIPTS/clock_tree_synthesis.tcl

