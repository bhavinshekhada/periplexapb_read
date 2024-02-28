transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+read_test  -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.read_test xil_defaultlib.glbl

do {read_test.udo}

run 1000ns

endsim

quit -force
