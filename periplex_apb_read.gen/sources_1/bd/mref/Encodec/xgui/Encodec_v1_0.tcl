# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "DATA_DECODE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DATA_SAMPLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "FIFO_READ" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IDLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "R_ACK" -parent ${Page_0}
  ipgui::add_param $IPINST -name "R_ADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "R_DATA_FIFO_WRITE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "R_FIFO_WRITE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "W_ACK" -parent ${Page_0}
  ipgui::add_param $IPINST -name "W_DATA_WRITE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "W_FIFO_READ" -parent ${Page_0}


}

proc update_PARAM_VALUE.DATA_DECODE { PARAM_VALUE.DATA_DECODE } {
	# Procedure called to update DATA_DECODE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DATA_DECODE { PARAM_VALUE.DATA_DECODE } {
	# Procedure called to validate DATA_DECODE
	return true
}

proc update_PARAM_VALUE.DATA_SAMPLE { PARAM_VALUE.DATA_SAMPLE } {
	# Procedure called to update DATA_SAMPLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DATA_SAMPLE { PARAM_VALUE.DATA_SAMPLE } {
	# Procedure called to validate DATA_SAMPLE
	return true
}

proc update_PARAM_VALUE.FIFO_READ { PARAM_VALUE.FIFO_READ } {
	# Procedure called to update FIFO_READ when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FIFO_READ { PARAM_VALUE.FIFO_READ } {
	# Procedure called to validate FIFO_READ
	return true
}

proc update_PARAM_VALUE.IDLE { PARAM_VALUE.IDLE } {
	# Procedure called to update IDLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IDLE { PARAM_VALUE.IDLE } {
	# Procedure called to validate IDLE
	return true
}

proc update_PARAM_VALUE.R_ACK { PARAM_VALUE.R_ACK } {
	# Procedure called to update R_ACK when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.R_ACK { PARAM_VALUE.R_ACK } {
	# Procedure called to validate R_ACK
	return true
}

proc update_PARAM_VALUE.R_ADDR { PARAM_VALUE.R_ADDR } {
	# Procedure called to update R_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.R_ADDR { PARAM_VALUE.R_ADDR } {
	# Procedure called to validate R_ADDR
	return true
}

proc update_PARAM_VALUE.R_DATA_FIFO_WRITE { PARAM_VALUE.R_DATA_FIFO_WRITE } {
	# Procedure called to update R_DATA_FIFO_WRITE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.R_DATA_FIFO_WRITE { PARAM_VALUE.R_DATA_FIFO_WRITE } {
	# Procedure called to validate R_DATA_FIFO_WRITE
	return true
}

proc update_PARAM_VALUE.R_FIFO_WRITE { PARAM_VALUE.R_FIFO_WRITE } {
	# Procedure called to update R_FIFO_WRITE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.R_FIFO_WRITE { PARAM_VALUE.R_FIFO_WRITE } {
	# Procedure called to validate R_FIFO_WRITE
	return true
}

proc update_PARAM_VALUE.W_ACK { PARAM_VALUE.W_ACK } {
	# Procedure called to update W_ACK when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.W_ACK { PARAM_VALUE.W_ACK } {
	# Procedure called to validate W_ACK
	return true
}

proc update_PARAM_VALUE.W_DATA_WRITE { PARAM_VALUE.W_DATA_WRITE } {
	# Procedure called to update W_DATA_WRITE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.W_DATA_WRITE { PARAM_VALUE.W_DATA_WRITE } {
	# Procedure called to validate W_DATA_WRITE
	return true
}

proc update_PARAM_VALUE.W_FIFO_READ { PARAM_VALUE.W_FIFO_READ } {
	# Procedure called to update W_FIFO_READ when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.W_FIFO_READ { PARAM_VALUE.W_FIFO_READ } {
	# Procedure called to validate W_FIFO_READ
	return true
}


proc update_MODELPARAM_VALUE.IDLE { MODELPARAM_VALUE.IDLE PARAM_VALUE.IDLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IDLE}] ${MODELPARAM_VALUE.IDLE}
}

proc update_MODELPARAM_VALUE.FIFO_READ { MODELPARAM_VALUE.FIFO_READ PARAM_VALUE.FIFO_READ } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FIFO_READ}] ${MODELPARAM_VALUE.FIFO_READ}
}

proc update_MODELPARAM_VALUE.DATA_SAMPLE { MODELPARAM_VALUE.DATA_SAMPLE PARAM_VALUE.DATA_SAMPLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DATA_SAMPLE}] ${MODELPARAM_VALUE.DATA_SAMPLE}
}

proc update_MODELPARAM_VALUE.DATA_DECODE { MODELPARAM_VALUE.DATA_DECODE PARAM_VALUE.DATA_DECODE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DATA_DECODE}] ${MODELPARAM_VALUE.DATA_DECODE}
}

proc update_MODELPARAM_VALUE.W_FIFO_READ { MODELPARAM_VALUE.W_FIFO_READ PARAM_VALUE.W_FIFO_READ } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.W_FIFO_READ}] ${MODELPARAM_VALUE.W_FIFO_READ}
}

proc update_MODELPARAM_VALUE.W_DATA_WRITE { MODELPARAM_VALUE.W_DATA_WRITE PARAM_VALUE.W_DATA_WRITE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.W_DATA_WRITE}] ${MODELPARAM_VALUE.W_DATA_WRITE}
}

proc update_MODELPARAM_VALUE.W_ACK { MODELPARAM_VALUE.W_ACK PARAM_VALUE.W_ACK } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.W_ACK}] ${MODELPARAM_VALUE.W_ACK}
}

proc update_MODELPARAM_VALUE.R_FIFO_WRITE { MODELPARAM_VALUE.R_FIFO_WRITE PARAM_VALUE.R_FIFO_WRITE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.R_FIFO_WRITE}] ${MODELPARAM_VALUE.R_FIFO_WRITE}
}

proc update_MODELPARAM_VALUE.R_ADDR { MODELPARAM_VALUE.R_ADDR PARAM_VALUE.R_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.R_ADDR}] ${MODELPARAM_VALUE.R_ADDR}
}

proc update_MODELPARAM_VALUE.R_ACK { MODELPARAM_VALUE.R_ACK PARAM_VALUE.R_ACK } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.R_ACK}] ${MODELPARAM_VALUE.R_ACK}
}

proc update_MODELPARAM_VALUE.R_DATA_FIFO_WRITE { MODELPARAM_VALUE.R_DATA_FIFO_WRITE PARAM_VALUE.R_DATA_FIFO_WRITE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.R_DATA_FIFO_WRITE}] ${MODELPARAM_VALUE.R_DATA_FIFO_WRITE}
}

