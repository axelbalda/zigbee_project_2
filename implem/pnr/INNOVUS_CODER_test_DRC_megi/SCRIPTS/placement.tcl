#////////////////////////////////////////////////////
#SCRIPT DE PLACEMENT DES CELLULES
#Modified : 20 May 2022
#////////////////////////////////////////////////////

#Utilisation d'un noeud technologique supérieur ou égal à 130 nm
setDesignMode -process 250

#Placement des capa de découplage entre les rails d'alimentation vdd! gnd!
addEndCap -preCap ENDCAPL -postCap ENDCAPR -prefix ENDCAP

#Placement automatique des standard cells
setPlaceMode -fp false
placeDesign

#report_constraint -all_violator




