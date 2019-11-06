#Libero tcl top design script
#M2S090_EVAL_KIT = SmartFusion2 Evaluation Kit
#
# Creating SmartDesign PROC_SUBSYSTEM
set sd_name {BaseDesign}
create_smartdesign -sd_name ${sd_name}

# Disable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 0

# Create top level Ports
sd_create_scalar_port -sd_name ${sd_name} -port_name {MDDR_DQS_TMATCH_0_OUT} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MDDR_CAS_N} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MDDR_CLK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MDDR_CLK_N} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MDDR_CKE} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MDDR_CS_N} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MDDR_ODT} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MDDR_RAS_N} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MDDR_RESET_N} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MDDR_WE_N} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MDDR_DQS_TMATCH_0_IN} -port_direction {IN}

sd_create_scalar_port -sd_name ${sd_name} -port_name {CLK0_PAD} -port_direction {IN}

sd_create_scalar_port -sd_name ${sd_name} -port_name {DEVRST_N} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {TDI} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {TCK} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {TMS} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {TRSTB} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {TDO} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RX} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {TX} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPISDI} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPISDO} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPISS} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPISCLKO} -port_direction {OUT}

sd_create_bus_port -sd_name ${sd_name} -port_name {MDDR_ADDR} -port_direction {OUT} -port_range {[15:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MDDR_BA} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MDDR_DM_RDQS} -port_direction {INOUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MDDR_DQ} -port_direction {INOUT} -port_range {[15:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MDDR_DQS} -port_direction {INOUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {GPIO_IN} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {GPIO_OUT} -port_direction {OUT} -port_range {[7:0]}

# Add CoreAHBLite_0 instance
sd_instantiate_core -sd_name ${sd_name} -core_vlnv {Actel:DirectCore:CoreAHBLite:5.4.102} -instance_name {CoreAHBLite_0}
# Exporting Parameters of instance CoreAHBLite_0
sd_configure_core_instance -sd_name ${sd_name} -instance_name {CoreAHBLite_0} -params {\
"FAMILY:19" \
"HADDR_SHG_CFG:1" \
"M0_AHBSLOT0ENABLE:false" \
"M0_AHBSLOT1ENABLE:false" \
"M0_AHBSLOT2ENABLE:false" \
"M0_AHBSLOT3ENABLE:false" \
"M0_AHBSLOT4ENABLE:false" \
"M0_AHBSLOT5ENABLE:false" \
"M0_AHBSLOT6ENABLE:true" \
"M0_AHBSLOT7ENABLE:true" \
"M0_AHBSLOT8ENABLE:false" \
"M0_AHBSLOT9ENABLE:false" \
"M0_AHBSLOT10ENABLE:false" \
"M0_AHBSLOT11ENABLE:false" \
"M0_AHBSLOT12ENABLE:false" \
"M0_AHBSLOT13ENABLE:false" \
"M0_AHBSLOT14ENABLE:false" \
"M0_AHBSLOT15ENABLE:false" \
"M0_AHBSLOT16ENABLE:false" \
"M1_AHBSLOT0ENABLE:false" \
"M1_AHBSLOT1ENABLE:false" \
"M1_AHBSLOT2ENABLE:false" \
"M1_AHBSLOT3ENABLE:false" \
"M1_AHBSLOT4ENABLE:false" \
"M1_AHBSLOT5ENABLE:false" \
"M1_AHBSLOT6ENABLE:false" \
"M1_AHBSLOT7ENABLE:false" \
"M1_AHBSLOT8ENABLE:false" \
"M1_AHBSLOT9ENABLE:false" \
"M1_AHBSLOT10ENABLE:false" \
"M1_AHBSLOT11ENABLE:false" \
"M1_AHBSLOT12ENABLE:false" \
"M1_AHBSLOT13ENABLE:false" \
"M1_AHBSLOT14ENABLE:false" \
"M1_AHBSLOT15ENABLE:false" \
"M1_AHBSLOT16ENABLE:false" \
"M2_AHBSLOT0ENABLE:false" \
"M2_AHBSLOT1ENABLE:false" \
"M2_AHBSLOT2ENABLE:false" \
"M2_AHBSLOT3ENABLE:false" \
"M2_AHBSLOT4ENABLE:false" \
"M2_AHBSLOT5ENABLE:false" \
"M2_AHBSLOT6ENABLE:false" \
"M2_AHBSLOT7ENABLE:false" \
"M2_AHBSLOT8ENABLE:false" \
"M2_AHBSLOT9ENABLE:false" \
"M2_AHBSLOT10ENABLE:false" \
"M2_AHBSLOT11ENABLE:false" \
"M2_AHBSLOT12ENABLE:false" \
"M2_AHBSLOT13ENABLE:false" \
"M2_AHBSLOT14ENABLE:false" \
"M2_AHBSLOT15ENABLE:false" \
"M2_AHBSLOT16ENABLE:false" \
"M3_AHBSLOT0ENABLE:false" \
"M3_AHBSLOT1ENABLE:false" \
"M3_AHBSLOT2ENABLE:false" \
"M3_AHBSLOT3ENABLE:false" \
"M3_AHBSLOT4ENABLE:false" \
"M3_AHBSLOT5ENABLE:false" \
"M3_AHBSLOT6ENABLE:false" \
"M3_AHBSLOT7ENABLE:false" \
"M3_AHBSLOT8ENABLE:false" \
"M3_AHBSLOT9ENABLE:false" \
"M3_AHBSLOT10ENABLE:false" \
"M3_AHBSLOT11ENABLE:false" \
"M3_AHBSLOT12ENABLE:false" \
"M3_AHBSLOT13ENABLE:false" \
"M3_AHBSLOT14ENABLE:false" \
"M3_AHBSLOT15ENABLE:false" \
"M3_AHBSLOT16ENABLE:false" \
"MASTER0_INTERFACE:1"	\
"MASTER1_INTERFACE:1"	\
"MASTER2_INTERFACE:1"	\
"MASTER3_INTERFACE:1"	\
"MEMSPACE:1" \
"SC_0:false" \
"SC_1:false" \
"SC_2:false" \
"SC_3:false" \
"SC_4:false" \
"SC_5:false" \
"SC_6:false" \
"SC_7:false" \
"SC_8:false" \
"SC_9:false" \
"SC_10:false" \
"SC_11:false" \
"SC_12:false" \
"SC_13:false" \
"SC_14:false" \
"SC_15:false" \
"SLAVE0_INTERFACE:1"	\
"SLAVE1_INTERFACE:1"	\
"SLAVE2_INTERFACE:1"	\
"SLAVE3_INTERFACE:1"	\
"SLAVE4_INTERFACE:1"	\
"SLAVE5_INTERFACE:1"	\
"SLAVE6_INTERFACE:1"	\
"SLAVE7_INTERFACE:1"	\
"SLAVE8_INTERFACE:1"	\
"SLAVE9_INTERFACE:1"	\
"SLAVE10_INTERFACE:1"	\
"SLAVE11_INTERFACE:1"	\
"SLAVE12_INTERFACE:1"	\
"SLAVE13_INTERFACE:1"	\
"SLAVE14_INTERFACE:1"	\
"SLAVE15_INTERFACE:1"	\
"SLAVE16_INTERFACE:1"} 
#"testbench:User" }\
-validate_rules 0
sd_save_core_instance_config -sd_name ${sd_name} -instance_name {CoreAHBLite_0}


# Add CoreAHBLite_1 instance
sd_instantiate_core -sd_name ${sd_name} -core_vlnv {Actel:DirectCore:CoreAHBLite:5.4.102} -instance_name {CoreAHBLite_1}
# Exporting Parameters of instance CoreAHBLite_0
sd_configure_core_instance -sd_name ${sd_name} -instance_name {CoreAHBLite_1} -params {\
"FAMILY:19" \
"HADDR_SHG_CFG:1" \
"M0_AHBSLOT0ENABLE:false" \
"M0_AHBSLOT1ENABLE:false" \
"M0_AHBSLOT2ENABLE:false" \
"M0_AHBSLOT3ENABLE:false" \
"M0_AHBSLOT4ENABLE:false" \
"M0_AHBSLOT5ENABLE:false" \
"M0_AHBSLOT6ENABLE:false" \
"M0_AHBSLOT7ENABLE:false" \
"M0_AHBSLOT8ENABLE:false" \
"M0_AHBSLOT9ENABLE:false" \
"M0_AHBSLOT10ENABLE:false" \
"M0_AHBSLOT11ENABLE:false" \
"M0_AHBSLOT12ENABLE:false" \
"M0_AHBSLOT13ENABLE:false" \
"M0_AHBSLOT14ENABLE:false" \
"M0_AHBSLOT15ENABLE:false" \
"M0_AHBSLOT16ENABLE:true" \
"M1_AHBSLOT0ENABLE:false" \
"M1_AHBSLOT1ENABLE:false" \
"M1_AHBSLOT2ENABLE:false" \
"M1_AHBSLOT3ENABLE:false" \
"M1_AHBSLOT4ENABLE:false" \
"M1_AHBSLOT5ENABLE:false" \
"M1_AHBSLOT6ENABLE:false" \
"M1_AHBSLOT7ENABLE:false" \
"M1_AHBSLOT8ENABLE:false" \
"M1_AHBSLOT9ENABLE:false" \
"M1_AHBSLOT10ENABLE:false" \
"M1_AHBSLOT11ENABLE:false" \
"M1_AHBSLOT12ENABLE:false" \
"M1_AHBSLOT13ENABLE:false" \
"M1_AHBSLOT14ENABLE:false" \
"M1_AHBSLOT15ENABLE:false" \
"M1_AHBSLOT16ENABLE:false" \
"M2_AHBSLOT0ENABLE:false" \
"M2_AHBSLOT1ENABLE:false" \
"M2_AHBSLOT2ENABLE:false" \
"M2_AHBSLOT3ENABLE:false" \
"M2_AHBSLOT4ENABLE:false" \
"M2_AHBSLOT5ENABLE:false" \
"M2_AHBSLOT6ENABLE:false" \
"M2_AHBSLOT7ENABLE:false" \
"M2_AHBSLOT8ENABLE:false" \
"M2_AHBSLOT9ENABLE:false" \
"M2_AHBSLOT10ENABLE:false" \
"M2_AHBSLOT11ENABLE:false" \
"M2_AHBSLOT12ENABLE:false" \
"M2_AHBSLOT13ENABLE:false" \
"M2_AHBSLOT14ENABLE:false" \
"M2_AHBSLOT15ENABLE:false" \
"M2_AHBSLOT16ENABLE:false" \
"M3_AHBSLOT0ENABLE:false" \
"M3_AHBSLOT1ENABLE:false" \
"M3_AHBSLOT2ENABLE:false" \
"M3_AHBSLOT3ENABLE:false" \
"M3_AHBSLOT4ENABLE:false" \
"M3_AHBSLOT5ENABLE:false" \
"M3_AHBSLOT6ENABLE:false" \
"M3_AHBSLOT7ENABLE:false" \
"M3_AHBSLOT8ENABLE:false" \
"M3_AHBSLOT9ENABLE:false" \
"M3_AHBSLOT10ENABLE:false" \
"M3_AHBSLOT11ENABLE:false" \
"M3_AHBSLOT12ENABLE:false" \
"M3_AHBSLOT13ENABLE:false" \
"M3_AHBSLOT14ENABLE:false" \
"M3_AHBSLOT15ENABLE:false" \
"M3_AHBSLOT16ENABLE:false" \
"MASTER0_INTERFACE:1"	\
"MASTER1_INTERFACE:1"	\
"MASTER2_INTERFACE:1"	\
"MASTER3_INTERFACE:1"	\
"MEMSPACE:0" \
"SC_0:false" \
"SC_1:false" \
"SC_2:false" \
"SC_3:false" \
"SC_4:false" \
"SC_5:false" \
"SC_6:false" \
"SC_7:false" \
"SC_8:false" \
"SC_9:false" \
"SC_10:false" \
"SC_11:false" \
"SC_12:false" \
"SC_13:false" \
"SC_14:false" \
"SC_15:false" \
"SLAVE0_INTERFACE:1"	\
"SLAVE1_INTERFACE:1"	\
"SLAVE2_INTERFACE:1"	\
"SLAVE3_INTERFACE:1"	\
"SLAVE4_INTERFACE:1"	\
"SLAVE5_INTERFACE:1"	\
"SLAVE6_INTERFACE:1"	\
"SLAVE7_INTERFACE:1"	\
"SLAVE8_INTERFACE:1"	\
"SLAVE9_INTERFACE:1"	\
"SLAVE10_INTERFACE:1"	\
"SLAVE11_INTERFACE:1"	\
"SLAVE12_INTERFACE:1"	\
"SLAVE13_INTERFACE:1"	\
"SLAVE14_INTERFACE:1"	\
"SLAVE15_INTERFACE:1"	\
"SLAVE16_INTERFACE:1"} 
#"testbench:User" }\
-validate_rules 0
sd_save_core_instance_config -sd_name ${sd_name} -instance_name {CoreAHBLite_1}



# Add COREAHBTOAPB3_0 instance
sd_instantiate_core -sd_name ${sd_name} -core_vlnv {Actel:DirectCore:COREAHBTOAPB3:3.1.100} -instance_name {COREAHBTOAPB3_0}
# Exporting Parameters of instance COREAHBTOAPB3_0
sd_configure_core_instance -sd_name ${sd_name} -instance_name {COREAHBTOAPB3_0} -params {\
"FAMILY:19" \
"HDL_license:U" \
"testbench:User" }\
-validate_rules 0
sd_save_core_instance_config -sd_name ${sd_name} -instance_name {COREAHBTOAPB3_0}



# Add CoreAPB3_0 instance
sd_instantiate_core -sd_name ${sd_name} -core_vlnv {Actel:DirectCore:CoreAPB3:4.1.100} -instance_name {CoreAPB3_0}
# Exporting Parameters of instance CoreAPB3_0
sd_configure_core_instance -sd_name ${sd_name} -instance_name {CoreAPB3_0} -params {\
"APB_DWIDTH:32" \
"APBSLOT0ENABLE:false" \
"APBSLOT1ENABLE:true" \
"APBSLOT2ENABLE:true" \
"APBSLOT3ENABLE:true" \
"APBSLOT4ENABLE:true" \
"APBSLOT5ENABLE:true" \
"APBSLOT6ENABLE:true" \
"APBSLOT7ENABLE:false" \
"APBSLOT8ENABLE:false" \
"APBSLOT9ENABLE:false" \
"APBSLOT10ENABLE:false" \
"APBSLOT11ENABLE:false" \
"APBSLOT12ENABLE:false" \
"APBSLOT13ENABLE:false" \
"APBSLOT14ENABLE:false" \
"APBSLOT15ENABLE:false" \
"FAMILY:19" \
"HDL_license:U" \
"IADDR_OPTION:0" \
"MADDR_BITS:16" \
"SC_0:false" \
"SC_1:false" \
"SC_2:false" \
"SC_3:false" \
"SC_4:false" \
"SC_5:false" \
"SC_6:false" \
"SC_7:false" \
"SC_8:false" \
"SC_9:false" \
"SC_10:false" \
"SC_11:false" \
"SC_12:false" \
"SC_13:false" \
"SC_14:false" \
"SC_15:false" \
"testbench:User" \
"UPR_NIBBLE_POSN:6" }\
-validate_rules 0
sd_save_core_instance_config -sd_name ${sd_name} -instance_name {CoreAPB3_0}



# Add CoreGPIO_IN instance
sd_instantiate_core -sd_name ${sd_name} -core_vlnv {Actel:DirectCore:CoreGPIO:3.2.102} -instance_name {CoreGPIO_IN}
# Exporting Parameters of instance CoreGPIO_IN
sd_configure_core_instance -sd_name ${sd_name} -instance_name {CoreGPIO_IN} -params {\
"APB_WIDTH:32" \
"FIXED_CONFIG_0:true" \
"FIXED_CONFIG_1:true" \
"FIXED_CONFIG_2:true" \
"FIXED_CONFIG_3:true" \
"FIXED_CONFIG_4:true" \
"FIXED_CONFIG_5:true" \
"FIXED_CONFIG_6:true" \
"FIXED_CONFIG_7:true" \
"FIXED_CONFIG_8:true" \
"FIXED_CONFIG_9:true" \
"FIXED_CONFIG_10:true" \
"FIXED_CONFIG_11:true" \
"FIXED_CONFIG_12:true" \
"FIXED_CONFIG_13:true" \
"FIXED_CONFIG_14:true" \
"FIXED_CONFIG_15:true" \
"FIXED_CONFIG_16:true" \
"FIXED_CONFIG_17:true" \
"FIXED_CONFIG_18:true" \
"FIXED_CONFIG_19:true" \
"FIXED_CONFIG_20:true" \
"FIXED_CONFIG_21:true" \
"FIXED_CONFIG_22:true" \
"FIXED_CONFIG_23:true" \
"FIXED_CONFIG_24:true" \
"FIXED_CONFIG_25:true" \
"FIXED_CONFIG_26:true" \
"FIXED_CONFIG_27:true" \
"FIXED_CONFIG_28:true" \
"FIXED_CONFIG_29:true" \
"FIXED_CONFIG_30:true" \
"FIXED_CONFIG_31:true" \
"INT_BUS:0" \
"IO_INT_TYPE_0:7" \
"IO_INT_TYPE_1:7" \
"IO_INT_TYPE_2:7" \
"IO_INT_TYPE_3:7" \
"IO_INT_TYPE_4:7" \
"IO_INT_TYPE_5:7" \
"IO_INT_TYPE_6:7" \
"IO_INT_TYPE_7:7" \
"IO_INT_TYPE_8:7" \
"IO_INT_TYPE_9:7" \
"IO_INT_TYPE_10:7" \
"IO_INT_TYPE_11:7" \
"IO_INT_TYPE_12:7" \
"IO_INT_TYPE_13:7" \
"IO_INT_TYPE_14:7" \
"IO_INT_TYPE_15:7" \
"IO_INT_TYPE_16:7" \
"IO_INT_TYPE_17:7" \
"IO_INT_TYPE_18:7" \
"IO_INT_TYPE_19:7" \
"IO_INT_TYPE_20:7" \
"IO_INT_TYPE_21:7" \
"IO_INT_TYPE_22:7" \
"IO_INT_TYPE_23:7" \
"IO_INT_TYPE_24:7" \
"IO_INT_TYPE_25:7" \
"IO_INT_TYPE_26:7" \
"IO_INT_TYPE_27:7" \
"IO_INT_TYPE_28:7" \
"IO_INT_TYPE_29:7" \
"IO_INT_TYPE_30:7" \
"IO_INT_TYPE_31:7" \
"IO_NUM:32" \
"IO_TYPE_0:0" \
"IO_TYPE_1:0" \
"IO_TYPE_2:0" \
"IO_TYPE_3:0" \
"IO_TYPE_4:0" \
"IO_TYPE_5:0" \
"IO_TYPE_6:0" \
"IO_TYPE_7:0" \
"IO_TYPE_8:0" \
"IO_TYPE_9:0" \
"IO_TYPE_10:0" \
"IO_TYPE_11:0" \
"IO_TYPE_12:0" \
"IO_TYPE_13:0" \
"IO_TYPE_14:0" \
"IO_TYPE_15:0" \
"IO_TYPE_16:0" \
"IO_TYPE_17:0" \
"IO_TYPE_18:0" \
"IO_TYPE_19:0" \
"IO_TYPE_20:0" \
"IO_TYPE_21:0" \
"IO_TYPE_22:0" \
"IO_TYPE_23:0" \
"IO_TYPE_24:0" \
"IO_TYPE_25:0" \
"IO_TYPE_26:0" \
"IO_TYPE_27:0" \
"IO_TYPE_28:0" \
"IO_TYPE_29:0" \
"IO_TYPE_30:0" \
"IO_TYPE_31:0" \
"IO_VAL_0:0" \
"IO_VAL_1:0" \
"IO_VAL_2:0" \
"IO_VAL_3:0" \
"IO_VAL_4:0" \
"IO_VAL_5:0" \
"IO_VAL_6:0" \
"IO_VAL_7:0" \
"IO_VAL_8:0" \
"IO_VAL_9:0" \
"IO_VAL_10:0" \
"IO_VAL_11:0" \
"IO_VAL_12:0" \
"IO_VAL_13:0" \
"IO_VAL_14:0" \
"IO_VAL_15:0" \
"IO_VAL_16:0" \
"IO_VAL_17:0" \
"IO_VAL_18:0" \
"IO_VAL_19:0" \
"IO_VAL_20:0" \
"IO_VAL_21:0" \
"IO_VAL_22:0" \
"IO_VAL_23:0" \
"IO_VAL_24:0" \
"IO_VAL_25:0" \
"IO_VAL_26:0" \
"IO_VAL_27:0" \
"IO_VAL_28:0" \
"IO_VAL_29:0" \
"IO_VAL_30:0" \
"IO_VAL_31:0" \
"OE_TYPE:1" \
"testbench:User" }\
-validate_rules 0
sd_save_core_instance_config -sd_name ${sd_name} -instance_name {CoreGPIO_IN}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_IN:GPIO_IN} -pin_slices {[15:8]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CoreGPIO_IN:GPIO_IN[15:8]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_IN:GPIO_IN} -pin_slices {[23:16]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CoreGPIO_IN:GPIO_IN[23:16]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_IN:GPIO_IN} -pin_slices {[31:24]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CoreGPIO_IN:GPIO_IN[31:24]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_IN:GPIO_IN} -pin_slices {[7:0]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CoreGPIO_IN:INT}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CoreGPIO_IN:GPIO_OUT}



