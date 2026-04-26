onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib dpram64x32_opt

do {wave.do}

view wave
view structure
view signals

do {dpram64x32.udo}

run -all

quit -force
