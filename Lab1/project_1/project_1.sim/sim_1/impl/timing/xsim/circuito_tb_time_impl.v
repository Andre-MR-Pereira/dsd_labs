// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Thu Oct 14 15:07:14 2021
// Host        : DESKTOP-G74GFK5 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/tiago/OneDrive/Desktop/Universidade/Mestrado/PSD/Laboratorios/Lab1/project_1/project_1.sim/sim_1/impl/timing/xsim/circuito_tb_time_impl.v
// Design      : fpga_basicIO
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module circuito
   (\register2_reg[16] ,
    \register1_reg[12] ,
    seg_OBUF,
    CLK,
    SR,
    Q,
    instr,
    \seg[4] );
  output [0:0]\register2_reg[16] ;
  output [0:0]\register1_reg[12] ;
  output [6:0]seg_OBUF;
  input CLK;
  input [0:0]SR;
  input [14:0]Q;
  input [3:0]instr;
  input [1:0]\seg[4] ;

  wire CLK;
  wire [14:0]Q;
  wire [0:0]SR;
  wire [2:0]currstate;
  wire inst_control_n_5;
  wire inst_control_n_6;
  wire inst_datapath_n_2;
  wire [3:0]instr;
  wire [0:0]\register1_reg[12] ;
  wire [16:15]register2;
  wire [0:0]\register2_reg[16] ;
  wire [1:0]\seg[4] ;
  wire [6:0]seg_OBUF;

  control inst_control
       (.CLK(CLK),
        .DI(inst_control_n_6),
        .E(inst_control_n_5),
        .Q(currstate),
        .SR(SR),
        .\currstate_reg[1]_0 (Q[13]),
        .instr(instr),
        .register2(register2),
        .\register2_reg[15] (inst_datapath_n_2));
  datapath inst_datapath
       (.A(\register2_reg[16] ),
        .CLK(CLK),
        .DI(inst_control_n_6),
        .E(inst_control_n_5),
        .Q({Q[14],Q[12:0]}),
        .SR(SR),
        .\currstate_reg[0] (inst_datapath_n_2),
        .\register1_reg[12]_0 (\register1_reg[12] ),
        .register2(register2),
        .\register2_reg[16]_0 (currstate),
        .\seg[4] (\seg[4] ),
        .seg_OBUF(seg_OBUF));
endmodule