# Add CoreGPIO_OUT instance
sd_instantiate_core -sd_name ${sd_name} -core_vlnv {Actel:DirectCore:CoreGPIO:3.2.102} -instance_name {CoreGPIO_OUT}
# Exporting Parameters of instance CoreGPIO_OUT
sd_configure_core_instance -sd_name ${sd_name} -instance_name {CoreGPIO_OUT} -params {\
"APB_WIDTH:32" \
"FIXED_CONFIG_0:true" \
"FIXED_CONFIG_1:true" \
"FIXED_CONFIG_2:true" \
"FIXED_CONFIG_3:true" \
"FIXED_CONFIG_4:true" \
"FIXED_CONFIG_5:true" \
"FIXED_CONFIG_6:true" \
"FIXED_CONFIG_7:true" \
"FIXED_CONFIG_8:true" \
"FIXED_CONFIG_9:true" \
"FIXED_CONFIG_10:true" \
"FIXED_CONFIG_11:true" \
"FIXED_CONFIG_12:true" \
"FIXED_CONFIG_13:true" \
"FIXED_CONFIG_14:true" \
"FIXED_CONFIG_15:true" \
"FIXED_CONFIG_16:true" \
"FIXED_CONFIG_17:true" \
"FIXED_CONFIG_18:true" \
"FIXED_CONFIG_19:true" \
"FIXED_CONFIG_20:true" \
"FIXED_CONFIG_21:true" \
"FIXED_CONFIG_22:true" \
"FIXED_CONFIG_23:true" \
"FIXED_CONFIG_24:true" \
"FIXED_CONFIG_25:true" \
"FIXED_CONFIG_26:true" \
"FIXED_CONFIG_27:true" \
"FIXED_CONFIG_28:true" \
"FIXED_CONFIG_29:true" \
"FIXED_CONFIG_30:true" \
"FIXED_CONFIG_31:true" \
"INT_BUS:0" \
"IO_INT_TYPE_0:7" \
"IO_INT_TYPE_1:7" \
"IO_INT_TYPE_2:7" \
"IO_INT_TYPE_3:7" \
"IO_INT_TYPE_4:7" \
"IO_INT_TYPE_5:7" \
"IO_INT_TYPE_6:7" \
"IO_INT_TYPE_7:7" \
"IO_INT_TYPE_8:7" \
"IO_INT_TYPE_9:7" \
"IO_INT_TYPE_10:7" \
"IO_INT_TYPE_11:7" \
"IO_INT_TYPE_12:7" \
"IO_INT_TYPE_13:7" \
"IO_INT_TYPE_14:7" \
"IO_INT_TYPE_15:7" \
"IO_INT_TYPE_16:7" \
"IO_INT_TYPE_17:7" \
"IO_INT_TYPE_18:7" \
"IO_INT_TYPE_19:7" \
"IO_INT_TYPE_20:7" \
"IO_INT_TYPE_21:7" \
"IO_INT_TYPE_22:7" \
"IO_INT_TYPE_23:7" \
"IO_INT_TYPE_24:7" \
"IO_INT_TYPE_25:7" \
"IO_INT_TYPE_26:7" \
"IO_INT_TYPE_27:7" \
"IO_INT_TYPE_28:7" \
"IO_INT_TYPE_29:7" \
"IO_INT_TYPE_30:7" \
"IO_INT_TYPE_31:7" \
"IO_NUM:32" \
"IO_TYPE_0:1" \
"IO_TYPE_1:1" \
"IO_TYPE_2:1" \
"IO_TYPE_3:1" \
"IO_TYPE_4:1" \
"IO_TYPE_5:1" \
"IO_TYPE_6:1" \
"IO_TYPE_7:1" \
"IO_TYPE_8:1" \
"IO_TYPE_9:1" \
"IO_TYPE_10:1" \
"IO_TYPE_11:1" \
"IO_TYPE_12:1" \
"IO_TYPE_13:1" \
"IO_TYPE_14:1" \
"IO_TYPE_15:1" \
"IO_TYPE_16:1" \
"IO_TYPE_17:1" \
"IO_TYPE_18:1" \
"IO_TYPE_19:1" \
"IO_TYPE_20:1" \
"IO_TYPE_21:1" \
"IO_TYPE_22:1" \
"IO_TYPE_23:1" \
"IO_TYPE_24:1" \
"IO_TYPE_25:1" \
"IO_TYPE_26:1" \
"IO_TYPE_27:1" \
"IO_TYPE_28:1" \
"IO_TYPE_29:1" \
"IO_TYPE_30:1" \
"IO_TYPE_31:1" \
"IO_VAL_0:0" \
"IO_VAL_1:0" \
"IO_VAL_2:0" \
"IO_VAL_3:0" \
"IO_VAL_4:0" \
"IO_VAL_5:0" \
"IO_VAL_6:0" \
"IO_VAL_7:0" \
"IO_VAL_8:0" \
"IO_VAL_9:0" \
"IO_VAL_10:0" \
"IO_VAL_11:0" \
"IO_VAL_12:0" \
"IO_VAL_13:0" \
"IO_VAL_14:0" \
"IO_VAL_15:0" \
"IO_VAL_16:0" \
"IO_VAL_17:0" \
"IO_VAL_18:0" \
"IO_VAL_19:0" \
"IO_VAL_20:0" \
"IO_VAL_21:0" \
"IO_VAL_22:0" \
"IO_VAL_23:0" \
"IO_VAL_24:0" \
"IO_VAL_25:0" \
"IO_VAL_26:0" \
"IO_VAL_27:0" \
"IO_VAL_28:0" \
"IO_VAL_29:0" \
"IO_VAL_30:0" \
"IO_VAL_31:0" \
"OE_TYPE:1" \
"testbench:User" }\
-validate_rules 0
sd_save_core_instance_config -sd_name ${sd_name} -instance_name {CoreGPIO_OUT}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_OUT:GPIO_OUT} -pin_slices {[15:8]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CoreGPIO_OUT:GPIO_OUT[15:8]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_OUT:GPIO_OUT} -pin_slices {[23:16]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CoreGPIO_OUT:GPIO_OUT[23:16]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_OUT:GPIO_OUT} -pin_slices {[31:24]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CoreGPIO_OUT:GPIO_OUT[31:24]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_OUT:GPIO_OUT} -pin_slices {[7:0]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CoreGPIO_OUT:INT}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CoreGPIO_OUT:GPIO_IN} -value {GND}



