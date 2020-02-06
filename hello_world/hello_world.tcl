# -------------------------------------------------------------------------- #
#
# Copyright (C) 2018  Intel Corporation. All rights reserved.
# Your use of Intel Corporation's design tools, logic functions 
# and other software and tools, and its AMPP partner logic 
# functions, and any output files from any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Intel Program License 
# Subscription Agreement, the Intel Quartus Prime License Agreement,
# the Intel FPGA IP License Agreement, or other applicable license
# agreement, including, without limitation, that your use is for
# the sole purpose of programming logic devices manufactured by
# Intel and sold by Intel or its authorized distributors.  Please
# refer to the applicable agreement for further details.
#
# -------------------------------------------------------------------------- #
#
# Quartus Prime
# Version 18.0.0 Build 614 04/24/2018 SJ Standard Edition
# Date created = 11:47:52  February 05, 2020
#
# -------------------------------------------------------------------------- #
#
# Notes:
#
# 1) The default values for assignments are stored in the file:
#    If this file doesn't exist, see file:
#		assignment_defaults.qdf
#
# 2) Altera recommends that you do not modify this file. This
#    file is updated automatically by the Quartus Prime software
#    and any changes you make may be lost or overwritten.
#
# -------------------------------------------------------------------------- #

package require ::quartus::project

set need_to_close_project 0
set make_assignments 1

project_new -revision hello_world hello_world -overwrite

set_global_assignment -name FAMILY "Arria 10"
set_global_assignment -name DEVICE 10AX115H1F34E1SG
set_global_assignment -name TOP_LEVEL_ENTITY system
set_global_assignment -name ORIGINAL_QUARTUS_VERSION 18.0.0
#set_global_assignment -name PROJECT_CREATION_TIME_DATE "11:47:52  FEBRUARY 05, 2020"
set_global_assignment -name LAST_QUARTUS_VERSION "18.0.0 Standard Edition"
set_global_assignment -name NUM_PARALLEL_PROCESSORS 4
set_global_assignment -name PROJECT_OUTPUT_DIRECTORY output_files
set_global_assignment -name MIN_CORE_JUNCTION_TEMP 0
set_global_assignment -name MAX_CORE_JUNCTION_TEMP 100
set_global_assignment -name ERROR_CHECK_FREQUENCY_DIVISOR 1
set_global_assignment -name QSYS_FILE system.qsys
set_global_assignment -name SDC_FILE hello_world.sdc
set_global_assignment -name PARTITION_NETLIST_TYPE SOURCE -section_id Top
set_global_assignment -name PARTITION_FITTER_PRESERVATION_LEVEL PLACEMENT -section_id Top
set_global_assignment -name PARTITION_COLOR 16764057 -section_id Top
set_instance_assignment -name IO_STANDARD LVDS -to clk_clk
set_location_assignment PIN_K6 -to clk_clk
set_location_assignment PIN_L6 -to "clk_clk(n)"
set_location_assignment PIN_AH25 -to reset_reset_n
set_location_assignment PIN_AG25 -to led_export[0]
set_location_assignment PIN_AF25 -to led_export[1]
set_location_assignment PIN_AJ26 -to led_export[2]
set_location_assignment PIN_AH26 -to led_export[3]
set_location_assignment PIN_AJ27 -to led_export[4]
set_location_assignment PIN_AH27 -to led_export[5]
set_location_assignment PIN_AE24 -to led_export[6]
set_location_assignment PIN_AD25 -to led_export[7]

set_instance_assignment -name PARTITION_HIERARCHY root_partition -to | -section_id Top


load_package flow
execute_flow -compile
