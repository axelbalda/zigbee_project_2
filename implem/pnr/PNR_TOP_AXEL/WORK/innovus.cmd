#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Wed Jun 15 11:00:47 2022                
#                                                     
#######################################################

#@(#)CDS: Innovus v17.11-s080_1 (64bit) 08/04/2017 11:13 (Linux 2.6.18-194.el5)
#@(#)CDS: NanoRoute 17.11-s080_1 NR170721-2155/17_11-UB (database version 2.30, 390.7.1) {superthreading v1.44}
#@(#)CDS: AAE 17.11-s034 (64bit) 08/04/2017 (Linux 2.6.18-194.el5)
#@(#)CDS: CTE 17.11-s053_1 () Aug  1 2017 23:31:41 ( )
#@(#)CDS: SYNTECH 17.11-s012_1 () Jul 21 2017 02:29:12 ( )
#@(#)CDS: CPE v17.11-s095
#@(#)CDS: IQRC/TQRC 16.1.1-s215 (64bit) Thu Jul  6 20:18:10 PDT 2017 (Linux 2.6.18-194.el5)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getDrawView
loadWorkspace -name Physical
win
encMessage warning 0
encMessage debug 0
encMessage info 0
restoreDesign /calcul/2AMT/zigbee_project_2/implem/pnr/PNR_TOP_AXEL/WORK/dbs/pnr_at_placement.dat top_io
setDrawView fplan
encMessage warning 1
encMessage debug 0
encMessage info 1
setDrawView place
pan 302.013 385.904
pan -280.583 -3.109
pan 6.743 7.621
pan -74.146 2.758
pan -94.494 -8.277
pan 134.155 4.138
pan 31.728 0.345
pan 221.258 0.000
pan 15.767 -893.412
pan -9.531 -22.451
pan -1480.895 715.857
pan -113.352 119.535
pan 5.255 -788.317
pan -266.713 465.535
pan -60.457 -119.697
setFillerMode -core {FILLANT1 FILLANT2 FILLANT5 FILLANT10 FILLANT20 FILLANT25} -preserveUserOrder true
addFiller -cell FILL25 FILL20 FILL10 FILL5 FILL2 FILL1 -prefix FILLER -fixDRC -fitGap
setFillerMode -core {FILLANT1 FILLANT2 FILLANT5 FILLANT10 FILLANT25} -preserveUserOrder true
addFiller -cell FILL25 FILL10 FILL5 FILL2 FILL1 -prefix FILLER -fitGap
print {---# TCL Script amsSetup.tcl loaded}
addIoFiller -cell PERI_SPACER_100_P -prefix pfill
addIoFiller -cell PERI_SPACER_50_P -prefix pfill
addIoFiller -cell PERI_SPACER_20_P -prefix pfill
addIoFiller -cell PERI_SPACER_10_P -prefix pfill
addIoFiller -cell PERI_SPACER_5_P -prefix pfill
addIoFiller -cell PERI_SPACER_2_P -prefix pfill
addIoFiller -cell PERI_SPACER_1_P -prefix pfill
addIoFiller -cell PERI_SPACER_01_P -prefix pfill
pan 251.072 -22.542
pan 88.862 -4.869
pan 53.072 -5.086
pan 0.000 2.173
pan 4.712 -4.328
pan 2.062 -0.297
pan -47.325 33.541
pan -165.277 117.765
pan -118.246 170.368
