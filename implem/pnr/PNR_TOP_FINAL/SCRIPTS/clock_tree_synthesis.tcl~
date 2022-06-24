#////////////////////////////////////////////////////
#CREATION DE L'ARBRE D'HORLOGE
#Modified : 20 May 2022
#////////////////////////////////////////////////////

#Cette commande est obsolete mais fonctionne encore sur cette version pourrie d'Innovus alors on la laisse lol ;)
#Set les modes nécessaire à la création du clock_tree

#setup_func_mode hold_func_mode
#extract_clock_generator_skew_groups true
group_path -name path_CTS_FILTER -from t_op/u_decoder/fir_filter/Q_data_mult_8_buff_reg[0]/QN -to t_op/u_decoder/fir_filter/Q_data_add_7_buff_reg[13]/D 
group_path -name path_CTS_FILTER_2 -from t_op/u_decoder/fir_filter/Q_data_mult_8_buff_reg[0]/QN -to t_op/u_decoder/fir_filter/Q_data_add_7_buff_reg[13]/D
group_path -name path_CTS_CORDIC -from t_op/u_cordic/mycordic/present_ANGLE_table_reg[4][0]/QN -to t_op/u_cordic/mycordic/present_ANGLE_table_reg[5][15]/D

setCTSMode -engine ccopt
set_ccopt_property use_inverters auto
setCCOptMode -cts_opt_type full
#Useful skew extreme
setOptMode -usefulSkewCCOpt extreme
create_ccopt_clock_tree_spec -file ccopt.spec
source ccopt.spec

ccopt_design -cts

