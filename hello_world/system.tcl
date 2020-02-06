# qsys scripting (.tcl) file for system
package require -exact qsys 16.0

create_system {system}

set_project_property DEVICE_FAMILY {Arria 10}
set_project_property DEVICE {10AX115H1F34E1SG}
set_project_property HIDE_FROM_IP_CATALOG {false}

# Instances and instance parameters
# (disabled instances are intentionally culled)
add_instance clk_0 clock_source 18.0
set_instance_parameter_value clk_0 {clockFrequency} {50000000.0}
set_instance_parameter_value clk_0 {clockFrequencyKnown} {1}
set_instance_parameter_value clk_0 {resetSynchronousEdges} {NONE}

add_instance jtag_uart_0 altera_avalon_jtag_uart 18.0
set_instance_parameter_value jtag_uart_0 {allowMultipleConnections} {0}
set_instance_parameter_value jtag_uart_0 {hubInstanceID} {0}
set_instance_parameter_value jtag_uart_0 {readBufferDepth} {64}
set_instance_parameter_value jtag_uart_0 {readIRQThreshold} {8}
set_instance_parameter_value jtag_uart_0 {simInputCharacterStream} {}
set_instance_parameter_value jtag_uart_0 {simInteractiveOptions} {NO_INTERACTIVE_WINDOWS}
set_instance_parameter_value jtag_uart_0 {useRegistersForReadBuffer} {0}
set_instance_parameter_value jtag_uart_0 {useRegistersForWriteBuffer} {0}
set_instance_parameter_value jtag_uart_0 {useRelativePathForSimFile} {0}
set_instance_parameter_value jtag_uart_0 {writeBufferDepth} {64}
set_instance_parameter_value jtag_uart_0 {writeIRQThreshold} {8}

