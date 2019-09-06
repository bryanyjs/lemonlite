#**************************************************************
# This .sdc file is created by Xinadist Tool.
# Users are recommended to modify this file to match users logic.
#**************************************************************

#**************************************************************
# Create Clock
#**************************************************************

# This is the 50Mhz. reference clock (20ns period)
create_clock -name clk_in -period 20.000 [get_ports {CLK_IN}]

#**************************************************************
# Create Generated Clock
#**************************************************************
create_generated_clock -name flash_se_neg_reg -source [get_ports {CLK_IN}] -divide_by 2 [get_keepers {niosii_system:u0|altera_onchip_flash:onchip_flash_0|altera_onchip_flash_avmm_data_controller:avmm_data_controller|flash_se_neg_reg}]
derive_pll_clocks



#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************
derive_clock_uncertainty



#**************************************************************
# Set Input Delay
#**************************************************************



#**************************************************************
# Set Output Delay
#**************************************************************



#**************************************************************
# Set Clock Groups
#**************************************************************


#**************************************************************
# Set False Path
#**************************************************************
set_false_path -from [get_ports altera_reserved_tdi]
set_false_path -from [get_ports altera_reserved_tms]
set_false_path -from [get_ports KEYIN*]
set_false_path -from [get_ports nRST*]
set_false_path -from [get_ports SDR*]

set_false_path -to   [get_ports altera_reserved_tdo]
set_false_path -to   [get_ports CMOS*]
set_false_path -to   [get_ports VGA*]
set_false_path -to   [get_ports LEDOUT*]
set_false_path -to   [get_ports SDR*]

#**************************************************************
# Set Multicycle Path
#**************************************************************
                         

#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************



#**************************************************************
# Set Load
#**************************************************************