# Add COREJTAGDEBUG_0 instance
sd_instantiate_core -sd_name ${sd_name} -core_vlnv {Actel:DirectCore:COREJTAGDEBUG:3.1.100} -instance_name {COREJTAGDEBUG_0}
# Exporting Parameters of instance COREJTAGDEBUG_0
sd_configure_core_instance -sd_name ${sd_name} -instance_name {COREJTAGDEBUG_0} -params {\
"FAMILY:19" \
"IR_CODE_TGT_0:0x55" \
"IR_CODE_TGT_1:0x56" \
"IR_CODE_TGT_2:0x57" \
"IR_CODE_TGT_3:0x58" \
"IR_CODE_TGT_4:0x59" \
"IR_CODE_TGT_5:0x5a" \
"IR_CODE_TGT_6:0x5b" \
"IR_CODE_TGT_7:0x5c" \
"IR_CODE_TGT_8:0x5d" \
"IR_CODE_TGT_9:0x5e" \
"IR_CODE_TGT_10:0x5f" \
"IR_CODE_TGT_11:0x60" \
"IR_CODE_TGT_12:0x61" \
"IR_CODE_TGT_13:0x62" \
"IR_CODE_TGT_14:0x63" \
"IR_CODE_TGT_15:0x64" \
"NUM_DEBUG_TGTS:1" \
"Testbench:User" \
"TGT_ACTIVE_HIGH_RESET_0:true" \
"TGT_ACTIVE_HIGH_RESET_1:true" \
"TGT_ACTIVE_HIGH_RESET_2:true" \
"TGT_ACTIVE_HIGH_RESET_3:true" \
"TGT_ACTIVE_HIGH_RESET_4:true" \
"TGT_ACTIVE_HIGH_RESET_5:true" \
"TGT_ACTIVE_HIGH_RESET_6:true" \
"TGT_ACTIVE_HIGH_RESET_7:true" \
"TGT_ACTIVE_HIGH_RESET_8:true" \
"TGT_ACTIVE_HIGH_RESET_9:true" \
"TGT_ACTIVE_HIGH_RESET_10:true" \
"TGT_ACTIVE_HIGH_RESET_11:true" \
"TGT_ACTIVE_HIGH_RESET_12:true" \
"TGT_ACTIVE_HIGH_RESET_13:true" \
"TGT_ACTIVE_HIGH_RESET_14:true" \
"TGT_ACTIVE_HIGH_RESET_15:true" \
"UJTAG_BYPASS:false" }\
-validate_rules 0
sd_save_core_instance_config -sd_name ${sd_name} -instance_name {COREJTAGDEBUG_0}

