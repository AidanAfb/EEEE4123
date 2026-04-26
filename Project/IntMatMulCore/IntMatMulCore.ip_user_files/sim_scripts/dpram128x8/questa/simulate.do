onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib dpram128x8_opt

do {wave.do}

view wave
view structure
view signals

do {dpram128x8.udo}

run -all

quit -force
