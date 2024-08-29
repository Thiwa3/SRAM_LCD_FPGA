set_global_assignment -entity "sram1" -library "lib_sram1" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "sram1" -library "lib_sram1" -name IP_TOOL_VERSION "23.1"
set_global_assignment -entity "sram1" -library "lib_sram1" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_sram1" -name SPD_FILE [file join $::quartus(sip_path) "../sram1.spd"]
set_global_assignment -library "lib_sram1" -name MISC_FILE [file join $::quartus(sip_path) "../../sram1.qsys"]

set_global_assignment -library "lib_sram1" -name MISC_FILE [file join $::quartus(sip_path) "sram1.vhd"]