add_instance nios2_qsys_0 altera_nios2_qsys 16.1
set_instance_parameter_value nios2_qsys_0 {bht_ramBlockType} {Automatic}
set_instance_parameter_value nios2_qsys_0 {breakOffset} {32}
set_instance_parameter_value nios2_qsys_0 {breakSlave} {nios2_qsys_0.jtag_debug_module}
set_instance_parameter_value nios2_qsys_0 {cpuID} {0}
set_instance_parameter_value nios2_qsys_0 {cpuID_stored} {0}
set_instance_parameter_value nios2_qsys_0 {cpuReset} {0}
set_instance_parameter_value nios2_qsys_0 {dcache_bursts} {false}
set_instance_parameter_value nios2_qsys_0 {dcache_lineSize} {32}
set_instance_parameter_value nios2_qsys_0 {dcache_numTCDM} {0}
set_instance_parameter_value nios2_qsys_0 {dcache_omitDataMaster} {0}
set_instance_parameter_value nios2_qsys_0 {dcache_ramBlockType} {Automatic}
set_instance_parameter_value nios2_qsys_0 {dcache_size} {2048}
set_instance_parameter_value nios2_qsys_0 {dcache_tagramBlockType} {Automatic}
set_instance_parameter_value nios2_qsys_0 {dcache_victim_buf_impl} {ram}
set_instance_parameter_value nios2_qsys_0 {debug_OCIOnchipTrace} {_128}
set_instance_parameter_value nios2_qsys_0 {debug_assignJtagInstanceID} {0}
set_instance_parameter_value nios2_qsys_0 {debug_debugReqSignals} {0}
set_instance_parameter_value nios2_qsys_0 {debug_embeddedPLL} {1}
set_instance_parameter_value nios2_qsys_0 {debug_jtagInstanceID} {0}
set_instance_parameter_value nios2_qsys_0 {debug_level} {Level1}
set_instance_parameter_value nios2_qsys_0 {debug_triggerArming} {1}
set_instance_parameter_value nios2_qsys_0 {exceptionOffset} {32}
set_instance_parameter_value nios2_qsys_0 {exceptionSlave} {onchip_memory2_0.s1}
set_instance_parameter_value nios2_qsys_0 {icache_burstType} {None}
set_instance_parameter_value nios2_qsys_0 {icache_numTCIM} {0}
set_instance_parameter_value nios2_qsys_0 {icache_ramBlockType} {Automatic}
set_instance_parameter_value nios2_qsys_0 {icache_size} {4096}
set_instance_parameter_value nios2_qsys_0 {icache_tagramBlockType} {Automatic}
set_instance_parameter_value nios2_qsys_0 {impl} {Fast}
set_instance_parameter_value nios2_qsys_0 {manuallyAssignCpuID} {1}
set_instance_parameter_value nios2_qsys_0 {mmu_TLBMissExcOffset} {0}
set_instance_parameter_value nios2_qsys_0 {mmu_TLBMissExcSlave} {None}
set_instance_parameter_value nios2_qsys_0 {mmu_autoAssignTlbPtrSz} {1}
set_instance_parameter_value nios2_qsys_0 {mmu_enabled} {0}
set_instance_parameter_value nios2_qsys_0 {mmu_processIDNumBits} {8}
set_instance_parameter_value nios2_qsys_0 {mmu_ramBlockType} {Automatic}
set_instance_parameter_value nios2_qsys_0 {mmu_tlbNumWays} {16}
set_instance_parameter_value nios2_qsys_0 {mmu_tlbPtrSz} {7}
set_instance_parameter_value nios2_qsys_0 {mmu_udtlbNumEntries} {6}
set_instance_parameter_value nios2_qsys_0 {mmu_uitlbNumEntries} {4}
set_instance_parameter_value nios2_qsys_0 {mpu_enabled} {0}
set_instance_parameter_value nios2_qsys_0 {mpu_minDataRegionSize} {12}
set_instance_parameter_value nios2_qsys_0 {mpu_minInstRegionSize} {12}
set_instance_parameter_value nios2_qsys_0 {mpu_numOfDataRegion} {8}
set_instance_parameter_value nios2_qsys_0 {mpu_numOfInstRegion} {8}
set_instance_parameter_value nios2_qsys_0 {mpu_useLimit} {0}
set_instance_parameter_value nios2_qsys_0 {muldiv_divider} {0}
set_instance_parameter_value nios2_qsys_0 {muldiv_multiplierType} {DSPBlock}
set_instance_parameter_value nios2_qsys_0 {ocimem_ramBlockType} {Automatic}
set_instance_parameter_value nios2_qsys_0 {regfile_ramBlockType} {Automatic}
set_instance_parameter_value nios2_qsys_0 {resetOffset} {0}
set_instance_parameter_value nios2_qsys_0 {resetSlave} {onchip_memory2_0.s1}
set_instance_parameter_value nios2_qsys_0 {resetrequest_enabled} {1}
set_instance_parameter_value nios2_qsys_0 {setting_HBreakTest} {0}
set_instance_parameter_value nios2_qsys_0 {setting_HDLSimCachesCleared} {1}
set_instance_parameter_value nios2_qsys_0 {setting_activateModelChecker} {0}
set_instance_parameter_value nios2_qsys_0 {setting_activateMonitors} {1}
set_instance_parameter_value nios2_qsys_0 {setting_activateTestEndChecker} {0}
set_instance_parameter_value nios2_qsys_0 {setting_activateTrace} {1}
set_instance_parameter_value nios2_qsys_0 {setting_activateTrace_user} {0}
set_instance_parameter_value nios2_qsys_0 {setting_allowFullAddressRange} {0}
set_instance_parameter_value nios2_qsys_0 {setting_alwaysEncrypt} {1}
set_instance_parameter_value nios2_qsys_0 {setting_asic_enabled} {0}
set_instance_parameter_value nios2_qsys_0 {setting_asic_synopsys_translate_on_off} {0}
set_instance_parameter_value nios2_qsys_0 {setting_avalonDebugPortPresent} {0}
set_instance_parameter_value nios2_qsys_0 {setting_bhtIndexPcOnly} {0}
set_instance_parameter_value nios2_qsys_0 {setting_bhtPtrSz} {8}
set_instance_parameter_value nios2_qsys_0 {setting_bigEndian} {0}
set_instance_parameter_value nios2_qsys_0 {setting_bit31BypassDCache} {1}
set_instance_parameter_value nios2_qsys_0 {setting_branchPredictionType} {Automatic}
set_instance_parameter_value nios2_qsys_0 {setting_breakslaveoveride} {0}
set_instance_parameter_value nios2_qsys_0 {setting_clearXBitsLDNonBypass} {1}
set_instance_parameter_value nios2_qsys_0 {setting_dc_ecc_present} {0}
set_instance_parameter_value nios2_qsys_0 {setting_debugSimGen} {0}
set_instance_parameter_value nios2_qsys_0 {setting_dtcm_ecc_present} {0}
set_instance_parameter_value nios2_qsys_0 {setting_ecc_present} {0}
set_instance_parameter_value nios2_qsys_0 {setting_ecc_sim_test_ports} {0}
set_instance_parameter_value nios2_qsys_0 {setting_exportPCB} {0}
set_instance_parameter_value nios2_qsys_0 {setting_export_large_RAMs} {0}
set_instance_parameter_value nios2_qsys_0 {setting_exportvectors} {0}
set_instance_parameter_value nios2_qsys_0 {setting_extraExceptionInfo} {0}
set_instance_parameter_value nios2_qsys_0 {setting_fullWaveformSignals} {0}
set_instance_parameter_value nios2_qsys_0 {setting_ic_ecc_present} {1}
set_instance_parameter_value nios2_qsys_0 {setting_illegalInstructionsTrap} {0}
set_instance_parameter_value nios2_qsys_0 {setting_illegalMemAccessDetection} {0}
set_instance_parameter_value nios2_qsys_0 {setting_interruptControllerType} {Internal}
set_instance_parameter_value nios2_qsys_0 {setting_itcm_ecc_present} {0}
set_instance_parameter_value nios2_qsys_0 {setting_mmu_ecc_present} {1}
set_instance_parameter_value nios2_qsys_0 {setting_oci_export_jtag_signals} {0}
set_instance_parameter_value nios2_qsys_0 {setting_perfCounterWidth} {32}
set_instance_parameter_value nios2_qsys_0 {setting_performanceCounter} {0}
set_instance_parameter_value nios2_qsys_0 {setting_preciseDivisionErrorException} {0}
set_instance_parameter_value nios2_qsys_0 {setting_preciseIllegalMemAccessException} {0}
set_instance_parameter_value nios2_qsys_0 {setting_preciseSlaveAccessErrorException} {0}
set_instance_parameter_value nios2_qsys_0 {setting_removeRAMinit} {0}
set_instance_parameter_value nios2_qsys_0 {setting_rf_ecc_present} {1}
set_instance_parameter_value nios2_qsys_0 {setting_shadowRegisterSets} {0}
set_instance_parameter_value nios2_qsys_0 {setting_showInternalSettings} {0}
set_instance_parameter_value nios2_qsys_0 {setting_showUnpublishedSettings} {0}
set_instance_parameter_value nios2_qsys_0 {userDefinedSettings} {}