# Add CORESPI_0 instance
sd_instantiate_core -sd_name ${sd_name} -core_vlnv {Actel:DirectCore:CORESPI:5.2.104} -instance_name {CORESPI_0}
# Exporting Parameters of instance CORESPI_0
sd_configure_core_instance -sd_name ${sd_name} -instance_name {CORESPI_0} -params {\
"APB_DWIDTH:8" \
"CFG_CLK:7" \
"CFG_FIFO_DEPTH:4" \
"CFG_FRAME_SIZE:4" \
"CFG_MODE:0" \
"CFG_MOT_MODE:0" \
"CFG_MOT_SSEL:false" \
"CFG_NSC_OPERATION:0" \
"CFG_TI_JMB_FRAMES:false" \
"CFG_TI_NSC_CUSTOM:0" \
"CFG_TI_NSC_FRC:false" \
"HDL_license:U" \
"testbench:User" }\
-validate_rules 0
sd_save_core_instance_config -sd_name ${sd_name} -instance_name {CORESPI_0}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CORESPI_0:SPISS} -pin_slices {[0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CORESPI_0:SPISS} -pin_slices {[1]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CORESPI_0:SPISS[1]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CORESPI_0:SPISS} -pin_slices {[2]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CORESPI_0:SPISS[2]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CORESPI_0:SPISS} -pin_slices {[3]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CORESPI_0:SPISS[3]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CORESPI_0:SPISS} -pin_slices {[4]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CORESPI_0:SPISS[4]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CORESPI_0:SPISS} -pin_slices {[5]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CORESPI_0:SPISS[5]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CORESPI_0:SPISS} -pin_slices {[6]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CORESPI_0:SPISS[6]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CORESPI_0:SPISS} -pin_slices {[7]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CORESPI_0:SPISS[7]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CORESPI_0:SPIINT}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CORESPI_0:SPIRXAVAIL}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CORESPI_0:SPITXRFM}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORESPI_0:SPISSI} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORESPI_0:SPICLKI} -value {GND}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CORESPI_0:SPIOEN}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CORESPI_0:SPIMODE}



