// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Apr 28 09:29:26 2026
// Host        : AIDANALEXAN6AEF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Mac/Home/Documents/GitHub/EEEE4123/Project/IntMatMulCore/IntMatMulCore.srcs/sources_1/ip/dpram128x20/dpram128x20_stub.v
// Design      : dpram128x20
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a15tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_2,Vivado 2018.3" *)
module dpram128x20(clka, wea, addra, dina, clkb, enb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,wea[0:0],addra[6:0],dina[19:0],clkb,enb,addrb[6:0],doutb[19:0]" */;
  input clka;
  input [0:0]wea;
  input [6:0]addra;
  input [19:0]dina;
  input clkb;
  input enb;
  input [6:0]addrb;
  output [19:0]doutb;
endmodule