add_instance onchip_memory2_0 altera_avalon_onchip_memory2 18.0
set_instance_parameter_value onchip_memory2_0 {allowInSystemMemoryContentEditor} {0}
set_instance_parameter_value onchip_memory2_0 {blockType} {AUTO}
set_instance_parameter_value onchip_memory2_0 {copyInitFile} {0}
set_instance_parameter_value onchip_memory2_0 {dataWidth} {32}
set_instance_parameter_value onchip_memory2_0 {dataWidth2} {32}
set_instance_parameter_value onchip_memory2_0 {dualPort} {0}
set_instance_parameter_value onchip_memory2_0 {ecc_enabled} {0}
set_instance_parameter_value onchip_memory2_0 {enPRInitMode} {0}
set_instance_parameter_value onchip_memory2_0 {enableDiffWidth} {0}
set_instance_parameter_value onchip_memory2_0 {initMemContent} {1}
set_instance_parameter_value onchip_memory2_0 {initializationFileName} {onchip_mem.hex}
set_instance_parameter_value onchip_memory2_0 {instanceID} {NONE}
set_instance_parameter_value onchip_memory2_0 {memorySize} {65536.0}
set_instance_parameter_value onchip_memory2_0 {readDuringWriteMode} {DONT_CARE}
set_instance_parameter_value onchip_memory2_0 {resetrequest_enabled} {1}
set_instance_parameter_value onchip_memory2_0 {simAllowMRAMContentsFile} {0}
set_instance_parameter_value onchip_memory2_0 {simMemInitOnlyFilename} {0}
set_instance_parameter_value onchip_memory2_0 {singleClockOperation} {0}
set_instance_parameter_value onchip_memory2_0 {slave1Latency} {1}
set_instance_parameter_value onchip_memory2_0 {slave2Latency} {1}
set_instance_parameter_value onchip_memory2_0 {useNonDefaultInitFile} {0}
set_instance_parameter_value onchip_memory2_0 {useShallowMemBlocks} {0}
set_instance_parameter_value onchip_memory2_0 {writable} {1}