module clkdiv
   (CLK,
    BUFG_INST3_0,
    clk);
  output CLK;
  output BUFG_INST3_0;
  input clk;

  wire BUFG_INST3_0;
  wire CLK;
  wire I;
  wire clear;
  wire clk;
  wire \cnt[0]_i_3_n_0 ;
  wire \cnt[0]_i_4_n_0 ;
  wire \cnt[0]_i_5_n_0 ;
  wire \cnt[0]_i_6_n_0 ;
  wire \cnt[0]_i_7_n_0 ;
  wire [22:0]cnt_reg;
  wire \cnt_reg[0]_i_2_n_0 ;
  wire \cnt_reg[0]_i_2_n_4 ;
  wire \cnt_reg[0]_i_2_n_5 ;
  wire \cnt_reg[0]_i_2_n_6 ;
  wire \cnt_reg[0]_i_2_n_7 ;
  wire \cnt_reg[12]_i_1_n_0 ;
  wire \cnt_reg[12]_i_1_n_4 ;
  wire \cnt_reg[12]_i_1_n_5 ;
  wire \cnt_reg[12]_i_1_n_6 ;
  wire \cnt_reg[12]_i_1_n_7 ;
  wire \cnt_reg[16]_i_1_n_0 ;
  wire \cnt_reg[16]_i_1_n_4 ;
  wire \cnt_reg[16]_i_1_n_5 ;
  wire \cnt_reg[16]_i_1_n_6 ;
  wire \cnt_reg[16]_i_1_n_7 ;
  wire \cnt_reg[20]_i_1_n_4 ;
  wire \cnt_reg[20]_i_1_n_5 ;
  wire \cnt_reg[20]_i_1_n_6 ;
  wire \cnt_reg[20]_i_1_n_7 ;
  wire \cnt_reg[4]_i_1_n_0 ;
  wire \cnt_reg[4]_i_1_n_4 ;
  wire \cnt_reg[4]_i_1_n_5 ;
  wire \cnt_reg[4]_i_1_n_6 ;
  wire \cnt_reg[4]_i_1_n_7 ;
  wire \cnt_reg[8]_i_1_n_0 ;
  wire \cnt_reg[8]_i_1_n_4 ;
  wire \cnt_reg[8]_i_1_n_5 ;
  wire \cnt_reg[8]_i_1_n_6 ;
  wire \cnt_reg[8]_i_1_n_7 ;
  wire \cnt_reg_n_0_[16] ;
  wire [2:0]\NLW_cnt_reg[0]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_cnt_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_cnt_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_cnt_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_cnt_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_cnt_reg[8]_i_1_CO_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  BUFG BUFG_INST2
       (.I(I),
        .O(CLK));
  (* box_type = "PRIMITIVE" *) 
  BUFG BUFG_INST3
       (.I(\cnt_reg_n_0_[16] ),
        .O(BUFG_INST3_0));
  LUT4 #(
    .INIT(16'h4000)) 
    \cnt[0]_i_1 
       (.I0(\cnt[0]_i_3_n_0 ),
        .I1(\cnt[0]_i_4_n_0 ),
        .I2(\cnt[0]_i_5_n_0 ),
        .I3(\cnt[0]_i_6_n_0 ),
        .O(clear));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFBF)) 
    \cnt[0]_i_3 
       (.I0(cnt_reg[7]),
        .I1(cnt_reg[20]),
        .I2(I),
        .I3(cnt_reg[13]),
        .I4(cnt_reg[8]),
        .I5(cnt_reg[11]),
        .O(\cnt[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \cnt[0]_i_4 
       (.I0(cnt_reg[22]),
        .I1(cnt_reg[18]),
        .I2(cnt_reg[21]),
        .I3(cnt_reg[14]),
        .I4(\cnt_reg_n_0_[16] ),
        .I5(cnt_reg[17]),
        .O(\cnt[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cnt[0]_i_5 
       (.I0(cnt_reg[12]),
        .I1(cnt_reg[15]),
        .I2(cnt_reg[19]),
        .I3(cnt_reg[10]),
        .I4(cnt_reg[6]),
        .I5(cnt_reg[9]),
        .O(\cnt[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cnt[0]_i_6 
       (.I0(cnt_reg[3]),
        .I1(cnt_reg[4]),
        .I2(cnt_reg[5]),
        .I3(cnt_reg[2]),
        .I4(cnt_reg[0]),
        .I5(cnt_reg[1]),
        .O(\cnt[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_7 
       (.I0(cnt_reg[0]),
        .O(\cnt[0]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_2_n_7 ),
        .Q(cnt_reg[0]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \cnt_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\cnt_reg[0]_i_2_n_0 ,\NLW_cnt_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\cnt_reg[0]_i_2_n_4 ,\cnt_reg[0]_i_2_n_5 ,\cnt_reg[0]_i_2_n_6 ,\cnt_reg[0]_i_2_n_7 }),
        .S({cnt_reg[3:1],\cnt[0]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_5 ),
        .Q(cnt_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_4 ),
        .Q(cnt_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[12]_i_1_n_7 ),
        .Q(cnt_reg[12]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \cnt_reg[12]_i_1 
       (.CI(\cnt_reg[8]_i_1_n_0 ),
        .CO({\cnt_reg[12]_i_1_n_0 ,\NLW_cnt_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[12]_i_1_n_4 ,\cnt_reg[12]_i_1_n_5 ,\cnt_reg[12]_i_1_n_6 ,\cnt_reg[12]_i_1_n_7 }),
        .S(cnt_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[12]_i_1_n_6 ),
        .Q(cnt_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[12]_i_1_n_5 ),
        .Q(cnt_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[12]_i_1_n_4 ),
        .Q(cnt_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[16]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[16] ),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \cnt_reg[16]_i_1 
       (.CI(\cnt_reg[12]_i_1_n_0 ),
        .CO({\cnt_reg[16]_i_1_n_0 ,\NLW_cnt_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[16]_i_1_n_4 ,\cnt_reg[16]_i_1_n_5 ,\cnt_reg[16]_i_1_n_6 ,\cnt_reg[16]_i_1_n_7 }),
        .S({cnt_reg[19:17],\cnt_reg_n_0_[16] }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[16]_i_1_n_6 ),
        .Q(cnt_reg[17]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[16]_i_1_n_5 ),
        .Q(cnt_reg[18]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[16]_i_1_n_4 ),
        .Q(cnt_reg[19]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_2_n_6 ),
        .Q(cnt_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[20]_i_1_n_7 ),
        .Q(cnt_reg[20]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \cnt_reg[20]_i_1 
       (.CI(\cnt_reg[16]_i_1_n_0 ),
        .CO(\NLW_cnt_reg[20]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[20]_i_1_n_4 ,\cnt_reg[20]_i_1_n_5 ,\cnt_reg[20]_i_1_n_6 ,\cnt_reg[20]_i_1_n_7 }),
        .S({I,cnt_reg[22:20]}));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[20]_i_1_n_6 ),
        .Q(cnt_reg[21]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[20]_i_1_n_5 ),
        .Q(cnt_reg[22]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[20]_i_1_n_4 ),
        .Q(I),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_2_n_5 ),
        .Q(cnt_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_2_n_4 ),
        .Q(cnt_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_7 ),
        .Q(cnt_reg[4]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \cnt_reg[4]_i_1 
       (.CI(\cnt_reg[0]_i_2_n_0 ),
        .CO({\cnt_reg[4]_i_1_n_0 ,\NLW_cnt_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[4]_i_1_n_4 ,\cnt_reg[4]_i_1_n_5 ,\cnt_reg[4]_i_1_n_6 ,\cnt_reg[4]_i_1_n_7 }),
        .S(cnt_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_6 ),
        .Q(cnt_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_5 ),
        .Q(cnt_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_4 ),
        .Q(cnt_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_7 ),
        .Q(cnt_reg[8]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \cnt_reg[8]_i_1 
       (.CI(\cnt_reg[4]_i_1_n_0 ),
        .CO({\cnt_reg[8]_i_1_n_0 ,\NLW_cnt_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[8]_i_1_n_4 ,\cnt_reg[8]_i_1_n_5 ,\cnt_reg[8]_i_1_n_6 ,\cnt_reg[8]_i_1_n_7 }),
        .S(cnt_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_6 ),
        .Q(cnt_reg[9]),
        .R(clear));
endmodule

module control
   (Q,
    register2,
    E,
    DI,
    \currstate_reg[1]_0 ,
    instr,
    \register2_reg[15] ,
    SR,
    CLK);
  output [2:0]Q;
  output [1:0]register2;
  output [0:0]E;
  output [0:0]DI;
  input [0:0]\currstate_reg[1]_0 ;
  input [3:0]instr;
  input \register2_reg[15] ;
  input [0:0]SR;
  input CLK;

  wire CLK;
  wire [0:0]DI;
  wire [0:0]E;
  wire [2:0]Q;
  wire [0:0]SR;
  wire [3:3]currstate;
  wire currstate0;
  wire \currstate[0]_i_2_n_0 ;
  wire \currstate[1]_i_2_n_0 ;
  wire \currstate[2]_i_2_n_0 ;
  wire \currstate[3]_i_3_n_0 ;
  wire \currstate[3]_i_4_n_0 ;
  wire [0:0]\currstate_reg[1]_0 ;
  wire [3:0]instr;
  wire [3:0]nextstate;
  wire [1:0]register2;
  wire \register2_reg[15] ;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \currstate[0]_i_1 
       (.I0(Q[1]),
        .I1(\currstate[0]_i_2_n_0 ),
        .I2(Q[2]),
        .O(nextstate[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0F0FEFB)) 
    \currstate[0]_i_2 
       (.I0(instr[3]),
        .I1(instr[2]),
        .I2(instr[0]),
        .I3(instr[1]),
        .I4(Q[0]),
        .I5(currstate),
        .O(\currstate[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \currstate[1]_i_1 
       (.I0(Q[1]),
        .I1(\currstate[1]_i_2_n_0 ),
        .I2(currstate),
        .I3(Q[2]),
        .O(nextstate[1]));
  LUT6 #(
    .INIT(64'hBB11BB11BB11BF01)) 
    \currstate[1]_i_2 
       (.I0(Q[0]),
        .I1(\currstate_reg[1]_0 ),
        .I2(instr[2]),
        .I3(instr[1]),
        .I4(instr[0]),
        .I5(instr[3]),
        .O(\currstate[1]_i_2_n_0 ));
  (* \PinAttr:I3:HOLD_DETOUR  = "191" *) 
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \currstate[2]_i_1 
       (.I0(Q[1]),
        .I1(\currstate[2]_i_2_n_0 ),
        .I2(currstate),
        .I3(Q[2]),
        .O(nextstate[2]));
  LUT6 #(
    .INIT(64'hB1B1B1B1B1B4B4B1)) 
    \currstate[2]_i_2 
       (.I0(Q[0]),
        .I1(\currstate_reg[1]_0 ),
        .I2(instr[2]),
        .I3(instr[1]),
        .I4(instr[0]),
        .I5(instr[3]),
        .O(\currstate[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \currstate[3]_i_1 
       (.I0(Q[1]),
        .I1(\currstate[3]_i_3_n_0 ),
        .I2(Q[2]),
        .O(currstate0));
  (* \PinAttr:I3:HOLD_DETOUR  = "191" *) 
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \currstate[3]_i_2 
       (.I0(Q[1]),
        .I1(\currstate[3]_i_4_n_0 ),
        .I2(currstate),
        .I3(Q[2]),
        .O(nextstate[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00010116)) 
    \currstate[3]_i_3 
       (.I0(instr[0]),
        .I1(instr[1]),
        .I2(instr[2]),
        .I3(instr[3]),
        .I4(Q[0]),
        .I5(currstate),
        .O(\currstate[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDCCD88888888)) 
    \currstate[3]_i_4 
       (.I0(Q[0]),
        .I1(instr[3]),
        .I2(instr[0]),
        .I3(instr[1]),
        .I4(instr[2]),
        .I5(\currstate_reg[1]_0 ),
        .O(\currstate[3]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \currstate_reg[0] 
       (.C(CLK),
        .CE(currstate0),
        .D(nextstate[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \currstate_reg[1] 
       (.C(CLK),
        .CE(currstate0),
        .D(nextstate[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \currstate_reg[2] 
       (.C(CLK),
        .CE(currstate0),
        .D(nextstate[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \currstate_reg[3] 
       (.C(CLK),
        .CE(currstate0),
        .D(nextstate[3]),
        .Q(currstate),
        .R(SR));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(DI));
  LUT2 #(
    .INIT(4'h2)) 
    \register1[12]_i_1 
       (.I0(currstate),
        .I1(Q[0]),
        .O(E));
  LUT5 #(
    .INIT(32'hBBBBB888)) 
    \register2[15]_i_1 
       (.I0(\register2_reg[15] ),
        .I1(Q[2]),
        .I2(currstate),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(register2[0]));
  LUT4 #(
    .INIT(16'h5FEA)) 
    \register2[16]_i_2 
       (.I0(Q[2]),
        .I1(currstate),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(register2[1]));
endmodule

module datapath
   (A,
    \register1_reg[12]_0 ,
    \currstate_reg[0] ,
    seg_OBUF,
    E,
    CLK,
    SR,
    Q,
    DI,
    \register2_reg[16]_0 ,
    \seg[4] ,
    register2);
  output [0:0]A;
  output [0:0]\register1_reg[12]_0 ;
  output \currstate_reg[0] ;
  output [6:0]seg_OBUF;
  input [0:0]E;
  input CLK;
  input [0:0]SR;
  input [13:0]Q;
  input [0:0]DI;
  input [2:0]\register2_reg[16]_0 ;
  input [1:0]\seg[4] ;
  input [1:0]register2;

  wire [0:0]A;
  wire CLK;
  wire [0:0]DI;
  wire [0:0]E;
  wire [13:0]Q;
  wire [0:0]SR;
  wire \_inferred__0/i__carry__0_n_0 ;
  wire \_inferred__0/i__carry__1_n_0 ;
  wire \_inferred__0/i__carry__2_n_0 ;
  wire \_inferred__0/i__carry_n_0 ;
  wire [16:0]addsubsg;
  wire \currstate_reg[0] ;
  wire ex_mulsg_n_100;
  wire ex_mulsg_n_101;
  wire ex_mulsg_n_102;
  wire ex_mulsg_n_103;
  wire ex_mulsg_n_104;
  wire ex_mulsg_n_105;
  wire ex_mulsg_n_89;
  wire ex_mulsg_n_90;
  wire ex_mulsg_n_91;
  wire ex_mulsg_n_92;
  wire ex_mulsg_n_93;
  wire ex_mulsg_n_94;
  wire ex_mulsg_n_95;
  wire ex_mulsg_n_96;
  wire ex_mulsg_n_97;
  wire ex_mulsg_n_98;
  wire ex_mulsg_n_99;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry__3_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire [11:0]reg1;
  wire [15:0]reg2;
  wire [0:0]\register1_reg[12]_0 ;
  wire [1:0]register2;
  wire \register2[0]_i_2_n_0 ;
  wire \register2[0]_i_4_n_0 ;
  wire \register2[0]_i_5_n_0 ;
  wire \register2[10]_i_2_n_0 ;
  wire \register2[10]_i_4_n_0 ;
  wire \register2[10]_i_5_n_0 ;
  wire \register2[11]_i_2_n_0 ;
  wire \register2[11]_i_4_n_0 ;
  wire \register2[11]_i_5_n_0 ;
  wire \register2[12]_i_2_n_0 ;
  wire \register2[12]_i_3_n_0 ;
  wire \register2[12]_i_4_n_0 ;
  wire \register2[12]_i_5_n_0 ;
  wire \register2[12]_i_6_n_0 ;
  wire \register2[13]_i_2_n_0 ;
  wire \register2[13]_i_3_n_0 ;
  wire \register2[14]_i_2_n_0 ;
  wire \register2[14]_i_3_n_0 ;
  wire \register2[15]_i_4_n_0 ;
  wire \register2[16]_i_1_n_0 ;
  wire \register2[16]_i_3_n_0 ;
  wire \register2[16]_i_4_n_0 ;
  wire \register2[1]_i_2_n_0 ;
  wire \register2[1]_i_4_n_0 ;
  wire \register2[1]_i_5_n_0 ;
  wire \register2[2]_i_2_n_0 ;
  wire \register2[2]_i_4_n_0 ;
  wire \register2[2]_i_5_n_0 ;
  wire \register2[3]_i_2_n_0 ;
  wire \register2[3]_i_4_n_0 ;
  wire \register2[3]_i_5_n_0 ;
  wire \register2[4]_i_2_n_0 ;
  wire \register2[4]_i_4_n_0 ;
  wire \register2[4]_i_5_n_0 ;
  wire \register2[5]_i_2_n_0 ;
  wire \register2[5]_i_4_n_0 ;
  wire \register2[5]_i_5_n_0 ;
  wire \register2[6]_i_2_n_0 ;
  wire \register2[6]_i_4_n_0 ;
  wire \register2[6]_i_5_n_0 ;
  wire \register2[7]_i_2_n_0 ;
  wire \register2[7]_i_4_n_0 ;
  wire \register2[7]_i_5_n_0 ;
  wire \register2[8]_i_2_n_0 ;
  wire \register2[8]_i_4_n_0 ;
  wire \register2[8]_i_5_n_0 ;
  wire \register2[9]_i_2_n_0 ;
  wire \register2[9]_i_4_n_0 ;
  wire \register2[9]_i_5_n_0 ;
  wire \register2_reg[0]_i_3_n_0 ;
  wire \register2_reg[10]_i_3_n_0 ;
  wire \register2_reg[11]_i_3_n_0 ;
  wire [2:0]\register2_reg[16]_0 ;
  wire \register2_reg[1]_i_3_n_0 ;
  wire \register2_reg[2]_i_3_n_0 ;
  wire \register2_reg[3]_i_3_n_0 ;
  wire \register2_reg[4]_i_3_n_0 ;
  wire \register2_reg[5]_i_3_n_0 ;
  wire \register2_reg[6]_i_3_n_0 ;
  wire \register2_reg[7]_i_3_n_0 ;
  wire \register2_reg[8]_i_3_n_0 ;
  wire \register2_reg[9]_i_3_n_0 ;
  wire [15:0]res_mul;
  wire [1:0]\seg[4] ;
  wire [6:0]seg_OBUF;
  wire \seg_OBUF[0]_inst_i_2_n_0 ;
  wire \seg_OBUF[0]_inst_i_3_n_0 ;
  wire \seg_OBUF[0]_inst_i_4_n_0 ;
  wire \seg_OBUF[0]_inst_i_5_n_0 ;
  wire \seg_OBUF[0]_inst_i_6_n_0 ;
  wire \seg_OBUF[0]_inst_i_7_n_0 ;
  wire \seg_OBUF[0]_inst_i_8_n_0 ;
  wire \seg_OBUF[1]_inst_i_2_n_0 ;
  wire \seg_OBUF[1]_inst_i_3_n_0 ;
  wire \seg_OBUF[1]_inst_i_4_n_0 ;
  wire \seg_OBUF[1]_inst_i_5_n_0 ;
  wire \seg_OBUF[1]_inst_i_6_n_0 ;
  wire \seg_OBUF[1]_inst_i_7_n_0 ;
  wire \seg_OBUF[1]_inst_i_8_n_0 ;
  wire \seg_OBUF[2]_inst_i_2_n_0 ;
  wire \seg_OBUF[2]_inst_i_3_n_0 ;
  wire \seg_OBUF[2]_inst_i_4_n_0 ;
  wire \seg_OBUF[2]_inst_i_5_n_0 ;
  wire \seg_OBUF[2]_inst_i_6_n_0 ;
  wire \seg_OBUF[2]_inst_i_7_n_0 ;
  wire \seg_OBUF[2]_inst_i_8_n_0 ;
  wire \seg_OBUF[3]_inst_i_2_n_0 ;
  wire \seg_OBUF[3]_inst_i_3_n_0 ;
  wire \seg_OBUF[3]_inst_i_4_n_0 ;
  wire \seg_OBUF[3]_inst_i_5_n_0 ;
  wire \seg_OBUF[3]_inst_i_6_n_0 ;
  wire \seg_OBUF[3]_inst_i_7_n_0 ;
  wire \seg_OBUF[3]_inst_i_8_n_0 ;
  wire \seg_OBUF[4]_inst_i_2_n_0 ;
  wire \seg_OBUF[4]_inst_i_3_n_0 ;
  wire \seg_OBUF[4]_inst_i_4_n_0 ;
  wire \seg_OBUF[4]_inst_i_5_n_0 ;
  wire \seg_OBUF[4]_inst_i_6_n_0 ;
  wire \seg_OBUF[4]_inst_i_7_n_0 ;
  wire \seg_OBUF[4]_inst_i_8_n_0 ;
  wire \seg_OBUF[5]_inst_i_2_n_0 ;
  wire \seg_OBUF[5]_inst_i_3_n_0 ;
  wire \seg_OBUF[5]_inst_i_4_n_0 ;
  wire \seg_OBUF[5]_inst_i_5_n_0 ;
  wire \seg_OBUF[5]_inst_i_6_n_0 ;
  wire \seg_OBUF[5]_inst_i_7_n_0 ;
  wire \seg_OBUF[5]_inst_i_8_n_0 ;
  wire \seg_OBUF[6]_inst_i_2_n_0 ;
  wire \seg_OBUF[6]_inst_i_3_n_0 ;
  wire \seg_OBUF[6]_inst_i_4_n_0 ;
  wire \seg_OBUF[6]_inst_i_5_n_0 ;
  wire \seg_OBUF[6]_inst_i_6_n_0 ;
  wire \seg_OBUF[6]_inst_i_7_n_0 ;
  wire \seg_OBUF[6]_inst_i_8_n_0 ;
  wire [2:0]\NLW__inferred__0/i__carry_CO_UNCONNECTED ;
  wire [2:0]\NLW__inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [2:0]\NLW__inferred__0/i__carry__1_CO_UNCONNECTED ;
  wire [2:0]\NLW__inferred__0/i__carry__2_CO_UNCONNECTED ;
  wire [3:0]\NLW__inferred__0/i__carry__3_CO_UNCONNECTED ;
  wire [3:1]\NLW__inferred__0/i__carry__3_O_UNCONNECTED ;
  wire NLW_ex_mulsg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_ex_mulsg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_ex_mulsg_OVERFLOW_UNCONNECTED;
  wire NLW_ex_mulsg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_ex_mulsg_PATTERNDETECT_UNCONNECTED;
  wire NLW_ex_mulsg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_ex_mulsg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_ex_mulsg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_ex_mulsg_CARRYOUT_UNCONNECTED;
  wire [47:17]NLW_ex_mulsg_P_UNCONNECTED;
  wire [47:0]NLW_ex_mulsg_PCOUT_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "RETARGET SWEEP" *) 
  CARRY4 \_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__0/i__carry_n_0 ,\NLW__inferred__0/i__carry_CO_UNCONNECTED [2:0]}),
        .CYINIT(reg2[0]),
        .DI({reg2[3:1],DI}),
        .O(addsubsg[3:0]),
        .S({i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0,reg1[0]}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \_inferred__0/i__carry__0 
       (.CI(\_inferred__0/i__carry_n_0 ),
        .CO({\_inferred__0/i__carry__0_n_0 ,\NLW__inferred__0/i__carry__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(reg2[7:4]),
        .O(addsubsg[7:4]),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \_inferred__0/i__carry__1 
       (.CI(\_inferred__0/i__carry__0_n_0 ),
        .CO({\_inferred__0/i__carry__1_n_0 ,\NLW__inferred__0/i__carry__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(reg2[11:8]),
        .O(addsubsg[11:8]),
        .S({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \_inferred__0/i__carry__2 
       (.CI(\_inferred__0/i__carry__1_n_0 ),
        .CO({\_inferred__0/i__carry__2_n_0 ,\NLW__inferred__0/i__carry__2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(reg2[15:12]),
        .O(addsubsg[15:12]),
        .S({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__0/i__carry__3 
       (.CI(\_inferred__0/i__carry__2_n_0 ),
        .CO(\NLW__inferred__0/i__carry__3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW__inferred__0/i__carry__3_O_UNCONNECTED [3:1],addsubsg[16]}),
        .S({1'b0,1'b0,1'b0,i__carry__3_i_1_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    ex_mulsg
       (.A({A,A,A,A,A,A,A,A,A,A,A,A,A,A,reg2}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_ex_mulsg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({Q[12],Q[12],Q[12],Q[12],Q[12],Q[12:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_ex_mulsg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_ex_mulsg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_ex_mulsg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(E),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(CLK),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_ex_mulsg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_ex_mulsg_OVERFLOW_UNCONNECTED),
        .P({NLW_ex_mulsg_P_UNCONNECTED[47:17],ex_mulsg_n_89,ex_mulsg_n_90,ex_mulsg_n_91,ex_mulsg_n_92,ex_mulsg_n_93,ex_mulsg_n_94,ex_mulsg_n_95,ex_mulsg_n_96,ex_mulsg_n_97,ex_mulsg_n_98,ex_mulsg_n_99,ex_mulsg_n_100,ex_mulsg_n_101,ex_mulsg_n_102,ex_mulsg_n_103,ex_mulsg_n_104,ex_mulsg_n_105}),
        .PATTERNBDETECT(NLW_ex_mulsg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_ex_mulsg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_ex_mulsg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(SR),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_ex_mulsg_UNDERFLOW_UNCONNECTED));
  LUT4 #(
    .INIT(16'h59A6)) 
    i__carry__0_i_1
       (.I0(reg1[7]),
        .I1(\register2_reg[16]_0 [1]),
        .I2(\register2_reg[16]_0 [0]),
        .I3(reg2[7]),
        .O(i__carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h59A6)) 
    i__carry__0_i_2
       (.I0(reg1[6]),
        .I1(\register2_reg[16]_0 [1]),
        .I2(\register2_reg[16]_0 [0]),
        .I3(reg2[6]),
        .O(i__carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h59A6)) 
    i__carry__0_i_3
       (.I0(reg1[5]),
        .I1(\register2_reg[16]_0 [1]),
        .I2(\register2_reg[16]_0 [0]),
        .I3(reg2[5]),
        .O(i__carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h59A6)) 
    i__carry__0_i_4
       (.I0(reg1[4]),
        .I1(\register2_reg[16]_0 [1]),
        .I2(\register2_reg[16]_0 [0]),
        .I3(reg2[4]),
        .O(i__carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h59A6)) 
    i__carry__1_i_1
       (.I0(reg1[11]),
        .I1(\register2_reg[16]_0 [1]),
        .I2(\register2_reg[16]_0 [0]),
        .I3(reg2[11]),
        .O(i__carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h59A6)) 
    i__carry__1_i_2
       (.I0(reg1[10]),
        .I1(\register2_reg[16]_0 [1]),
        .I2(\register2_reg[16]_0 [0]),
        .I3(reg2[10]),
        .O(i__carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h59A6)) 
    i__carry__1_i_3
       (.I0(reg1[9]),
        .I1(\register2_reg[16]_0 [1]),
        .I2(\register2_reg[16]_0 [0]),
        .I3(reg2[9]),
        .O(i__carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h59A6)) 
    i__carry__1_i_4
       (.I0(reg1[8]),
        .I1(\register2_reg[16]_0 [1]),
        .I2(\register2_reg[16]_0 [0]),
        .I3(reg2[8]),
        .O(i__carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h59A6)) 
    i__carry__2_i_1
       (.I0(\register1_reg[12]_0 ),
        .I1(\register2_reg[16]_0 [1]),
        .I2(\register2_reg[16]_0 [0]),
        .I3(reg2[15]),
        .O(i__carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h59A6)) 
    i__carry__2_i_2
       (.I0(\register1_reg[12]_0 ),
        .I1(\register2_reg[16]_0 [1]),
        .I2(\register2_reg[16]_0 [0]),
        .I3(reg2[14]),
        .O(i__carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h59A6)) 
    i__carry__2_i_3
       (.I0(\register1_reg[12]_0 ),
        .I1(\register2_reg[16]_0 [1]),
        .I2(\register2_reg[16]_0 [0]),
        .I3(reg2[13]),
        .O(i__carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h59A6)) 
    i__carry__2_i_4
       (.I0(\register1_reg[12]_0 ),
        .I1(\register2_reg[16]_0 [1]),
        .I2(\register2_reg[16]_0 [0]),
        .I3(reg2[12]),
        .O(i__carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h6696)) 
    i__carry__3_i_1
       (.I0(A),
        .I1(\register1_reg[12]_0 ),
        .I2(\register2_reg[16]_0 [1]),
        .I3(\register2_reg[16]_0 [0]),
        .O(i__carry__3_i_1_n_0));
  LUT4 #(
    .INIT(16'h59A6)) 
    i__carry_i_2
       (.I0(reg1[3]),
        .I1(\register2_reg[16]_0 [1]),
        .I2(\register2_reg[16]_0 [0]),
        .I3(reg2[3]),
        .O(i__carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h59A6)) 
    i__carry_i_3
       (.I0(reg1[2]),
        .I1(\register2_reg[16]_0 [1]),
        .I2(\register2_reg[16]_0 [0]),
        .I3(reg2[2]),
        .O(i__carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h59A6)) 
    i__carry_i_4
       (.I0(reg1[1]),
        .I1(\register2_reg[16]_0 [1]),
        .I2(\register2_reg[16]_0 [0]),
        .I3(reg2[1]),
        .O(i__carry_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \register1_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(Q[0]),
        .Q(reg1[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \register1_reg[10] 
       (.C(CLK),
        .CE(E),
        .D(Q[10]),
        .Q(reg1[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \register1_reg[11] 
       (.C(CLK),
        .CE(E),
        .D(Q[11]),
        .Q(reg1[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \register1_reg[12] 
       (.C(CLK),
        .CE(E),
        .D(Q[12]),
        .Q(\register1_reg[12]_0 ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \register1_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(Q[1]),
        .Q(reg1[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \register1_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(Q[2]),
        .Q(reg1[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \register1_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(Q[3]),
        .Q(reg1[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \register1_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(Q[4]),
        .Q(reg1[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \register1_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(Q[5]),
        .Q(reg1[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \register1_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(Q[6]),
        .Q(reg1[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \register1_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(Q[7]),
        .Q(reg1[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \register1_reg[8] 
       (.C(CLK),
        .CE(E),
        .D(Q[8]),
        .Q(reg1[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \register1_reg[9] 
       (.C(CLK),
        .CE(E),
        .D(Q[9]),
        .Q(reg1[9]),
        .R(SR));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \register2[0]_i_1 
       (.I0(\register2[0]_i_2_n_0 ),
        .I1(\register2_reg[16]_0 [2]),
        .I2(addsubsg[0]),
        .I3(\register2_reg[16]_0 [1]),
        .I4(Q[0]),
        .O(res_mul[0]));
  LUT6 #(
    .INIT(64'h8BBB333F8BBB000C)) 
    \register2[0]_i_2 
       (.I0(\register2_reg[0]_i_3_n_0 ),
        .I1(\register2_reg[16]_0 [1]),
        .I2(reg2[0]),
        .I3(reg1[0]),
        .I4(\register2_reg[16]_0 [0]),
        .I5(ex_mulsg_n_105),
        .O(\register2[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \register2[0]_i_4 
       (.I0(reg2[6]),
        .I1(reg2[2]),
        .I2(reg1[1]),
        .I3(reg2[4]),
        .I4(reg1[2]),
        .I5(reg2[7]),
        .O(\register2[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \register2[0]_i_5 
       (.I0(reg2[7]),
        .I1(reg2[3]),
        .I2(reg1[1]),
        .I3(reg2[5]),
        .I4(reg1[2]),
        .I5(reg2[1]),
        .O(\register2[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \register2[10]_i_1 
       (.I0(\register2[10]_i_2_n_0 ),
        .I1(\register2_reg[16]_0 [2]),
        .I2(addsubsg[10]),
        .I3(\register2_reg[16]_0 [1]),
        .I4(Q[10]),
        .O(res_mul[10]));
  LUT6 #(
    .INIT(64'h8BBB333F8BBB000C)) 
    \register2[10]_i_2 
       (.I0(\register2_reg[10]_i_3_n_0 ),
        .I1(\register2_reg[16]_0 [1]),
        .I2(reg2[10]),
        .I3(reg1[10]),
        .I4(\register2_reg[16]_0 [0]),
        .I5(ex_mulsg_n_95),
        .O(\register2[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \register2[10]_i_4 
       (.I0(reg2[12]),
        .I1(reg1[1]),
        .I2(reg2[14]),
        .I3(reg1[2]),
        .I4(A),
        .O(\register2[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \register2[10]_i_5 
       (.I0(A),
        .I1(reg2[13]),
        .I2(reg1[1]),
        .I3(reg2[15]),
        .I4(reg1[2]),
        .I5(reg2[11]),
        .O(\register2[10]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \register2[11]_i_1 
       (.I0(\register2[11]_i_2_n_0 ),
        .I1(\register2_reg[16]_0 [2]),
        .I2(addsubsg[11]),
        .I3(\register2_reg[16]_0 [1]),
        .I4(Q[11]),
        .O(res_mul[11]));
  LUT6 #(
    .INIT(64'h8BBB333F8BBB000C)) 
    \register2[11]_i_2 
       (.I0(\register2_reg[11]_i_3_n_0 ),
        .I1(\register2_reg[16]_0 [1]),
        .I2(reg2[11]),
        .I3(reg1[11]),
        .I4(\register2_reg[16]_0 [0]),
        .I5(ex_mulsg_n_94),
        .O(\register2[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \register2[11]_i_4 
       (.I0(reg2[13]),
        .I1(reg1[1]),
        .I2(reg2[15]),
        .I3(reg1[2]),
        .I4(A),
        .O(\register2[11]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \register2[11]_i_5 
       (.I0(reg2[14]),
        .I1(reg1[1]),
        .I2(A),
        .I3(reg1[2]),
        .I4(reg2[12]),
        .O(\register2[11]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \register2[12]_i_1 
       (.I0(\register2[12]_i_2_n_0 ),
        .I1(\register2_reg[16]_0 [2]),
        .I2(addsubsg[12]),
        .I3(\register2_reg[16]_0 [1]),
        .I4(Q[12]),
        .O(res_mul[12]));
  LUT6 #(
    .INIT(64'h8BBB333F8BBB000C)) 
    \register2[12]_i_2 
       (.I0(\register2[12]_i_3_n_0 ),
        .I1(\register2_reg[16]_0 [1]),
        .I2(\register1_reg[12]_0 ),
        .I3(reg2[12]),
        .I4(\register2_reg[16]_0 [0]),
        .I5(ex_mulsg_n_93),
        .O(\register2[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \register2[12]_i_3 
       (.I0(\register2[12]_i_4_n_0 ),
        .I1(\register2[12]_i_5_n_0 ),
        .I2(reg1[0]),
        .I3(\register2[12]_i_6_n_0 ),
        .I4(reg1[1]),
        .I5(A),
        .O(\register2[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \register2[12]_i_4 
       (.I0(A),
        .I1(reg1[2]),
        .I2(reg2[15]),
        .O(\register2[12]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \register2[12]_i_5 
       (.I0(A),
        .I1(reg1[2]),
        .I2(reg2[13]),
        .O(\register2[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \register2[12]_i_6 
       (.I0(A),
        .I1(reg1[2]),
        .I2(reg2[14]),
        .O(\register2[12]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \register2[13]_i_1 
       (.I0(\register2[13]_i_2_n_0 ),
        .I1(\register2_reg[16]_0 [2]),
        .I2(addsubsg[13]),
        .I3(\register2_reg[16]_0 [1]),
        .I4(Q[12]),
        .O(res_mul[13]));
  LUT6 #(
    .INIT(64'h8BBB333F8BBB000C)) 
    \register2[13]_i_2 
       (.I0(\register2[13]_i_3_n_0 ),
        .I1(\register2_reg[16]_0 [1]),
        .I2(\register1_reg[12]_0 ),
        .I3(reg2[13]),
        .I4(\register2_reg[16]_0 [0]),
        .I5(ex_mulsg_n_92),
        .O(\register2[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCFBFB03000808)) 
    \register2[13]_i_3 
       (.I0(reg2[14]),
        .I1(reg1[0]),
        .I2(reg1[2]),
        .I3(reg2[15]),
        .I4(reg1[1]),
        .I5(A),
        .O(\register2[13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \register2[14]_i_1 
       (.I0(\register2[14]_i_2_n_0 ),
        .I1(\register2_reg[16]_0 [2]),
        .I2(addsubsg[14]),
        .I3(\register2_reg[16]_0 [1]),
        .I4(Q[12]),
        .O(res_mul[14]));
  LUT6 #(
    .INIT(64'h8BBB333F8BBB000C)) 
    \register2[14]_i_2 
       (.I0(\register2[14]_i_3_n_0 ),
        .I1(\register2_reg[16]_0 [1]),
        .I2(\register1_reg[12]_0 ),
        .I3(reg2[14]),
        .I4(\register2_reg[16]_0 [0]),
        .I5(ex_mulsg_n_91),
        .O(\register2[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \register2[14]_i_3 
       (.I0(reg1[1]),
        .I1(reg1[2]),
        .I2(reg2[15]),
        .I3(reg1[0]),
        .I4(A),
        .O(\register2[14]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \register2[15]_i_2 
       (.I0(\register2[15]_i_4_n_0 ),
        .I1(\register2_reg[16]_0 [2]),
        .I2(addsubsg[15]),
        .I3(\register2_reg[16]_0 [1]),
        .I4(Q[12]),
        .O(res_mul[15]));
  LUT5 #(
    .INIT(32'hFFFDFFFF)) 
    \register2[15]_i_3 
       (.I0(\register2_reg[16]_0 [0]),
        .I1(reg1[1]),
        .I2(reg1[2]),
        .I3(reg1[0]),
        .I4(\register2_reg[16]_0 [1]),
        .O(\currstate_reg[0] ));
  LUT6 #(
    .INIT(64'h8BBB333F8BBB000C)) 
    \register2[15]_i_4 
       (.I0(A),
        .I1(\register2_reg[16]_0 [1]),
        .I2(\register1_reg[12]_0 ),
        .I3(reg2[15]),
        .I4(\register2_reg[16]_0 [0]),
        .I5(ex_mulsg_n_90),
        .O(\register2[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \register2[16]_i_1 
       (.I0(A),
        .I1(register2[1]),
        .I2(\register2[16]_i_3_n_0 ),
        .I3(\register2_reg[16]_0 [2]),
        .I4(\register2[16]_i_4_n_0 ),
        .I5(SR),
        .O(\register2[16]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \register2[16]_i_3 
       (.I0(addsubsg[16]),
        .I1(\register2_reg[16]_0 [1]),
        .I2(Q[12]),
        .O(\register2[16]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h17571702)) 
    \register2[16]_i_4 
       (.I0(\register2_reg[16]_0 [1]),
        .I1(A),
        .I2(\register1_reg[12]_0 ),
        .I3(\register2_reg[16]_0 [0]),
        .I4(ex_mulsg_n_89),
        .O(\register2[16]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \register2[1]_i_1 
       (.I0(\register2[1]_i_2_n_0 ),
        .I1(\register2_reg[16]_0 [2]),
        .I2(addsubsg[1]),
        .I3(\register2_reg[16]_0 [1]),
        .I4(Q[1]),
        .O(res_mul[1]));
  LUT6 #(
    .INIT(64'h8BBB333F8BBB000C)) 
    \register2[1]_i_2 
       (.I0(\register2_reg[1]_i_3_n_0 ),
        .I1(\register2_reg[16]_0 [1]),
        .I2(reg2[1]),
        .I3(reg1[1]),
        .I4(\register2_reg[16]_0 [0]),
        .I5(ex_mulsg_n_104),
        .O(\register2[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \register2[1]_i_4 
       (.I0(reg2[7]),
        .I1(reg2[3]),
        .I2(reg1[1]),
        .I3(reg2[5]),
        .I4(reg1[2]),
        .I5(reg2[8]),
        .O(\register2[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \register2[1]_i_5 
       (.I0(reg2[8]),
        .I1(reg2[4]),
        .I2(reg1[1]),
        .I3(reg2[6]),
        .I4(reg1[2]),
        .I5(reg2[2]),
        .O(\register2[1]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \register2[2]_i_1 
       (.I0(\register2[2]_i_2_n_0 ),
        .I1(\register2_reg[16]_0 [2]),
        .I2(addsubsg[2]),
        .I3(\register2_reg[16]_0 [1]),
        .I4(Q[2]),
        .O(res_mul[2]));
  LUT6 #(
    .INIT(64'h8BBB333F8BBB000C)) 
    \register2[2]_i_2 
       (.I0(\register2_reg[2]_i_3_n_0 ),
        .I1(\register2_reg[16]_0 [1]),
        .I2(reg2[2]),
        .I3(reg1[2]),
        .I4(\register2_reg[16]_0 [0]),
        .I5(ex_mulsg_n_103),
        .O(\register2[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \register2[2]_i_4 
       (.I0(reg2[8]),
        .I1(reg2[4]),
        .I2(reg1[1]),
        .I3(reg2[6]),
        .I4(reg1[2]),
        .I5(reg2[9]),
        .O(\register2[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \register2[2]_i_5 
       (.I0(reg2[9]),
        .I1(reg2[5]),
        .I2(reg1[1]),
        .I3(reg2[7]),
        .I4(reg1[2]),
        .I5(reg2[3]),
        .O(\register2[2]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \register2[3]_i_1 
       (.I0(\register2[3]_i_2_n_0 ),
        .I1(\register2_reg[16]_0 [2]),
        .I2(addsubsg[3]),
        .I3(\register2_reg[16]_0 [1]),
        .I4(Q[3]),
        .O(res_mul[3]));
  LUT6 #(
    .INIT(64'h8BBB333F8BBB000C)) 
    \register2[3]_i_2 
       (.I0(\register2_reg[3]_i_3_n_0 ),
        .I1(\register2_reg[16]_0 [1]),
        .I2(reg2[3]),
        .I3(reg1[3]),
        .I4(\register2_reg[16]_0 [0]),
        .I5(ex_mulsg_n_102),
        .O(\register2[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \register2[3]_i_4 
       (.I0(reg2[9]),
        .I1(reg2[5]),
        .I2(reg1[1]),
        .I3(reg2[7]),
        .I4(reg1[2]),
        .I5(reg2[10]),
        .O(\register2[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \register2[3]_i_5 
       (.I0(reg2[10]),
        .I1(reg2[6]),
        .I2(reg1[1]),
        .I3(reg2[8]),
        .I4(reg1[2]),
        .I5(reg2[4]),
        .O(\register2[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \register2[4]_i_1 
       (.I0(\register2[4]_i_2_n_0 ),
        .I1(\register2_reg[16]_0 [2]),
        .I2(addsubsg[4]),
        .I3(\register2_reg[16]_0 [1]),
        .I4(Q[4]),
        .O(res_mul[4]));
  LUT6 #(
    .INIT(64'h8BBB333F8BBB000C)) 
    \register2[4]_i_2 
       (.I0(\register2_reg[4]_i_3_n_0 ),
        .I1(\register2_reg[16]_0 [1]),
        .I2(reg2[4]),
        .I3(reg1[4]),
        .I4(\register2_reg[16]_0 [0]),
        .I5(ex_mulsg_n_101),
        .O(\register2[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \register2[4]_i_4 
       (.I0(reg2[10]),
        .I1(reg2[6]),
        .I2(reg1[1]),
        .I3(reg2[8]),
        .I4(reg1[2]),
        .I5(reg2[11]),
        .O(\register2[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \register2[4]_i_5 
       (.I0(reg2[11]),
        .I1(reg2[7]),
        .I2(reg1[1]),
        .I3(reg2[9]),
        .I4(reg1[2]),
        .I5(reg2[5]),
        .O(\register2[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \register2[5]_i_1 
       (.I0(\register2[5]_i_2_n_0 ),
        .I1(\register2_reg[16]_0 [2]),
        .I2(addsubsg[5]),
        .I3(\register2_reg[16]_0 [1]),
        .I4(Q[5]),
        .O(res_mul[5]));
  LUT6 #(
    .INIT(64'h8BBB333F8BBB000C)) 
    \register2[5]_i_2 
       (.I0(\register2_reg[5]_i_3_n_0 ),
        .I1(\register2_reg[16]_0 [1]),
        .I2(reg2[5]),
        .I3(reg1[5]),
        .I4(\register2_reg[16]_0 [0]),
        .I5(ex_mulsg_n_100),
        .O(\register2[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \register2[5]_i_4 
       (.I0(reg2[11]),
        .I1(reg2[7]),
        .I2(reg1[1]),
        .I3(reg2[9]),
        .I4(reg1[2]),
        .I5(reg2[12]),
        .O(\register2[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \register2[5]_i_5 
       (.I0(reg2[12]),
        .I1(reg2[8]),
        .I2(reg1[1]),
        .I3(reg2[10]),
        .I4(reg1[2]),
        .I5(reg2[6]),
        .O(\register2[5]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \register2[6]_i_1 
       (.I0(\register2[6]_i_2_n_0 ),
        .I1(\register2_reg[16]_0 [2]),
        .I2(addsubsg[6]),
        .I3(\register2_reg[16]_0 [1]),
        .I4(Q[6]),
        .O(res_mul[6]));
  LUT6 #(
    .INIT(64'h8BBB333F8BBB000C)) 
    \register2[6]_i_2 
       (.I0(\register2_reg[6]_i_3_n_0 ),
        .I1(\register2_reg[16]_0 [1]),
        .I2(reg2[6]),
        .I3(reg1[6]),
        .I4(\register2_reg[16]_0 [0]),
        .I5(ex_mulsg_n_99),
        .O(\register2[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \register2[6]_i_4 
       (.I0(reg2[12]),
        .I1(reg2[8]),
        .I2(reg1[1]),
        .I3(reg2[10]),
        .I4(reg1[2]),
        .I5(reg2[13]),
        .O(\register2[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \register2[6]_i_5 
       (.I0(reg2[13]),
        .I1(reg2[9]),
        .I2(reg1[1]),
        .I3(reg2[11]),
        .I4(reg1[2]),
        .I5(reg2[7]),
        .O(\register2[6]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \register2[7]_i_1 
       (.I0(\register2[7]_i_2_n_0 ),
        .I1(\register2_reg[16]_0 [2]),
        .I2(addsubsg[7]),
        .I3(\register2_reg[16]_0 [1]),
        .I4(Q[7]),
        .O(res_mul[7]));
  LUT6 #(
    .INIT(64'h8BBB333F8BBB000C)) 
    \register2[7]_i_2 
       (.I0(\register2_reg[7]_i_3_n_0 ),
        .I1(\register2_reg[16]_0 [1]),
        .I2(reg2[7]),
        .I3(reg1[7]),
        .I4(\register2_reg[16]_0 [0]),
        .I5(ex_mulsg_n_98),
        .O(\register2[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \register2[7]_i_4 
       (.I0(reg2[13]),
        .I1(reg2[9]),
        .I2(reg1[1]),
        .I3(reg2[11]),
        .I4(reg1[2]),
        .I5(reg2[14]),
        .O(\register2[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \register2[7]_i_5 
       (.I0(reg2[14]),
        .I1(reg2[10]),
        .I2(reg1[1]),
        .I3(reg2[12]),
        .I4(reg1[2]),
        .I5(reg2[8]),
        .O(\register2[7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \register2[8]_i_1 
       (.I0(\register2[8]_i_2_n_0 ),
        .I1(\register2_reg[16]_0 [2]),
        .I2(addsubsg[8]),
        .I3(\register2_reg[16]_0 [1]),
        .I4(Q[8]),
        .O(res_mul[8]));
  LUT6 #(
    .INIT(64'h8BBB333F8BBB000C)) 
    \register2[8]_i_2 
       (.I0(\register2_reg[8]_i_3_n_0 ),
        .I1(\register2_reg[16]_0 [1]),
        .I2(reg2[8]),
        .I3(reg1[8]),
        .I4(\register2_reg[16]_0 [0]),
        .I5(ex_mulsg_n_97),
        .O(\register2[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \register2[8]_i_4 
       (.I0(reg2[14]),
        .I1(reg2[10]),
        .I2(reg1[1]),
        .I3(reg2[12]),
        .I4(reg1[2]),
        .I5(reg2[15]),
        .O(\register2[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \register2[8]_i_5 
       (.I0(reg2[15]),
        .I1(reg2[11]),
        .I2(reg1[1]),
        .I3(reg2[13]),
        .I4(reg1[2]),
        .I5(reg2[9]),
        .O(\register2[8]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \register2[9]_i_1 
       (.I0(\register2[9]_i_2_n_0 ),
        .I1(\register2_reg[16]_0 [2]),
        .I2(addsubsg[9]),
        .I3(\register2_reg[16]_0 [1]),
        .I4(Q[9]),
        .O(res_mul[9]));
  LUT6 #(
    .INIT(64'h8BBB333F8BBB000C)) 
    \register2[9]_i_2 
       (.I0(\register2_reg[9]_i_3_n_0 ),
        .I1(\register2_reg[16]_0 [1]),
        .I2(reg2[9]),
        .I3(reg1[9]),
        .I4(\register2_reg[16]_0 [0]),
        .I5(ex_mulsg_n_96),
        .O(\register2[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \register2[9]_i_4 
       (.I0(reg2[15]),
        .I1(reg2[11]),
        .I2(reg1[1]),
        .I3(reg2[13]),
        .I4(reg1[2]),
        .I5(A),
        .O(\register2[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \register2[9]_i_5 
       (.I0(A),
        .I1(reg2[12]),
        .I2(reg1[1]),
        .I3(reg2[14]),
        .I4(reg1[2]),
        .I5(reg2[10]),
        .O(\register2[9]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \register2_reg[0] 
       (.C(CLK),
        .CE(register2[0]),
        .D(res_mul[0]),
        .Q(reg2[0]),
        .R(SR));
  MUXF7 \register2_reg[0]_i_3 
       (.I0(\register2[0]_i_4_n_0 ),
        .I1(\register2[0]_i_5_n_0 ),
        .O(\register2_reg[0]_i_3_n_0 ),
        .S(reg1[0]));
  FDRE #(
    .INIT(1'b0)) 
    \register2_reg[10] 
       (.C(CLK),
        .CE(register2[0]),
        .D(res_mul[10]),
        .Q(reg2[10]),
        .R(SR));
  MUXF7 \register2_reg[10]_i_3 
       (.I0(\register2[10]_i_4_n_0 ),
        .I1(\register2[10]_i_5_n_0 ),
        .O(\register2_reg[10]_i_3_n_0 ),
        .S(reg1[0]));
  FDRE #(
    .INIT(1'b0)) 
    \register2_reg[11] 
       (.C(CLK),
        .CE(register2[0]),
        .D(res_mul[11]),
        .Q(reg2[11]),
        .R(SR));
  MUXF7 \register2_reg[11]_i_3 
       (.I0(\register2[11]_i_4_n_0 ),
        .I1(\register2[11]_i_5_n_0 ),
        .O(\register2_reg[11]_i_3_n_0 ),
        .S(reg1[0]));
  FDRE #(
    .INIT(1'b0)) 
    \register2_reg[12] 
       (.C(CLK),
        .CE(register2[0]),
        .D(res_mul[12]),
        .Q(reg2[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \register2_reg[13] 
       (.C(CLK),
        .CE(register2[0]),
        .D(res_mul[13]),
        .Q(reg2[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \register2_reg[14] 
       (.C(CLK),
        .CE(register2[0]),
        .D(res_mul[14]),
        .Q(reg2[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \register2_reg[15] 
       (.C(CLK),
        .CE(register2[0]),
        .D(res_mul[15]),
        .Q(reg2[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \register2_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(\register2[16]_i_1_n_0 ),
        .Q(A),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \register2_reg[1] 
       (.C(CLK),
        .CE(register2[0]),
        .D(res_mul[1]),
        .Q(reg2[1]),
        .R(SR));
  MUXF7 \register2_reg[1]_i_3 
       (.I0(\register2[1]_i_4_n_0 ),
        .I1(\register2[1]_i_5_n_0 ),
        .O(\register2_reg[1]_i_3_n_0 ),
        .S(reg1[0]));
  FDRE #(
    .INIT(1'b0)) 
    \register2_reg[2] 
       (.C(CLK),
        .CE(register2[0]),
        .D(res_mul[2]),
        .Q(reg2[2]),
        .R(SR));
  MUXF7 \register2_reg[2]_i_3 
       (.I0(\register2[2]_i_4_n_0 ),
        .I1(\register2[2]_i_5_n_0 ),
        .O(\register2_reg[2]_i_3_n_0 ),
        .S(reg1[0]));
  FDRE #(
    .INIT(1'b0)) 
    \register2_reg[3] 
       (.C(CLK),
        .CE(register2[0]),
        .D(res_mul[3]),
        .Q(reg2[3]),
        .R(SR));
  MUXF7 \register2_reg[3]_i_3 
       (.I0(\register2[3]_i_4_n_0 ),
        .I1(\register2[3]_i_5_n_0 ),
        .O(\register2_reg[3]_i_3_n_0 ),
        .S(reg1[0]));
  FDRE #(
    .INIT(1'b0)) 
    \register2_reg[4] 
       (.C(CLK),
        .CE(register2[0]),
        .D(res_mul[4]),
        .Q(reg2[4]),
        .R(SR));
  MUXF7 \register2_reg[4]_i_3 
       (.I0(\register2[4]_i_4_n_0 ),
        .I1(\register2[4]_i_5_n_0 ),
        .O(\register2_reg[4]_i_3_n_0 ),
        .S(reg1[0]));
  FDRE #(
    .INIT(1'b0)) 
    \register2_reg[5] 
       (.C(CLK),
        .CE(register2[0]),
        .D(res_mul[5]),
        .Q(reg2[5]),
        .R(SR));
  MUXF7 \register2_reg[5]_i_3 
       (.I0(\register2[5]_i_4_n_0 ),
        .I1(\register2[5]_i_5_n_0 ),
        .O(\register2_reg[5]_i_3_n_0 ),
        .S(reg1[0]));
  FDRE #(
    .INIT(1'b0)) 
    \register2_reg[6] 
       (.C(CLK),
        .CE(register2[0]),
        .D(res_mul[6]),
        .Q(reg2[6]),
        .R(SR));
  MUXF7 \register2_reg[6]_i_3 
       (.I0(\register2[6]_i_4_n_0 ),
        .I1(\register2[6]_i_5_n_0 ),
        .O(\register2_reg[6]_i_3_n_0 ),
        .S(reg1[0]));
  FDRE #(
    .INIT(1'b0)) 
    \register2_reg[7] 
       (.C(CLK),
        .CE(register2[0]),
        .D(res_mul[7]),
        .Q(reg2[7]),
        .R(SR));
  MUXF7 \register2_reg[7]_i_3 
       (.I0(\register2[7]_i_4_n_0 ),
        .I1(\register2[7]_i_5_n_0 ),
        .O(\register2_reg[7]_i_3_n_0 ),
        .S(reg1[0]));
  FDRE #(
    .INIT(1'b0)) 
    \register2_reg[8] 
       (.C(CLK),
        .CE(register2[0]),
        .D(res_mul[8]),
        .Q(reg2[8]),
        .R(SR));
  MUXF7 \register2_reg[8]_i_3 
       (.I0(\register2[8]_i_4_n_0 ),
        .I1(\register2[8]_i_5_n_0 ),
        .O(\register2_reg[8]_i_3_n_0 ),
        .S(reg1[0]));
  FDRE #(
    .INIT(1'b0)) 
    \register2_reg[9] 
       (.C(CLK),
        .CE(register2[0]),
        .D(res_mul[9]),
        .Q(reg2[9]),
        .R(SR));
  MUXF7 \register2_reg[9]_i_3 
       (.I0(\register2[9]_i_4_n_0 ),
        .I1(\register2[9]_i_5_n_0 ),
        .O(\register2_reg[9]_i_3_n_0 ),
        .S(reg1[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_OBUF[0]_inst_i_1 
       (.I0(\seg_OBUF[0]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[0]_inst_i_3_n_0 ),
        .I2(\seg[4] [1]),
        .I3(\seg_OBUF[0]_inst_i_4_n_0 ),
        .I4(\seg[4] [0]),
        .I5(\seg_OBUF[0]_inst_i_5_n_0 ),
        .O(seg_OBUF[0]));
  LUT5 #(
    .INIT(32'h48140000)) 
    \seg_OBUF[0]_inst_i_2 
       (.I0(reg2[13]),
        .I1(reg2[12]),
        .I2(reg2[14]),
        .I3(reg2[15]),
        .I4(Q[13]),
        .O(\seg_OBUF[0]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2094FFFF20940000)) 
    \seg_OBUF[0]_inst_i_3 
       (.I0(reg2[11]),
        .I1(reg2[10]),
        .I2(reg2[8]),
        .I3(reg2[9]),
        .I4(Q[13]),
        .I5(\seg_OBUF[0]_inst_i_6_n_0 ),
        .O(\seg_OBUF[0]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2094FFFF20940000)) 
    \seg_OBUF[0]_inst_i_4 
       (.I0(reg2[7]),
        .I1(reg2[6]),
        .I2(reg2[4]),
        .I3(reg2[5]),
        .I4(Q[13]),
        .I5(\seg_OBUF[0]_inst_i_7_n_0 ),
        .O(\seg_OBUF[0]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2094FFFF20940000)) 
    \seg_OBUF[0]_inst_i_5 
       (.I0(reg2[3]),
        .I1(reg2[2]),
        .I2(reg2[0]),
        .I3(reg2[1]),
        .I4(Q[13]),
        .I5(\seg_OBUF[0]_inst_i_8_n_0 ),
        .O(\seg_OBUF[0]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h6014)) 
    \seg_OBUF[0]_inst_i_6 
       (.I0(reg1[9]),
        .I1(reg1[10]),
        .I2(reg1[8]),
        .I3(reg1[11]),
        .O(\seg_OBUF[0]_inst_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h6014)) 
    \seg_OBUF[0]_inst_i_7 
       (.I0(reg1[5]),
        .I1(reg1[6]),
        .I2(reg1[4]),
        .I3(reg1[7]),
        .O(\seg_OBUF[0]_inst_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0892)) 
    \seg_OBUF[0]_inst_i_8 
       (.I0(reg1[0]),
        .I1(reg1[3]),
        .I2(reg1[2]),
        .I3(reg1[1]),
        .O(\seg_OBUF[0]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_OBUF[1]_inst_i_1 
       (.I0(\seg_OBUF[1]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[1]_inst_i_3_n_0 ),
        .I2(\seg[4] [1]),
        .I3(\seg_OBUF[1]_inst_i_4_n_0 ),
        .I4(\seg[4] [0]),
        .I5(\seg_OBUF[1]_inst_i_5_n_0 ),
        .O(seg_OBUF[1]));
  LUT6 #(
    .INIT(64'hB680FFFFB6800000)) 
    \seg_OBUF[1]_inst_i_2 
       (.I0(reg2[15]),
        .I1(reg2[12]),
        .I2(reg2[13]),
        .I3(reg2[14]),
        .I4(Q[13]),
        .I5(\register1_reg[12]_0 ),
        .O(\seg_OBUF[1]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h98E0FFFF98E00000)) 
    \seg_OBUF[1]_inst_i_3 
       (.I0(reg2[11]),
        .I1(reg2[9]),
        .I2(reg2[10]),
        .I3(reg2[8]),
        .I4(Q[13]),
        .I5(\seg_OBUF[1]_inst_i_6_n_0 ),
        .O(\seg_OBUF[1]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h98E0FFFF98E00000)) 
    \seg_OBUF[1]_inst_i_4 
       (.I0(reg2[7]),
        .I1(reg2[5]),
        .I2(reg2[6]),
        .I3(reg2[4]),
        .I4(Q[13]),
        .I5(\seg_OBUF[1]_inst_i_7_n_0 ),
        .O(\seg_OBUF[1]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h98E0FFFF98E00000)) 
    \seg_OBUF[1]_inst_i_5 
       (.I0(reg2[3]),
        .I1(reg2[1]),
        .I2(reg2[2]),
        .I3(reg2[0]),
        .I4(Q[13]),
        .I5(\seg_OBUF[1]_inst_i_8_n_0 ),
        .O(\seg_OBUF[1]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h9E80)) 
    \seg_OBUF[1]_inst_i_6 
       (.I0(reg1[9]),
        .I1(reg1[11]),
        .I2(reg1[8]),
        .I3(reg1[10]),
        .O(\seg_OBUF[1]_inst_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h9E80)) 
    \seg_OBUF[1]_inst_i_7 
       (.I0(reg1[5]),
        .I1(reg1[7]),
        .I2(reg1[4]),
        .I3(reg1[6]),
        .O(\seg_OBUF[1]_inst_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hD860)) 
    \seg_OBUF[1]_inst_i_8 
       (.I0(reg1[0]),
        .I1(reg1[1]),
        .I2(reg1[2]),
        .I3(reg1[3]),
        .O(\seg_OBUF[1]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_OBUF[2]_inst_i_1 
       (.I0(\seg_OBUF[2]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[2]_inst_i_3_n_0 ),
        .I2(\seg[4] [1]),
        .I3(\seg_OBUF[2]_inst_i_4_n_0 ),
        .I4(\seg[4] [0]),
        .I5(\seg_OBUF[2]_inst_i_5_n_0 ),
        .O(seg_OBUF[2]));
  LUT6 #(
    .INIT(64'hA210FFFFA2100000)) 
    \seg_OBUF[2]_inst_i_2 
       (.I0(reg2[15]),
        .I1(reg2[12]),
        .I2(reg2[13]),
        .I3(reg2[14]),
        .I4(Q[13]),
        .I5(\register1_reg[12]_0 ),
        .O(\seg_OBUF[2]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8908FFFF89080000)) 
    \seg_OBUF[2]_inst_i_3 
       (.I0(reg2[11]),
        .I1(reg2[10]),
        .I2(reg2[8]),
        .I3(reg2[9]),
        .I4(Q[13]),
        .I5(\seg_OBUF[2]_inst_i_6_n_0 ),
        .O(\seg_OBUF[2]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8908FFFF89080000)) 
    \seg_OBUF[2]_inst_i_4 
       (.I0(reg2[7]),
        .I1(reg2[6]),
        .I2(reg2[4]),
        .I3(reg2[5]),
        .I4(Q[13]),
        .I5(\seg_OBUF[2]_inst_i_7_n_0 ),
        .O(\seg_OBUF[2]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8908FFFF89080000)) 
    \seg_OBUF[2]_inst_i_5 
       (.I0(reg2[3]),
        .I1(reg2[2]),
        .I2(reg2[0]),
        .I3(reg2[1]),
        .I4(Q[13]),
        .I5(\seg_OBUF[2]_inst_i_8_n_0 ),
        .O(\seg_OBUF[2]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hB002)) 
    \seg_OBUF[2]_inst_i_6 
       (.I0(reg1[9]),
        .I1(reg1[8]),
        .I2(reg1[11]),
        .I3(reg1[10]),
        .O(\seg_OBUF[2]_inst_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hB002)) 
    \seg_OBUF[2]_inst_i_7 
       (.I0(reg1[5]),
        .I1(reg1[4]),
        .I2(reg1[7]),
        .I3(reg1[6]),
        .O(\seg_OBUF[2]_inst_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hD004)) 
    \seg_OBUF[2]_inst_i_8 
       (.I0(reg1[0]),
        .I1(reg1[1]),
        .I2(reg1[2]),
        .I3(reg1[3]),
        .O(\seg_OBUF[2]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_OBUF[3]_inst_i_1 
       (.I0(\seg_OBUF[3]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[3]_inst_i_3_n_0 ),
        .I2(\seg[4] [1]),
        .I3(\seg_OBUF[3]_inst_i_4_n_0 ),
        .I4(\seg[4] [0]),
        .I5(\seg_OBUF[3]_inst_i_5_n_0 ),
        .O(seg_OBUF[3]));
  LUT6 #(
    .INIT(64'hC214FFFFC2140000)) 
    \seg_OBUF[3]_inst_i_2 
       (.I0(reg2[15]),
        .I1(reg2[14]),
        .I2(reg2[12]),
        .I3(reg2[13]),
        .I4(Q[13]),
        .I5(\register1_reg[12]_0 ),
        .O(\seg_OBUF[3]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hC118FFFFC1180000)) 
    \seg_OBUF[3]_inst_i_3 
       (.I0(reg2[11]),
        .I1(reg2[9]),
        .I2(reg2[8]),
        .I3(reg2[10]),
        .I4(Q[13]),
        .I5(\seg_OBUF[3]_inst_i_6_n_0 ),
        .O(\seg_OBUF[3]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hC118FFFFC1180000)) 
    \seg_OBUF[3]_inst_i_4 
       (.I0(reg2[7]),
        .I1(reg2[5]),
        .I2(reg2[4]),
        .I3(reg2[6]),
        .I4(Q[13]),
        .I5(\seg_OBUF[3]_inst_i_7_n_0 ),
        .O(\seg_OBUF[3]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hC118FFFFC1180000)) 
    \seg_OBUF[3]_inst_i_5 
       (.I0(reg2[3]),
        .I1(reg2[1]),
        .I2(reg2[0]),
        .I3(reg2[2]),
        .I4(Q[13]),
        .I5(\seg_OBUF[3]_inst_i_8_n_0 ),
        .O(\seg_OBUF[3]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8294)) 
    \seg_OBUF[3]_inst_i_6 
       (.I0(reg1[9]),
        .I1(reg1[10]),
        .I2(reg1[8]),
        .I3(reg1[11]),
        .O(\seg_OBUF[3]_inst_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h8294)) 
    \seg_OBUF[3]_inst_i_7 
       (.I0(reg1[5]),
        .I1(reg1[6]),
        .I2(reg1[4]),
        .I3(reg1[7]),
        .O(\seg_OBUF[3]_inst_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h8492)) 
    \seg_OBUF[3]_inst_i_8 
       (.I0(reg1[0]),
        .I1(reg1[1]),
        .I2(reg1[2]),
        .I3(reg1[3]),
        .O(\seg_OBUF[3]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_OBUF[4]_inst_i_1 
       (.I0(\seg_OBUF[4]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[4]_inst_i_3_n_0 ),
        .I2(\seg[4] [1]),
        .I3(\seg_OBUF[4]_inst_i_4_n_0 ),
        .I4(\seg[4] [0]),
        .I5(\seg_OBUF[4]_inst_i_5_n_0 ),
        .O(seg_OBUF[4]));
  LUT5 #(
    .INIT(32'h02AE0000)) 
    \seg_OBUF[4]_inst_i_2 
       (.I0(reg2[12]),
        .I1(reg2[14]),
        .I2(reg2[13]),
        .I3(reg2[15]),
        .I4(Q[13]),
        .O(\seg_OBUF[4]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5710FFFF57100000)) 
    \seg_OBUF[4]_inst_i_3 
       (.I0(reg2[11]),
        .I1(reg2[9]),
        .I2(reg2[10]),
        .I3(reg2[8]),
        .I4(Q[13]),
        .I5(\seg_OBUF[4]_inst_i_6_n_0 ),
        .O(\seg_OBUF[4]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5710FFFF57100000)) 
    \seg_OBUF[4]_inst_i_4 
       (.I0(reg2[7]),
        .I1(reg2[5]),
        .I2(reg2[6]),
        .I3(reg2[4]),
        .I4(Q[13]),
        .I5(\seg_OBUF[4]_inst_i_7_n_0 ),
        .O(\seg_OBUF[4]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5710FFFF57100000)) 
    \seg_OBUF[4]_inst_i_5 
       (.I0(reg2[3]),
        .I1(reg2[1]),
        .I2(reg2[2]),
        .I3(reg2[0]),
        .I4(Q[13]),
        .I5(\seg_OBUF[4]_inst_i_8_n_0 ),
        .O(\seg_OBUF[4]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h3710)) 
    \seg_OBUF[4]_inst_i_6 
       (.I0(reg1[9]),
        .I1(reg1[11]),
        .I2(reg1[10]),
        .I3(reg1[8]),
        .O(\seg_OBUF[4]_inst_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h3710)) 
    \seg_OBUF[4]_inst_i_7 
       (.I0(reg1[5]),
        .I1(reg1[7]),
        .I2(reg1[6]),
        .I3(reg1[4]),
        .O(\seg_OBUF[4]_inst_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h223A)) 
    \seg_OBUF[4]_inst_i_8 
       (.I0(reg1[0]),
        .I1(reg1[3]),
        .I2(reg1[2]),
        .I3(reg1[1]),
        .O(\seg_OBUF[4]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_OBUF[5]_inst_i_1 
       (.I0(\seg_OBUF[5]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_3_n_0 ),
        .I2(\seg[4] [1]),
        .I3(\seg_OBUF[5]_inst_i_4_n_0 ),
        .I4(\seg[4] [0]),
        .I5(\seg_OBUF[5]_inst_i_5_n_0 ),
        .O(seg_OBUF[5]));
  LUT5 #(
    .INIT(32'h208E0000)) 
    \seg_OBUF[5]_inst_i_2 
       (.I0(reg2[12]),
        .I1(reg2[13]),
        .I2(reg2[14]),
        .I3(reg2[15]),
        .I4(Q[13]),
        .O(\seg_OBUF[5]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6054FFFF60540000)) 
    \seg_OBUF[5]_inst_i_3 
       (.I0(reg2[11]),
        .I1(reg2[9]),
        .I2(reg2[8]),
        .I3(reg2[10]),
        .I4(Q[13]),
        .I5(\seg_OBUF[5]_inst_i_6_n_0 ),
        .O(\seg_OBUF[5]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6054FFFF60540000)) 
    \seg_OBUF[5]_inst_i_4 
       (.I0(reg2[7]),
        .I1(reg2[5]),
        .I2(reg2[4]),
        .I3(reg2[6]),
        .I4(Q[13]),
        .I5(\seg_OBUF[5]_inst_i_7_n_0 ),
        .O(\seg_OBUF[5]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6054FFFF60540000)) 
    \seg_OBUF[5]_inst_i_5 
       (.I0(reg2[3]),
        .I1(reg2[1]),
        .I2(reg2[0]),
        .I3(reg2[2]),
        .I4(Q[13]),
        .I5(\seg_OBUF[5]_inst_i_8_n_0 ),
        .O(\seg_OBUF[5]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h40B2)) 
    \seg_OBUF[5]_inst_i_6 
       (.I0(reg1[9]),
        .I1(reg1[10]),
        .I2(reg1[8]),
        .I3(reg1[11]),
        .O(\seg_OBUF[5]_inst_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h40B2)) 
    \seg_OBUF[5]_inst_i_7 
       (.I0(reg1[5]),
        .I1(reg1[6]),
        .I2(reg1[4]),
        .I3(reg1[7]),
        .O(\seg_OBUF[5]_inst_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0B82)) 
    \seg_OBUF[5]_inst_i_8 
       (.I0(reg1[0]),
        .I1(reg1[2]),
        .I2(reg1[3]),
        .I3(reg1[1]),
        .O(\seg_OBUF[5]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg_OBUF[6]_inst_i_1 
       (.I0(\seg_OBUF[6]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_3_n_0 ),
        .I2(\seg[4] [1]),
        .I3(\seg_OBUF[6]_inst_i_4_n_0 ),
        .I4(\seg[4] [0]),
        .I5(\seg_OBUF[6]_inst_i_5_n_0 ),
        .O(seg_OBUF[6]));
  LUT6 #(
    .INIT(64'h402500004025FFFF)) 
    \seg_OBUF[6]_inst_i_2 
       (.I0(reg2[15]),
        .I1(reg2[12]),
        .I2(reg2[14]),
        .I3(reg2[13]),
        .I4(Q[13]),
        .I5(\register1_reg[12]_0 ),
        .O(\seg_OBUF[6]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4205FFFF42050000)) 
    \seg_OBUF[6]_inst_i_3 
       (.I0(reg2[11]),
        .I1(reg2[8]),
        .I2(reg2[9]),
        .I3(reg2[10]),
        .I4(Q[13]),
        .I5(\seg_OBUF[6]_inst_i_6_n_0 ),
        .O(\seg_OBUF[6]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4205FFFF42050000)) 
    \seg_OBUF[6]_inst_i_4 
       (.I0(reg2[7]),
        .I1(reg2[4]),
        .I2(reg2[5]),
        .I3(reg2[6]),
        .I4(Q[13]),
        .I5(\seg_OBUF[6]_inst_i_7_n_0 ),
        .O(\seg_OBUF[6]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4205FFFF42050000)) 
    \seg_OBUF[6]_inst_i_5 
       (.I0(reg2[3]),
        .I1(reg2[0]),
        .I2(reg2[1]),
        .I3(reg2[2]),
        .I4(Q[13]),
        .I5(\seg_OBUF[6]_inst_i_8_n_0 ),
        .O(\seg_OBUF[6]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h1085)) 
    \seg_OBUF[6]_inst_i_6 
       (.I0(reg1[9]),
        .I1(reg1[8]),
        .I2(reg1[10]),
        .I3(reg1[11]),
        .O(\seg_OBUF[6]_inst_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h1085)) 
    \seg_OBUF[6]_inst_i_7 
       (.I0(reg1[5]),
        .I1(reg1[4]),
        .I2(reg1[6]),
        .I3(reg1[7]),
        .O(\seg_OBUF[6]_inst_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h2043)) 
    \seg_OBUF[6]_inst_i_8 
       (.I0(reg1[0]),
        .I1(reg1[3]),
        .I2(reg1[2]),
        .I3(reg1[1]),
        .O(\seg_OBUF[6]_inst_i_8_n_0 ));
endmodule

module disp7
   (Q,
    an_OBUF,
    dp_OBUF,
    dp,
    dp_0,
    dp_1,
    CLK);
  output [1:0]Q;
  output [3:0]an_OBUF;
  output dp_OBUF;
  input [0:0]dp;
  input [0:0]dp_0;
  input [0:0]dp_1;
  input CLK;

  wire CLK;
  wire [1:0]Q;
  wire [3:0]an_OBUF;
  wire [0:0]dp;
  wire [0:0]dp_0;
  wire [0:0]dp_1;
  wire dp_OBUF;
  wire [1:0]plusOp;

  LUT2 #(
    .INIT(4'hE)) 
    \an_OBUF[0]_inst_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(an_OBUF[0]));
  LUT2 #(
    .INIT(4'hB)) 
    \an_OBUF[1]_inst_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(an_OBUF[1]));
  LUT2 #(
    .INIT(4'hB)) 
    \an_OBUF[2]_inst_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(an_OBUF[2]));
  LUT2 #(
    .INIT(4'h7)) 
    \an_OBUF[3]_inst_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(an_OBUF[3]));
  LUT5 #(
    .INIT(32'h757FFFFF)) 
    dp_OBUF_inst_i_1
       (.I0(Q[0]),
        .I1(dp),
        .I2(dp_0),
        .I3(dp_1),
        .I4(Q[1]),
        .O(dp_OBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \ndisp[0]_i_1 
       (.I0(Q[0]),
        .O(plusOp[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \ndisp[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(plusOp[1]));
  FDRE #(
    .INIT(1'b0)) 
    \ndisp_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ndisp_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(Q[1]),
        .R(1'b0));
endmodule

(* ECO_CHECKSUM = "6075a0c4" *) 
(* NotValidForBitStream *)
module fpga_basicIO
   (clk,
    btnC,
    btnU,
    btnL,
    btnR,
    btnD,
    sw,
    led,
    an,
    seg,
    dp);
  input clk;
  input btnC;
  input btnU;
  input btnL;
  input btnR;
  input btnD;
  input [15:0]sw;
  output [15:0]led;
  output [3:0]an;
  output [6:0]seg;
  output dp;

  wire [3:0]an;
  wire [3:0]an_OBUF;
  wire btnC;
  wire btnC_IBUF;
  wire btnD;
  wire btnD_IBUF;
  wire btnL;
  wire btnL_IBUF;
  wire btnR;
  wire btnR_IBUF;
  wire btnU;
  wire btnU_IBUF;
  wire btnUreg;
  wire clk;
  wire clk10hz;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire dclk;
  wire dp;
  wire dp_OBUF;
  wire [3:0]instr;
  wire [15:0]led;
  wire [15:0]led_OBUF;
  wire [1:0]ndisp;
  wire [12:12]reg1;
  wire [16:16]reg2;
  wire [6:0]seg;
  wire [6:0]seg_OBUF;
  wire [15:0]sw;
  wire [15:0]sw_IBUF;

initial begin
 $sdf_annotate("circuito_tb_time_impl.sdf",,,,"tool_control");
end
  OBUF \an_OBUF[0]_inst 
       (.I(an_OBUF[0]),
        .O(an[0]));
  OBUF \an_OBUF[1]_inst 
       (.I(an_OBUF[1]),
        .O(an[1]));
  OBUF \an_OBUF[2]_inst 
       (.I(an_OBUF[2]),
        .O(an[2]));
  OBUF \an_OBUF[3]_inst 
       (.I(an_OBUF[3]),
        .O(an[3]));
  IBUF btnC_IBUF_inst
       (.I(btnC),
        .O(btnC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    btnCreg_reg
       (.C(clk10hz),
        .CE(1'b1),
        .D(btnC_IBUF),
        .Q(instr[2]),
        .R(1'b0));
  IBUF btnD_IBUF_inst
       (.I(btnD),
        .O(btnD_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    btnDreg_reg
       (.C(clk10hz),
        .CE(1'b1),
        .D(btnD_IBUF),
        .Q(instr[0]),
        .R(1'b0));
  IBUF btnL_IBUF_inst
       (.I(btnL),
        .O(btnL_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    btnLreg_reg
       (.C(clk10hz),
        .CE(1'b1),
        .D(btnL_IBUF),
        .Q(instr[3]),
        .R(1'b0));
  IBUF btnR_IBUF_inst
       (.I(btnR),
        .O(btnR_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    btnRreg_reg
       (.C(clk10hz),
        .CE(1'b1),
        .D(btnR_IBUF),
        .Q(instr[1]),
        .R(1'b0));
  IBUF btnU_IBUF_inst
       (.I(btnU),
        .O(btnU_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    btnUreg_reg
       (.C(clk10hz),
        .CE(1'b1),
        .D(btnU_IBUF),
        .Q(btnUreg),
        .R(1'b0));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF dp_OBUF_inst
       (.I(dp_OBUF),
        .O(dp));
  circuito inst_circuito
       (.CLK(clk_IBUF_BUFG),
        .Q({led_OBUF[15:14],led_OBUF[12:0]}),
        .SR(btnUreg),
        .instr(instr),
        .\register1_reg[12] (reg1),
        .\register2_reg[16] (reg2),
        .\seg[4] (ndisp),
        .seg_OBUF(seg_OBUF));
  clkdiv inst_clkdiv
       (.BUFG_INST3_0(dclk),
        .CLK(clk10hz),
        .clk(clk_IBUF_BUFG));
  disp7 inst_disp7
       (.CLK(dclk),
        .Q(ndisp),
        .an_OBUF(an_OBUF),
        .dp(reg2),
        .dp_0(led_OBUF[15]),
        .dp_1(reg1),
        .dp_OBUF(dp_OBUF));
  OBUF \led_OBUF[0]_inst 
       (.I(led_OBUF[0]),
        .O(led[0]));
  OBUF \led_OBUF[10]_inst 
       (.I(led_OBUF[10]),
        .O(led[10]));
  OBUF \led_OBUF[11]_inst 
       (.I(led_OBUF[11]),
        .O(led[11]));
  OBUF \led_OBUF[12]_inst 
       (.I(led_OBUF[12]),
        .O(led[12]));
  OBUF \led_OBUF[13]_inst 
       (.I(led_OBUF[13]),
        .O(led[13]));
  OBUF \led_OBUF[14]_inst 
       (.I(led_OBUF[14]),
        .O(led[14]));
  OBUF \led_OBUF[15]_inst 
       (.I(led_OBUF[15]),
        .O(led[15]));
  OBUF \led_OBUF[1]_inst 
       (.I(led_OBUF[1]),
        .O(led[1]));
  OBUF \led_OBUF[2]_inst 
       (.I(led_OBUF[2]),
        .O(led[2]));
  OBUF \led_OBUF[3]_inst 
       (.I(led_OBUF[3]),
        .O(led[3]));
  OBUF \led_OBUF[4]_inst 
       (.I(led_OBUF[4]),
        .O(led[4]));
  OBUF \led_OBUF[5]_inst 
       (.I(led_OBUF[5]),
        .O(led[5]));
  OBUF \led_OBUF[6]_inst 
       (.I(led_OBUF[6]),
        .O(led[6]));
  OBUF \led_OBUF[7]_inst 
       (.I(led_OBUF[7]),
        .O(led[7]));
  OBUF \led_OBUF[8]_inst 
       (.I(led_OBUF[8]),
        .O(led[8]));
  OBUF \led_OBUF[9]_inst 
       (.I(led_OBUF[9]),
        .O(led[9]));
  OBUF \seg_OBUF[0]_inst 
       (.I(seg_OBUF[0]),
        .O(seg[0]));
  OBUF \seg_OBUF[1]_inst 
       (.I(seg_OBUF[1]),
        .O(seg[1]));
  OBUF \seg_OBUF[2]_inst 
       (.I(seg_OBUF[2]),
        .O(seg[2]));
  OBUF \seg_OBUF[3]_inst 
       (.I(seg_OBUF[3]),
        .O(seg[3]));
  OBUF \seg_OBUF[4]_inst 
       (.I(seg_OBUF[4]),
        .O(seg[4]));
  OBUF \seg_OBUF[5]_inst 
       (.I(seg_OBUF[5]),
        .O(seg[5]));
  OBUF \seg_OBUF[6]_inst 
       (.I(seg_OBUF[6]),
        .O(seg[6]));
  IBUF \sw_IBUF[0]_inst 
       (.I(sw[0]),
        .O(sw_IBUF[0]));
  IBUF \sw_IBUF[10]_inst 
       (.I(sw[10]),
        .O(sw_IBUF[10]));
  IBUF \sw_IBUF[11]_inst 
       (.I(sw[11]),
        .O(sw_IBUF[11]));
  IBUF \sw_IBUF[12]_inst 
       (.I(sw[12]),
        .O(sw_IBUF[12]));
  IBUF \sw_IBUF[13]_inst 
       (.I(sw[13]),
        .O(sw_IBUF[13]));
  IBUF \sw_IBUF[14]_inst 
       (.I(sw[14]),
        .O(sw_IBUF[14]));
  IBUF \sw_IBUF[15]_inst 
       (.I(sw[15]),
        .O(sw_IBUF[15]));
  IBUF \sw_IBUF[1]_inst 
       (.I(sw[1]),
        .O(sw_IBUF[1]));
  IBUF \sw_IBUF[2]_inst 
       (.I(sw[2]),
        .O(sw_IBUF[2]));
  IBUF \sw_IBUF[3]_inst 
       (.I(sw[3]),
        .O(sw_IBUF[3]));
  IBUF \sw_IBUF[4]_inst 
       (.I(sw[4]),
        .O(sw_IBUF[4]));
  IBUF \sw_IBUF[5]_inst 
       (.I(sw[5]),
        .O(sw_IBUF[5]));
  IBUF \sw_IBUF[6]_inst 
       (.I(sw[6]),
        .O(sw_IBUF[6]));
  IBUF \sw_IBUF[7]_inst 
       (.I(sw[7]),
        .O(sw_IBUF[7]));
  IBUF \sw_IBUF[8]_inst 
       (.I(sw[8]),
        .O(sw_IBUF[8]));
  IBUF \sw_IBUF[9]_inst 
       (.I(sw[9]),
        .O(sw_IBUF[9]));
  FDRE #(
    .INIT(1'b0)) 
    \sw_reg_reg[0] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(sw_IBUF[0]),
        .Q(led_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_reg_reg[10] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(sw_IBUF[10]),
        .Q(led_OBUF[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_reg_reg[11] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(sw_IBUF[11]),
        .Q(led_OBUF[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_reg_reg[12] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(sw_IBUF[12]),
        .Q(led_OBUF[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_reg_reg[13] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(sw_IBUF[13]),
        .Q(led_OBUF[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_reg_reg[14] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(sw_IBUF[14]),
        .Q(led_OBUF[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_reg_reg[15] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(sw_IBUF[15]),
        .Q(led_OBUF[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_reg_reg[1] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(sw_IBUF[1]),
        .Q(led_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_reg_reg[2] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(sw_IBUF[2]),
        .Q(led_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_reg_reg[3] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(sw_IBUF[3]),
        .Q(led_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_reg_reg[4] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(sw_IBUF[4]),
        .Q(led_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_reg_reg[5] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(sw_IBUF[5]),
        .Q(led_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_reg_reg[6] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(sw_IBUF[6]),
        .Q(led_OBUF[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_reg_reg[7] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(sw_IBUF[7]),
        .Q(led_OBUF[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_reg_reg[8] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(sw_IBUF[8]),
        .Q(led_OBUF[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_reg_reg[9] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(sw_IBUF[9]),
        .Q(led_OBUF[9]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
