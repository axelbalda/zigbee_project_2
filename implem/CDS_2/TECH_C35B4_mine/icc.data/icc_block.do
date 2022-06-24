
# This is the example file for C35B4

# Set up my preferred colours
#view object_colors (set_color signal 15 lgtblue)
#view object_colors (set_color vias lgtmgnta)
#repaint


# Define some bind-keys
#defkey (f) (zoom all)


# Define wide metal rules
rule layer MET1 (width_based_clear (width_thresh 10 (clear 0.8)))
rule layer MET2 (width_based_clear (width_thresh 10 (clear 0.8)))
rule layer MET3 (width_based_clear (width_thresh 10 (clear 0.8)))
rule layer MET4 (width_based_clear (width_thresh 10 (clear 0.8)))


# Define cut-outs for the wide-metal pins
cut_keepout 1.2


# Set routing directions for global routing and do global route
# groute 5


# Turn off same net checking to speed up router
set same_net_checking off


# Route all the other nets
unsel all routing
route 25  


# Set up same net checking to remove notch errors
set same_net_checking on


# Clean up the routing
clean 5