add_instance pio_0 altera_avalon_pio 18.0
set_instance_parameter_value pio_0 {bitClearingEdgeCapReg} {0}
set_instance_parameter_value pio_0 {bitModifyingOutReg} {0}
set_instance_parameter_value pio_0 {captureEdge} {0}
set_instance_parameter_value pio_0 {direction} {Output}
set_instance_parameter_value pio_0 {edgeType} {RISING}
set_instance_parameter_value pio_0 {generateIRQ} {0}
set_instance_parameter_value pio_0 {irqType} {LEVEL}
set_instance_parameter_value pio_0 {resetValue} {0.0}
set_instance_parameter_value pio_0 {simDoTestBenchWiring} {0}
set_instance_parameter_value pio_0 {simDrivenValue} {0.0}
set_instance_parameter_value pio_0 {width} {8}

add_instance sysid_qsys_0 altera_avalon_sysid_qsys 18.0
set_instance_parameter_value sysid_qsys_0 {id} {-1412584499}

add_instance timer_0 altera_avalon_timer 18.0
set_instance_parameter_value timer_0 {alwaysRun} {0}
set_instance_parameter_value timer_0 {counterSize} {32}
set_instance_parameter_value timer_0 {fixedPeriod} {0}
set_instance_parameter_value timer_0 {period} {1}
set_instance_parameter_value timer_0 {periodUnits} {MSEC}
set_instance_parameter_value timer_0 {resetOutput} {0}
set_instance_parameter_value timer_0 {snapshot} {1}
set_instance_parameter_value timer_0 {timeoutPulseOutput} {0}
set_instance_parameter_value timer_0 {watchdogPulse} {2}

# exported interfaces
add_interface clk clock sink
set_interface_property clk EXPORT_OF clk_0.clk_in
add_interface led conduit end
set_interface_property led EXPORT_OF pio_0.external_connection
add_interface reset reset sink
set_interface_property reset EXPORT_OF clk_0.clk_in_reset

# connections and connection parameters
add_connection clk_0.clk jtag_uart_0.clk

add_connection clk_0.clk nios2_qsys_0.clk

add_connection clk_0.clk onchip_memory2_0.clk1

add_connection clk_0.clk pio_0.clk

add_connection clk_0.clk sysid_qsys_0.clk

add_connection clk_0.clk timer_0.clk

add_connection clk_0.clk_reset jtag_uart_0.reset

add_connection clk_0.clk_reset nios2_qsys_0.reset_n

add_connection clk_0.clk_reset onchip_memory2_0.reset1

add_connection clk_0.clk_reset pio_0.reset

add_connection clk_0.clk_reset timer_0.reset

add_connection nios2_qsys_0.d_irq jtag_uart_0.irq
set_connection_parameter_value nios2_qsys_0.d_irq/jtag_uart_0.irq irqNumber {0}

add_connection nios2_qsys_0.d_irq timer_0.irq
set_connection_parameter_value nios2_qsys_0.d_irq/timer_0.irq irqNumber {1}

add_connection nios2_qsys_0.data_master jtag_uart_0.avalon_jtag_slave
set_connection_parameter_value nios2_qsys_0.data_master/jtag_uart_0.avalon_jtag_slave arbitrationPriority {1}
set_connection_parameter_value nios2_qsys_0.data_master/jtag_uart_0.avalon_jtag_slave baseAddress {0x00010000}
set_connection_parameter_value nios2_qsys_0.data_master/jtag_uart_0.avalon_jtag_slave defaultConnection {0}