# Add CoreTimer_0 instance
sd_instantiate_core -sd_name ${sd_name} -core_vlnv {Actel:DirectCore:CoreTimer:2.0.103} -instance_name {CoreTimer_0}
# Exporting Parameters of instance CoreTimer_0
sd_configure_core_instance -sd_name ${sd_name} -instance_name {CoreTimer_0} -params {\
"FAMILY:19" \
"INTACTIVEH:1" \
"WIDTH:32" }\
-validate_rules 0
sd_save_core_instance_config -sd_name ${sd_name} -instance_name {CoreTimer_0}



# Add CoreTimer_1 instance
sd_instantiate_core -sd_name ${sd_name} -core_vlnv {Actel:DirectCore:CoreTimer:2.0.103} -instance_name {CoreTimer_1}
# Exporting Parameters of instance CoreTimer_1
sd_configure_core_instance -sd_name ${sd_name} -instance_name {CoreTimer_1} -params {\
"FAMILY:19" \
"INTACTIVEH:1" \
"WIDTH:32" }\
-validate_rules 0
sd_save_core_instance_config -sd_name ${sd_name} -instance_name {CoreTimer_1}



# Add CoreUARTapb_0 instance
sd_instantiate_core -sd_name ${sd_name} -core_vlnv {Actel:DirectCore:CoreUARTapb:5.6.102} -instance_name {CoreUARTapb_0}
# Exporting Parameters of instance CoreUARTapb_0
sd_configure_core_instance -sd_name ${sd_name} -instance_name {CoreUARTapb_0} -params {\
"BAUD_VAL_FRCTN:0" \
"BAUD_VAL_FRCTN_EN:false" \
"BAUD_VALUE:1" \
"FAMILY:19" \
"FIXEDMODE:0" \
"HDL_license:U" \
"PRG_BIT8:0" \
"PRG_PARITY:0" \
"RX_FIFO:0" \
"RX_LEGACY_MODE:0" \
"testbench:User" \
"TX_FIFO:0" \
"USE_SOFT_FIFO:0" }\
-validate_rules 0
sd_save_core_instance_config -sd_name ${sd_name} -instance_name {CoreUARTapb_0}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CoreUARTapb_0:TXRDY}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CoreUARTapb_0:RXRDY}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CoreUARTapb_0:PARITY_ERR}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CoreUARTapb_0:OVERFLOW}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CoreUARTapb_0:FRAMING_ERR}


