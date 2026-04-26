onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib dpram256x8_opt

do {wave.do}

view wave
view structure
view signals

do {dpram256x8.udo}

run -all

quit -force
