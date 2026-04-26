// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Apr 26 19:10:42 2026
// Host        : AIDANALEXAN6AEF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dpram128x20_stub.v
// Design      : dpram128x20
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a15tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_2,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clka, ena, wea, addra, dina, douta, clkb, enb, web, addrb, 
  dinb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,wea[0:0],addra[6:0],dina[19:0],douta[19:0],clkb,enb,web[0:0],addrb[6:0],dinb[19:0],doutb[19:0]" */;
  input clka;
  input ena;
  input [0:0]wea;
  input [6:0]addra;
  input [19:0]dina;
  output [19:0]douta;
  input clkb;
  input enb;
  input [0:0]web;
  input [6:0]addrb;
  input [19:0]dinb;
  output [19:0]doutb;
endmodule
