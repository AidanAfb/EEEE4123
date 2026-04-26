onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+dpram128x20 -L xil_defaultlib -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.dpram128x20 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {dpram128x20.udo}

run -all

endsim

quit -force
