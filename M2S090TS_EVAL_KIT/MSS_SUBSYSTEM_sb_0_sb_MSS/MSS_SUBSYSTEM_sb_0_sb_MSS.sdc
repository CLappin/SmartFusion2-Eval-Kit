set_component MSS_SUBSYSTEM_sb_0_sb_MSS
# Microsemi Corp.
# Date: 2019-Sep-18 14:30:24
#

create_clock -period 80 [ get_pins { MSS_ADLIB_INST/CLK_CONFIG_APB } ]
set_false_path -ignore_errors -through [ get_pins { MSS_ADLIB_INST/CONFIG_PRESET_N } ]
