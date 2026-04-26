onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib dpram128x20_opt

do {wave.do}

view wave
view structure
view signals

do {dpram128x20.udo}

run -all

quit -force