add_connection nios2_qsys_0.data_master nios2_qsys_0.jtag_debug_module
set_connection_parameter_value nios2_qsys_0.data_master/nios2_qsys_0.jtag_debug_module arbitrationPriority {1}
set_connection_parameter_value nios2_qsys_0.data_master/nios2_qsys_0.jtag_debug_module baseAddress {0x00014800}
set_connection_parameter_value nios2_qsys_0.data_master/nios2_qsys_0.jtag_debug_module defaultConnection {0}

add_connection nios2_qsys_0.data_master onchip_memory2_0.s1
set_connection_parameter_value nios2_qsys_0.data_master/onchip_memory2_0.s1 arbitrationPriority {1}
set_connection_parameter_value nios2_qsys_0.data_master/onchip_memory2_0.s1 baseAddress {0x0000}
set_connection_parameter_value nios2_qsys_0.data_master/onchip_memory2_0.s1 defaultConnection {0}

add_connection nios2_qsys_0.data_master pio_0.s1
set_connection_parameter_value nios2_qsys_0.data_master/pio_0.s1 arbitrationPriority {1}
set_connection_parameter_value nios2_qsys_0.data_master/pio_0.s1 baseAddress {0x00011000}
set_connection_parameter_value nios2_qsys_0.data_master/pio_0.s1 defaultConnection {0}

add_connection nios2_qsys_0.data_master sysid_qsys_0.control_slave
set_connection_parameter_value nios2_qsys_0.data_master/sysid_qsys_0.control_slave arbitrationPriority {1}
set_connection_parameter_value nios2_qsys_0.data_master/sysid_qsys_0.control_slave baseAddress {0x00013000}
set_connection_parameter_value nios2_qsys_0.data_master/sysid_qsys_0.control_slave defaultConnection {0}

add_connection nios2_qsys_0.data_master timer_0.s1
set_connection_parameter_value nios2_qsys_0.data_master/timer_0.s1 arbitrationPriority {1}
set_connection_parameter_value nios2_qsys_0.data_master/timer_0.s1 baseAddress {0x00012000}
set_connection_parameter_value nios2_qsys_0.data_master/timer_0.s1 defaultConnection {0}

add_connection nios2_qsys_0.instruction_master nios2_qsys_0.jtag_debug_module
set_connection_parameter_value nios2_qsys_0.instruction_master/nios2_qsys_0.jtag_debug_module arbitrationPriority {1}
set_connection_parameter_value nios2_qsys_0.instruction_master/nios2_qsys_0.jtag_debug_module baseAddress {0x00014800}
set_connection_parameter_value nios2_qsys_0.instruction_master/nios2_qsys_0.jtag_debug_module defaultConnection {0}

add_connection nios2_qsys_0.instruction_master onchip_memory2_0.s1
set_connection_parameter_value nios2_qsys_0.instruction_master/onchip_memory2_0.s1 arbitrationPriority {1}
set_connection_parameter_value nios2_qsys_0.instruction_master/onchip_memory2_0.s1 baseAddress {0x0000}
set_connection_parameter_value nios2_qsys_0.instruction_master/onchip_memory2_0.s1 defaultConnection {0}

add_connection nios2_qsys_0.jtag_debug_module_reset jtag_uart_0.reset

add_connection nios2_qsys_0.jtag_debug_module_reset onchip_memory2_0.reset1

add_connection nios2_qsys_0.jtag_debug_module_reset pio_0.reset

add_connection nios2_qsys_0.jtag_debug_module_reset sysid_qsys_0.reset

add_connection nios2_qsys_0.jtag_debug_module_reset timer_0.reset

# interconnect requirements
set_interconnect_requirement {$system} {qsys_mm.clockCrossingAdapter} {HANDSHAKE}
set_interconnect_requirement {$system} {qsys_mm.enableEccProtection} {FALSE}
set_interconnect_requirement {$system} {qsys_mm.insertDefaultSlave} {FALSE}
set_interconnect_requirement {$system} {qsys_mm.maxAdditionalLatency} {1}

save_system {system.qsys}
