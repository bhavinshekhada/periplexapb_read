transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 -l xil_defaultlib \
"../../../bd/read_test/ip/read_test_Encodec_0_0/sim/read_test_Encodec_0_0.v" \
"../../../bd/read_test/ip/read_test_apb_master_0_0/sim/read_test_apb_master_0_0.v" \
"../../../bd/read_test/ip/read_test_apb_slave_0_0/sim/read_test_apb_slave_0_0.v" \
"../../../bd/read_test/ip/read_test_ctrl_uart_0_0/sim/read_test_ctrl_uart_0_0.v" \
"../../../bd/read_test/ip/read_test_uart_tx_0_0/sim/read_test_uart_tx_0_0.v" \
"../../../bd/read_test/ip/read_test_FIFO_0_0/sim/read_test_FIFO_0_0.v" \
"../../../bd/read_test/sim/read_test.v" \


vlog -work xil_defaultlib \
"glbl.v"