# CoreAXITOAHB_0
# ###############
create_and_configure_core -core_vlnv {Actel:DirectCore:COREAXITOAHBL:3.4.100} -component_name {COREAXITOAHBL_0} -params {\
"ASYNC_CLOCKS:false" \
"AXI_SEL_MM_S:0" \
"EXPOSE_WID:false" \
"ID_WIDTH:5" \
"NO_BURST_TRANS:false" \
"WRAP_SUPPORT:false"} 
sd_instantiate_component -sd_name ${sd_name} -component_name {COREAXITOAHBL_0} -instance_name {COREAXITOAHBL_0} 
# ###################

# CoreAXITOAHBL_1
# ###################
create_and_configure_core -core_vlnv {Actel:DirectCore:COREAXITOAHBL:3.4.100} -component_name {COREAXITOAHBL_1} -params {\
"ASYNC_CLOCKS:false" \
"AXI_SEL_MM_S:0" \
"EXPOSE_WID:false" \
"ID_WIDTH:5" \
"NO_BURST_TRANS:false" \
"WRAP_SUPPORT:false"} 
sd_instantiate_component -sd_name ${sd_name} -component_name {COREAXITOAHBL_1} -instance_name {COREAXITOAHBL_1} 
# ##################

# AXI_GLUE_LOGIC
# ##################
create_and_configure_core -core_vlnv {User:GlueLogic:AXI_GLUE_LOGIC:1.0.7} -component_name {AXI_GLUE_LOGIC_0} -params {} 
sd_instantiate_component -sd_name ${sd_name} -component_name {AXI_GLUE_LOGIC_0} -instance_name {AXI_GLUE_LOGIC_0} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {AXI_GLUE_LOGIC_0:AXI_MIRROR_MST_MEM_WID} -pin_slices {"[3:0]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {AXI_GLUE_LOGIC_0:AXI_MIRROR_MST_MEM_WID} -pin_slices {"[4:4]"} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {AXI_GLUE_LOGIC_0:AXI_MIRROR_MST_MEM_WID[4]} -value {GND} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {AXI_GLUE_LOGIC_0:AXI_MIRROR_MST_MMIO_WID} -pin_slices {"[3:0]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {AXI_GLUE_LOGIC_0:AXI_MIRROR_MST_MMIO_WID} -pin_slices {"[4:4]"} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {AXI_GLUE_LOGIC_0:AXI_MIRROR_MST_MMIO_WID[4]} -value {GND} 
# ##################

# Add MiV_RV32IMA_AXI_0 instance
# ############################
create_and_configure_core -core_vlnv {Microsemi:MiV:MIV_RV32IMA_L1_AXI:2.1.100} -component_name {MIV_RV32IMA_L1_AXI_0} -params {\
"MASTER_TYPE:1" \
"MEM_WID:5" \
"MMIO_WID:5" \
"RESET_VECTOR_ADDR_0:0x0" \
"RESET_VECTOR_ADDR_1:0x6000"} 
sd_instantiate_component -sd_name ${sd_name} -component_name {MIV_RV32IMA_L1_AXI_0} -instance_name {MIV_RV32IMA_L1_AXI_0} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MIV_RV32IMA_L1_AXI_0:IRQ} -pin_slices {[28:0]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {MIV_RV32IMA_L1_AXI_0:IRQ[28:0]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MIV_RV32IMA_L1_AXI_0:IRQ} -pin_slices {[29]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MIV_RV32IMA_L1_AXI_0:IRQ} -pin_slices {[30]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MIV_RV32IMA_L1_AXI_0:DRV_TDO}
# ############################



# Add MSS_SUBSYSTEM_sb_0_sb_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {MSS_SUBSYSTEM_sb_0_sb} -instance_name {MSS_SUBSYSTEM_sb_0_sb_0} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS_SUBSYSTEM_sb_0_sb_0:POWER_ON_RESET_N}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {MSS_SUBSYSTEM_sb_0_sb_0:FAB_RESET_N} -value {VCC}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS_SUBSYSTEM_sb_0_sb_0:MSS_DDR_FIC_SUBSYSTEM_CLK}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS_SUBSYSTEM_sb_0_sb_0:MSS_DDR_FIC_SUBSYSTEM_LOCK}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS_SUBSYSTEM_sb_0_sb_0:FIC_0_LOCK}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS_SUBSYSTEM_sb_0_sb_0:DDR_READY}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS_SUBSYSTEM_sb_0_sb_0:FAB_CCC_GL1}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS_SUBSYSTEM_sb_0_sb_0:FAB_CCC_LOCK}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS_SUBSYSTEM_sb_0_sb_0:MSS_READY}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {MSS_SUBSYSTEM_sb_0_sb_0:MSS_INT_F2M} -value {GND}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS_SUBSYSTEM_sb_0_sb_0:FIC_0_AMBA_MASTER}


# Add scalar net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLK0_PAD" "MSS_SUBSYSTEM_sb_0_sb_0:CLK0_PAD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DEVRST_N" "MSS_SUBSYSTEM_sb_0_sb_0:DEVRST_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MIV_RV32IMA_L1_AXI_0:TCK" "COREJTAGDEBUG_0:TGT_TCK_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MIV_RV32IMA_L1_AXI_0:TDI" "COREJTAGDEBUG_0:TGT_TDI_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MIV_RV32IMA_L1_AXI_0:TMS" "COREJTAGDEBUG_0:TGT_TMS_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MIV_RV32IMA_L1_AXI_0:TRST" "COREJTAGDEBUG_0:TGT_TRSTB_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreTimer_0:TIMINT" "MIV_RV32IMA_L1_AXI_0:IRQ[29]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreTimer_1:TIMINT" "MIV_RV32IMA_L1_AXI_0:IRQ[30]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MDDR_CAS_N" "MSS_SUBSYSTEM_sb_0_sb_0:MDDR_CAS_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MDDR_CKE" "MSS_SUBSYSTEM_sb_0_sb_0:MDDR_CKE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MDDR_CLK" "MSS_SUBSYSTEM_sb_0_sb_0:MDDR_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MDDR_CLK_N" "MSS_SUBSYSTEM_sb_0_sb_0:MDDR_CLK_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MDDR_CS_N" "MSS_SUBSYSTEM_sb_0_sb_0:MDDR_CS_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MDDR_DQS_TMATCH_0_IN" "MSS_SUBSYSTEM_sb_0_sb_0:MDDR_DQS_TMATCH_0_IN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MDDR_DQS_TMATCH_0_OUT" "MSS_SUBSYSTEM_sb_0_sb_0:MDDR_DQS_TMATCH_0_OUT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MDDR_ODT" "MSS_SUBSYSTEM_sb_0_sb_0:MDDR_ODT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MDDR_RAS_N" "MSS_SUBSYSTEM_sb_0_sb_0:MDDR_RAS_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MDDR_RESET_N" "MSS_SUBSYSTEM_sb_0_sb_0:MDDR_RESET_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MDDR_WE_N" "MSS_SUBSYSTEM_sb_0_sb_0:MDDR_WE_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MIV_RV32IMA_L1_AXI_0:TDO" "COREJTAGDEBUG_0:TGT_TDO_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AXI_GLUE_LOGIC_0:CLK" "COREAXITOAHBL_0:ACLK" "COREAXITOAHBL_1:ACLK" "COREAXITOAHBL_0:HCLK" "COREAXITOAHBL_1:HCLK" "CoreAHBLite_0:HCLK" "CoreAHBLite_1:HCLK" "CoreGPIO_OUT:PCLK" "CORESPI_0:PCLK" "CoreTimer_0:PCLK" "CoreTimer_1:PCLK" "CoreGPIO_IN:PCLK" "CoreUARTapb_0:PCLK" "COREAHBTOAPB3_0:HCLK" "MIV_RV32IMA_L1_AXI_0:CLK" "MSS_SUBSYSTEM_sb_0_sb_0:FIC_0_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AXI_GLUE_LOGIC_0:RESET" "COREAXITOAHBL_0:ARESETN" "COREAXITOAHBL_1:ARESETN" "COREAXITOAHBL_0:HRESETN" "COREAXITOAHBL_1:HRESETN" "CoreAHBLite_0:HRESETN" "CoreAHBLite_1:HRESETN" "CoreGPIO_OUT:PRESETN" "CORESPI_0:PRESETN" "CoreTimer_0:PRESETn" "CoreTimer_1:PRESETn" "CoreGPIO_IN:PRESETN" "CoreUARTapb_0:PRESETN" "COREAHBTOAPB3_0:HRESETN" "MIV_RV32IMA_L1_AXI_0:RESETN" "MSS_SUBSYSTEM_sb_0_sb_0:INIT_DONE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RX" "CoreUARTapb_0:RX" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORESPI_0:SPISCLKO" "SPISCLKO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORESPI_0:SPISDI" "SPISDI" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORESPI_0:SPISDO" "SPISDO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORESPI_0:SPISS[0]" "SPISS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"TCK" "COREJTAGDEBUG_0:TCK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"TDI" "COREJTAGDEBUG_0:TDI" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"TDO" "COREJTAGDEBUG_0:TDO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"TMS" "COREJTAGDEBUG_0:TMS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"TRSTB" "COREJTAGDEBUG_0:TRSTB" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"TX" "CoreUARTapb_0:TX" }

# Add bus net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_IN:GPIO_IN[7:0]" "GPIO_IN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_OUT:GPIO_OUT[7:0]" "GPIO_OUT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MDDR_ADDR" "MSS_SUBSYSTEM_sb_0_sb_0:MDDR_ADDR" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MDDR_BA" "MSS_SUBSYSTEM_sb_0_sb_0:MDDR_BA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MDDR_DM_RDQS" "MSS_SUBSYSTEM_sb_0_sb_0:MDDR_DM_RDQS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MDDR_DQ" "MSS_SUBSYSTEM_sb_0_sb_0:MDDR_DQ" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MDDR_DQS" "MSS_SUBSYSTEM_sb_0_sb_0:MDDR_DQS" }

# Add bus interface net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreAHBLite_0:AHBmslave6" "MSS_SUBSYSTEM_sb_0_sb_0:FIC_0_AMBA_SLAVE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreAHBLite_0:AHBmslave7" "COREAHBTOAPB3_0:AHBslave" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreAHBLite_1:AHBmslave16" "MSS_SUBSYSTEM_sb_0_sb_0:MDDR_DDR_AMBA_SLAVE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreAPB3_0:APB3mmaster" "COREAHBTOAPB3_0:APBmaster" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreAPB3_0:APBmslave1" "CoreUARTapb_0:APB_bif" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_IN:APB_bif" "CoreAPB3_0:APBmslave2" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreAPB3_0:APBmslave3" "CoreTimer_0:APBslave" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreAPB3_0:APBmslave4" "CoreTimer_1:APBslave" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_OUT:APB_bif" "CoreAPB3_0:APBmslave5" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORESPI_0:APB_bif" "CoreAPB3_0:APBmslave6" }

sd_connect_pins -sd_name ${sd_name} -pin_names {"COREAXITOAHBL_0:AHBMasterIF" "CoreAHBLite_0:AHBmmaster0"}
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREAXITOAHBL_1:AHBMasterIF" "CoreAHBLite_1:AHBmmaster0"}
sd_connect_pins -sd_name ${sd_name} -pin_names {"MIV_RV32IMA_L1_AXI_0:MEM_AXI_WID" "AXI_GLUE_LOGIC_0:AXI_MIRROR_MST_MEM_WID[3:0]"}
sd_connect_pins -sd_name ${sd_name} -pin_names {"MIV_RV32IMA_L1_AXI_0:MMIO_AXI_WID" "AXI_GLUE_LOGIC_0:AXI_MIRROR_MST_MMIO_WID[3:0]"}
sd_connect_pins -sd_name ${sd_name} -pin_names {"MIV_RV32IMA_L1_AXI_0:MEM_MST_AXI4" "AXI_GLUE_LOGIC_0:RISCV_MEMORY"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"MIV_RV32IMA_L1_AXI_0:MMIO_MST_AXI4" "AXI_GLUE_LOGIC_0:RISCV_MMIO"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"AXI_GLUE_LOGIC_0:UNCORE_MMIO" "COREAXITOAHBL_0:AXISlaveIF"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"AXI_GLUE_LOGIC_0:UNCORE_MEMORY" "COREAXITOAHBL_1:AXISlaveIF"} 


# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the smartDesign
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign PROC_SUBSYSTEM
generate_component -component_name ${sd_name} -recursive 1


