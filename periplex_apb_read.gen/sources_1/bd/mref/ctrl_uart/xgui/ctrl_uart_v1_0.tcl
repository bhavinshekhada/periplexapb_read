# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "ack1" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ack2" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ack3" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ack4" -parent ${Page_0}
  ipgui::add_param $IPINST -name "byte1" -parent ${Page_0}
  ipgui::add_param $IPINST -name "byte2" -parent ${Page_0}
  ipgui::add_param $IPINST -name "byte3" -parent ${Page_0}
  ipgui::add_param $IPINST -name "byte4" -parent ${Page_0}
  ipgui::add_param $IPINST -name "idle" -parent ${Page_0}


}

proc update_PARAM_VALUE.ack1 { PARAM_VALUE.ack1 } {
	# Procedure called to update ack1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ack1 { PARAM_VALUE.ack1 } {
	# Procedure called to validate ack1
	return true
}

proc update_PARAM_VALUE.ack2 { PARAM_VALUE.ack2 } {
	# Procedure called to update ack2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ack2 { PARAM_VALUE.ack2 } {
	# Procedure called to validate ack2
	return true
}

proc update_PARAM_VALUE.ack3 { PARAM_VALUE.ack3 } {
	# Procedure called to update ack3 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ack3 { PARAM_VALUE.ack3 } {
	# Procedure called to validate ack3
	return true
}

proc update_PARAM_VALUE.ack4 { PARAM_VALUE.ack4 } {
	# Procedure called to update ack4 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ack4 { PARAM_VALUE.ack4 } {
	# Procedure called to validate ack4
	return true
}

proc update_PARAM_VALUE.byte1 { PARAM_VALUE.byte1 } {
	# Procedure called to update byte1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.byte1 { PARAM_VALUE.byte1 } {
	# Procedure called to validate byte1
	return true
}

proc update_PARAM_VALUE.byte2 { PARAM_VALUE.byte2 } {
	# Procedure called to update byte2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.byte2 { PARAM_VALUE.byte2 } {
	# Procedure called to validate byte2
	return true
}

proc update_PARAM_VALUE.byte3 { PARAM_VALUE.byte3 } {
	# Procedure called to update byte3 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.byte3 { PARAM_VALUE.byte3 } {
	# Procedure called to validate byte3
	return true
}

proc update_PARAM_VALUE.byte4 { PARAM_VALUE.byte4 } {
	# Procedure called to update byte4 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.byte4 { PARAM_VALUE.byte4 } {
	# Procedure called to validate byte4
	return true
}

proc update_PARAM_VALUE.idle { PARAM_VALUE.idle } {
	# Procedure called to update idle when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.idle { PARAM_VALUE.idle } {
	# Procedure called to validate idle
	return true
}


proc update_MODELPARAM_VALUE.idle { MODELPARAM_VALUE.idle PARAM_VALUE.idle } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.idle}] ${MODELPARAM_VALUE.idle}
}

proc update_MODELPARAM_VALUE.byte1 { MODELPARAM_VALUE.byte1 PARAM_VALUE.byte1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.byte1}] ${MODELPARAM_VALUE.byte1}
}

proc update_MODELPARAM_VALUE.byte2 { MODELPARAM_VALUE.byte2 PARAM_VALUE.byte2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.byte2}] ${MODELPARAM_VALUE.byte2}
}

proc update_MODELPARAM_VALUE.byte3 { MODELPARAM_VALUE.byte3 PARAM_VALUE.byte3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.byte3}] ${MODELPARAM_VALUE.byte3}
}

proc update_MODELPARAM_VALUE.byte4 { MODELPARAM_VALUE.byte4 PARAM_VALUE.byte4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.byte4}] ${MODELPARAM_VALUE.byte4}
}

proc update_MODELPARAM_VALUE.ack1 { MODELPARAM_VALUE.ack1 PARAM_VALUE.ack1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ack1}] ${MODELPARAM_VALUE.ack1}
}

proc update_MODELPARAM_VALUE.ack2 { MODELPARAM_VALUE.ack2 PARAM_VALUE.ack2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ack2}] ${MODELPARAM_VALUE.ack2}
}

proc update_MODELPARAM_VALUE.ack3 { MODELPARAM_VALUE.ack3 PARAM_VALUE.ack3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ack3}] ${MODELPARAM_VALUE.ack3}
}

proc update_MODELPARAM_VALUE.ack4 { MODELPARAM_VALUE.ack4 PARAM_VALUE.ack4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ack4}] ${MODELPARAM_VALUE.ack4}
}

