// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Sep  6 16:04:40 2018
// Host        : kasparov running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/PrSD/Intro/Intro.sim/sim_1/synth/timing/xsim/circuito_tb_time_synth.v
// Design      : circuito
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module circuito
   (clk,
    rst,
    instr,
    data_in,
    res);
  input clk;
  input rst;
  input [2:0]instr;
  input [7:0]data_in;
  output [7:0]res;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [2:2]currstate;
  wire [7:0]data_in;
  wire [7:0]data_in_IBUF;
  wire enable;
  wire inst_control_n_0;
  wire inst_control_n_1;
  wire inst_control_n_2;
  wire inst_control_n_3;
  wire inst_control_n_5;
  wire inst_control_n_6;
  wire inst_control_n_7;
  wire inst_control_n_9;
  wire [2:0]instr;
  wire [2:0]instr_IBUF;
  wire [7:0]res;
  wire [7:0]res_OBUF;
  wire rst;
  wire rst_IBUF;

initial begin
 $sdf_annotate("circuito_tb_time_synth.sdf",,,,"tool_control");
end
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF \data_in_IBUF[0]_inst 
       (.I(data_in[0]),
        .O(data_in_IBUF[0]));
  IBUF \data_in_IBUF[1]_inst 
       (.I(data_in[1]),
        .O(data_in_IBUF[1]));
  IBUF \data_in_IBUF[2]_inst 
       (.I(data_in[2]),
        .O(data_in_IBUF[2]));
  IBUF \data_in_IBUF[3]_inst 
       (.I(data_in[3]),
        .O(data_in_IBUF[3]));
  IBUF \data_in_IBUF[4]_inst 
       (.I(data_in[4]),
        .O(data_in_IBUF[4]));
  IBUF \data_in_IBUF[5]_inst 
       (.I(data_in[5]),
        .O(data_in_IBUF[5]));
  IBUF \data_in_IBUF[6]_inst 
       (.I(data_in[6]),
        .O(data_in_IBUF[6]));
  IBUF \data_in_IBUF[7]_inst 
       (.I(data_in[7]),
        .O(data_in_IBUF[7]));
  control inst_control
       (.DI(inst_control_n_9),
        .E(enable),
        .Q(res_OBUF[7:1]),
        .S({inst_control_n_0,inst_control_n_1,inst_control_n_2,inst_control_n_3}),
        .\accum_reg[3] ({inst_control_n_5,inst_control_n_6,inst_control_n_7}),
        .\accum_reg[7] (currstate),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .data_in_IBUF(data_in_IBUF[7:1]),
        .instr_IBUF(instr_IBUF),
        .rst_IBUF(rst_IBUF));
  datapath inst_datapath
       (.DI(inst_control_n_9),
        .E(enable),
        .Q(res_OBUF),
        .S({inst_control_n_0,inst_control_n_1,inst_control_n_2,inst_control_n_3}),
        .SR(rst_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\currstate_reg[1] ({inst_control_n_5,inst_control_n_6,inst_control_n_7}),
        .\currstate_reg[2] (currstate),
        .data_in_IBUF(data_in_IBUF));
  IBUF \instr_IBUF[0]_inst 
       (.I(instr[0]),
        .O(instr_IBUF[0]));
  IBUF \instr_IBUF[1]_inst 
       (.I(instr[1]),
        .O(instr_IBUF[1]));
  IBUF \instr_IBUF[2]_inst 
       (.I(instr[2]),
        .O(instr_IBUF[2]));
  OBUF \res_OBUF[0]_inst 
       (.I(res_OBUF[0]),
        .O(res[0]));
  OBUF \res_OBUF[1]_inst 
       (.I(res_OBUF[1]),
        .O(res[1]));
  OBUF \res_OBUF[2]_inst 
       (.I(res_OBUF[2]),
        .O(res[2]));
  OBUF \res_OBUF[3]_inst 
       (.I(res_OBUF[3]),
        .O(res[3]));
  OBUF \res_OBUF[4]_inst 
       (.I(res_OBUF[4]),
        .O(res[4]));
  OBUF \res_OBUF[5]_inst 
       (.I(res_OBUF[5]),
        .O(res[5]));
  OBUF \res_OBUF[6]_inst 
       (.I(res_OBUF[6]),
        .O(res[6]));
  OBUF \res_OBUF[7]_inst 
       (.I(res_OBUF[7]),
        .O(res[7]));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
endmodule

module control
   (S,
    \accum_reg[7] ,
    \accum_reg[3] ,
    E,
    DI,
    data_in_IBUF,
    Q,
    rst_IBUF,
    instr_IBUF,
    clk_IBUF_BUFG);
  output [3:0]S;
  output [0:0]\accum_reg[7] ;
  output [2:0]\accum_reg[3] ;
  output [0:0]E;
  output [0:0]DI;
  input [6:0]data_in_IBUF;
  input [6:0]Q;
  input rst_IBUF;
  input [2:0]instr_IBUF;
  input clk_IBUF_BUFG;

  wire [0:0]DI;
  wire [0:0]E;
  wire [6:0]Q;
  wire [3:0]S;
  wire [2:0]\accum_reg[3] ;
  wire [0:0]\accum_reg[7] ;
  wire clk_IBUF_BUFG;
  wire [1:0]currstate;
  wire \currstate[0]_i_1_n_0 ;
  wire \currstate[1]_i_1_n_0 ;
  wire \currstate[1]_i_2_n_0 ;
  wire \currstate[2]_i_1_n_0 ;
  wire \currstate[2]_i_2_n_0 ;
  wire [6:0]data_in_IBUF;
  wire [2:0]instr_IBUF;
  wire rst_IBUF;

  LUT4 #(
    .INIT(16'h59A6)) 
    __5_carry__0_i_1
       (.I0(data_in_IBUF[6]),
        .I1(currstate[1]),
        .I2(currstate[0]),
        .I3(Q[6]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h59A6)) 
    __5_carry__0_i_2
       (.I0(data_in_IBUF[5]),
        .I1(currstate[1]),
        .I2(currstate[0]),
        .I3(Q[5]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h59A6)) 
    __5_carry__0_i_3
       (.I0(data_in_IBUF[4]),
        .I1(currstate[1]),
        .I2(currstate[0]),
        .I3(Q[4]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h59A6)) 
    __5_carry__0_i_4
       (.I0(data_in_IBUF[3]),
        .I1(currstate[1]),
        .I2(currstate[0]),
        .I3(Q[3]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h2)) 
    __5_carry_i_1
       (.I0(currstate[1]),
        .I1(currstate[0]),
        .O(DI));
  LUT4 #(
    .INIT(16'h59A6)) 
    __5_carry_i_2
       (.I0(data_in_IBUF[2]),
        .I1(currstate[1]),
        .I2(currstate[0]),
        .I3(Q[2]),
        .O(\accum_reg[3] [2]));
  LUT4 #(
    .INIT(16'h59A6)) 
    __5_carry_i_3
       (.I0(data_in_IBUF[1]),
        .I1(currstate[1]),
        .I2(currstate[0]),
        .I3(Q[1]),
        .O(\accum_reg[3] [1]));
  LUT4 #(
    .INIT(16'h59A6)) 
    __5_carry_i_4
       (.I0(data_in_IBUF[0]),
        .I1(currstate[1]),
        .I2(currstate[0]),
        .I3(Q[0]),
        .O(\accum_reg[3] [0]));
  LUT2 #(
    .INIT(4'hE)) 
    \accum[7]_i_1 
       (.I0(currstate[1]),
        .I1(\accum_reg[7] ),
        .O(E));
  LUT6 #(
    .INIT(64'h00000000FFFFAAAC)) 
    \currstate[0]_i_1 
       (.I0(currstate[0]),
        .I1(instr_IBUF[0]),
        .I2(instr_IBUF[1]),
        .I3(instr_IBUF[2]),
        .I4(E),
        .I5(rst_IBUF),
        .O(\currstate[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \currstate[1]_i_1 
       (.I0(\currstate[1]_i_2_n_0 ),
        .I1(rst_IBUF),
        .O(\currstate[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010100)) 
    \currstate[1]_i_2 
       (.I0(\accum_reg[7] ),
        .I1(currstate[1]),
        .I2(instr_IBUF[2]),
        .I3(instr_IBUF[1]),
        .I4(instr_IBUF[0]),
        .I5(currstate[0]),
        .O(\currstate[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \currstate[2]_i_1 
       (.I0(\currstate[2]_i_2_n_0 ),
        .I1(rst_IBUF),
        .O(\currstate[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \currstate[2]_i_2 
       (.I0(\accum_reg[7] ),
        .I1(currstate[1]),
        .I2(instr_IBUF[2]),
        .I3(instr_IBUF[1]),
        .I4(instr_IBUF[0]),
        .I5(currstate[0]),
        .O(\currstate[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \currstate_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\currstate[0]_i_1_n_0 ),
        .Q(currstate[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \currstate_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\currstate[1]_i_1_n_0 ),
        .Q(currstate[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \currstate_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\currstate[2]_i_1_n_0 ),
        .Q(\accum_reg[7] ),
        .R(1'b0));
endmodule

module datapath
   (Q,
    DI,
    \currstate_reg[1] ,
    S,
    data_in_IBUF,
    SR,
    E,
    clk_IBUF_BUFG,
    \currstate_reg[2] );
  output [7:0]Q;
  input [0:0]DI;
  input [2:0]\currstate_reg[1] ;
  input [3:0]S;
  input [7:0]data_in_IBUF;
  input [0:0]SR;
  input [0:0]E;
  input clk_IBUF_BUFG;
  input [0:0]\currstate_reg[2] ;

  wire [0:0]DI;
  wire [0:0]E;
  wire [7:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire __5_carry__0_n_1;
  wire __5_carry__0_n_2;
  wire __5_carry__0_n_3;
  wire __5_carry_i_5_n_0;
  wire __5_carry_n_0;
  wire __5_carry_n_1;
  wire __5_carry_n_2;
  wire __5_carry_n_3;
  wire [7:0]addsubsg;
  wire clk_IBUF_BUFG;
  wire [2:0]\currstate_reg[1] ;
  wire [0:0]\currstate_reg[2] ;
  wire [7:0]data_in_IBUF;
  wire [7:0]res_alu;
  wire [3:3]NLW___5_carry__0_CO_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 __5_carry
       (.CI(1'b0),
        .CO({__5_carry_n_0,__5_carry_n_1,__5_carry_n_2,__5_carry_n_3}),
        .CYINIT(Q[0]),
        .DI({Q[3:1],DI}),
        .O(addsubsg[3:0]),
        .S({\currstate_reg[1] ,__5_carry_i_5_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 __5_carry__0
       (.CI(__5_carry_n_0),
        .CO({NLW___5_carry__0_CO_UNCONNECTED[3],__5_carry__0_n_1,__5_carry__0_n_2,__5_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Q[6:4]}),
        .O(addsubsg[7:4]),
        .S(S));
  LUT1 #(
    .INIT(2'h2)) 
    __5_carry_i_5
       (.I0(data_in_IBUF[0]),
        .O(__5_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h8F80)) 
    \accum[0]_i_1 
       (.I0(data_in_IBUF[0]),
        .I1(Q[0]),
        .I2(\currstate_reg[2] ),
        .I3(addsubsg[0]),
        .O(res_alu[0]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \accum[1]_i_1 
       (.I0(data_in_IBUF[1]),
        .I1(Q[1]),
        .I2(\currstate_reg[2] ),
        .I3(addsubsg[1]),
        .O(res_alu[1]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \accum[2]_i_1 
       (.I0(data_in_IBUF[2]),
        .I1(Q[2]),
        .I2(\currstate_reg[2] ),
        .I3(addsubsg[2]),
        .O(res_alu[2]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \accum[3]_i_1 
       (.I0(data_in_IBUF[3]),
        .I1(Q[3]),
        .I2(\currstate_reg[2] ),
        .I3(addsubsg[3]),
        .O(res_alu[3]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \accum[4]_i_1 
       (.I0(data_in_IBUF[4]),
        .I1(Q[4]),
        .I2(\currstate_reg[2] ),
        .I3(addsubsg[4]),
        .O(res_alu[4]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \accum[5]_i_1 
       (.I0(data_in_IBUF[5]),
        .I1(Q[5]),
        .I2(\currstate_reg[2] ),
        .I3(addsubsg[5]),
        .O(res_alu[5]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \accum[6]_i_1 
       (.I0(data_in_IBUF[6]),
        .I1(Q[6]),
        .I2(\currstate_reg[2] ),
        .I3(addsubsg[6]),
        .O(res_alu[6]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \accum[7]_i_2 
       (.I0(data_in_IBUF[7]),
        .I1(Q[7]),
        .I2(\currstate_reg[2] ),
        .I3(addsubsg[7]),
        .O(res_alu[7]));
  FDRE #(
    .INIT(1'b0)) 
    \accum_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(res_alu[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \accum_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(res_alu[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \accum_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(res_alu[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \accum_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(res_alu[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \accum_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(res_alu[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \accum_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(res_alu[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \accum_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(res_alu[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \accum_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(res_alu[7]),
        .Q(Q[7]),
        .R(SR));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
