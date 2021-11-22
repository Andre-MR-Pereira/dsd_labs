// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Wed Nov 17 16:10:39 2021
// Host        : DESKTOP-G74GFK5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {c:/Users/tiago/OneDrive/Desktop/Nova
//               pasta/test_iris/test_iris.gen/sources_1/ip/dist_mem_gen_0/dist_mem_gen_0_stub.v}
// Design      : dist_mem_gen_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2021.1" *)
module dist_mem_gen_0(a, d, clk, we, qspo)
/* synthesis syn_black_box black_box_pad_pin="a[6:0],d[1:0],clk,we,qspo[1:0]" */;
  input [6:0]a;
  input [1:0]d;
  input clk;
  input we;
  output [1:0]qspo;
endmodule
