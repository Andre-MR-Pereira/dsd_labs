// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Fri Oct 29 14:00:13 2021
// Host        : DESKTOP-G74GFK5 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/tiago/OneDrive/Desktop/Universidade/Mestrado/PSD/Laboratorios/Lab2/project_2/project_2.sim/sim_1/impl/timing/xsim/circuit_tb_time_impl.v
// Design      : circuit
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "331473cd" *) 
(* NotValidForBitStream *)
module circuit
   (clk,
    rst,
    instr,
    p1,
    p2,
    p3,
    p4,
    q1,
    q2,
    q3,
    q4,
    done,
    res);
  input clk;
  input rst;
  input instr;
  input [7:0]p1;
  input [7:0]p2;
  input [7:0]p3;
  input [7:0]p4;
  input [7:0]q1;
  input [7:0]q2;
  input [7:0]q3;
  input [7:0]q4;
  output done;
  output [11:0]res;

  wire [1:1]A;
  wire CEP;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [2:0]currstate;
  wire done;
  wire done_OBUF;
  wire inst_control_n_10;
  wire inst_control_n_11;
  wire inst_control_n_12;
  wire inst_control_n_13;
  wire inst_control_n_14;
  wire inst_control_n_15;
  wire inst_control_n_19;
  wire inst_control_n_20;
  wire inst_control_n_21;
  wire inst_control_n_22;
  wire inst_control_n_23;
  wire inst_control_n_24;
  wire inst_control_n_25;
  wire inst_control_n_26;
  wire inst_control_n_27;
  wire inst_control_n_28;
  wire inst_control_n_29;
  wire inst_control_n_30;
  wire inst_control_n_31;
  wire inst_control_n_33;
  wire inst_control_n_34;
  wire inst_control_n_38;
  wire inst_control_n_39;
  wire inst_control_n_4;
  wire inst_control_n_40;
  wire inst_control_n_5;
  wire inst_control_n_6;
  wire inst_control_n_7;
  wire inst_control_n_8;
  wire inst_control_n_9;
  wire inst_datapath_n_34;
  wire instr;
  wire instr_IBUF;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;
  wire lopt_4;
  wire lopt_5;
  wire lopt_6;
  wire lopt_7;
  wire lopt_8;
  wire [1:0]oper;
  wire [7:0]p1;
  wire [7:0]p1_IBUF;
  wire [7:0]p2;
  wire [7:0]p2_IBUF;
  wire [7:0]p3;
  wire [7:0]p3_IBUF;
  wire [7:0]p4;
  wire [7:0]p4_IBUF;
  wire [11:0]p_0_in1_in;
  wire [10:8]p_1_in;
  wire [11:0]p_2_in;
  wire [7:0]q1;
  wire [7:0]q1_IBUF;
  wire [7:0]q2;
  wire [7:0]q2_IBUF;
  wire [7:0]q3;
  wire [7:0]q3_IBUF;
  wire [7:0]q4;
  wire [7:0]q4_IBUF;
  wire [11:8]reg1;
  wire [11:8]reg3;
  wire [11:8]reg4;
  wire [11:0]res;
  wire [11:0]res_OBUF;
  wire [1:1]rp1;
  wire [1:1]rp3;
  wire rst;
  wire rst_IBUF;
  wire [8:0]\NLW_inst_datapath_reg2_reg[11]_0_UNCONNECTED ;

initial begin
 $sdf_annotate("circuit_tb_time_impl.sdf",,,,"tool_control");
end
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF done_OBUF_inst
       (.I(done_OBUF),
        .O(done));
  control inst_control
       (.CLK(clk_IBUF_BUFG),
        .CO(inst_datapath_n_34),
        .D({inst_control_n_4,inst_control_n_5,inst_control_n_6,inst_control_n_7,inst_control_n_8,inst_control_n_9,inst_control_n_10,inst_control_n_11,inst_control_n_12,inst_control_n_13,inst_control_n_14,inst_control_n_15}),
        .DI(p_1_in),
        .E(CEP),
        .\FSM_sequential_currstate_reg[0]_0 (inst_control_n_33),
        .\FSM_sequential_currstate_reg[1]_0 (inst_control_n_23),
        .\FSM_sequential_currstate_reg[1]_1 (inst_control_n_34),
        .\FSM_sequential_currstate_reg[1]_2 ({inst_control_n_38,inst_control_n_39,inst_control_n_40}),
        .O({inst_control_n_19,inst_control_n_20,inst_control_n_21,inst_control_n_22}),
        .Q(reg3),
        .S({inst_control_n_24,inst_control_n_25,inst_control_n_26,inst_control_n_27}),
        .\_inferred__2/i__carry__1 (reg1),
        .currstate(currstate),
        .done_OBUF(done_OBUF),
        .instr_IBUF(instr_IBUF),
        .oper(oper),
        .p_0_in1_in(p_0_in1_in),
        .p_2_in(p_2_in),
        .\reg1_reg[11] ({inst_control_n_28,inst_control_n_29,inst_control_n_30,inst_control_n_31}),
        .\reg1_reg[11]_0 (reg4),
        .\reg1_reg[3] (rp3),
        .\reg1_reg[3]_0 (rp1),
        .\rp3_reg[1] (A),
        .rst_IBUF(rst_IBUF));
  datapath inst_datapath
       (.CLK(clk_IBUF_BUFG),
        .CO(inst_datapath_n_34),
        .D(q4_IBUF),
        .DI(p_1_in),
        .E(CEP),
        .Q(reg1),
        .S({inst_control_n_24,inst_control_n_25,inst_control_n_26,inst_control_n_27}),
        .SR(rst_IBUF),
        .currstate(currstate),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .lopt_4(lopt_4),
        .lopt_5(lopt_5),
        .lopt_6(lopt_6),
        .lopt_7(lopt_7),
        .lopt_8(lopt_8),
        .oper(oper),
        .p_0_in1_in(p_0_in1_in),
        .p_2_in(p_2_in),
        .\reg1_reg[11]_0 ({inst_control_n_19,inst_control_n_20,inst_control_n_21,inst_control_n_22}),
        .\reg1_reg[3]_0 (A),
        .\reg1_reg[3]_1 (inst_control_n_23),
        .\reg1_reg[3]_2 (inst_control_n_34),
        .\reg1_reg[3]_3 (inst_control_n_33),
        .\reg2_reg[11]_0 ({res_OBUF[11:9],\NLW_inst_datapath_reg2_reg[11]_0_UNCONNECTED [8:0]}),
        .\reg2_reg[11]_1 ({inst_control_n_38,inst_control_n_39,inst_control_n_40}),
        .\reg2_reg[11]_2 ({inst_control_n_28,inst_control_n_29,inst_control_n_30,inst_control_n_31}),
        .\reg2_reg[11]_3 ({inst_control_n_4,inst_control_n_5,inst_control_n_6,inst_control_n_7,inst_control_n_8,inst_control_n_9,inst_control_n_10,inst_control_n_11,inst_control_n_12,inst_control_n_13,inst_control_n_14,inst_control_n_15}),
        .\reg3_reg[11]_0 (reg3),
        .\reg4_reg[11]_0 (reg4),
        .\rp1_reg[1]_0 (rp1),
        .\rp1_reg[7]_0 (p1_IBUF),
        .\rp2_reg[7]_0 (p2_IBUF),
        .\rp3_reg[1]_0 (rp3),
        .\rp3_reg[7]_0 (p3_IBUF),
        .\rp4_reg[7]_0 (p4_IBUF),
        .\rq1_reg[7]_0 (q1_IBUF),
        .\rq2_reg[7]_0 (q2_IBUF),
        .\rq3_reg[7]_0 (q3_IBUF));
  IBUF instr_IBUF_inst
       (.I(instr),
        .O(instr_IBUF));
  IBUF \p1_IBUF[0]_inst 
       (.I(p1[0]),
        .O(p1_IBUF[0]));
  IBUF \p1_IBUF[1]_inst 
       (.I(p1[1]),
        .O(p1_IBUF[1]));
  IBUF \p1_IBUF[2]_inst 
       (.I(p1[2]),
        .O(p1_IBUF[2]));
  IBUF \p1_IBUF[3]_inst 
       (.I(p1[3]),
        .O(p1_IBUF[3]));
  IBUF \p1_IBUF[4]_inst 
       (.I(p1[4]),
        .O(p1_IBUF[4]));
  IBUF \p1_IBUF[5]_inst 
       (.I(p1[5]),
        .O(p1_IBUF[5]));
  IBUF \p1_IBUF[6]_inst 
       (.I(p1[6]),
        .O(p1_IBUF[6]));
  IBUF \p1_IBUF[7]_inst 
       (.I(p1[7]),
        .O(p1_IBUF[7]));
  IBUF \p2_IBUF[0]_inst 
       (.I(p2[0]),
        .O(p2_IBUF[0]));
  IBUF \p2_IBUF[1]_inst 
       (.I(p2[1]),
        .O(p2_IBUF[1]));
  IBUF \p2_IBUF[2]_inst 
       (.I(p2[2]),
        .O(p2_IBUF[2]));
  IBUF \p2_IBUF[3]_inst 
       (.I(p2[3]),
        .O(p2_IBUF[3]));
  IBUF \p2_IBUF[4]_inst 
       (.I(p2[4]),
        .O(p2_IBUF[4]));
  IBUF \p2_IBUF[5]_inst 
       (.I(p2[5]),
        .O(p2_IBUF[5]));
  IBUF \p2_IBUF[6]_inst 
       (.I(p2[6]),
        .O(p2_IBUF[6]));
  IBUF \p2_IBUF[7]_inst 
       (.I(p2[7]),
        .O(p2_IBUF[7]));
  IBUF \p3_IBUF[0]_inst 
       (.I(p3[0]),
        .O(p3_IBUF[0]));
  IBUF \p3_IBUF[1]_inst 
       (.I(p3[1]),
        .O(p3_IBUF[1]));
  IBUF \p3_IBUF[2]_inst 
       (.I(p3[2]),
        .O(p3_IBUF[2]));
  IBUF \p3_IBUF[3]_inst 
       (.I(p3[3]),
        .O(p3_IBUF[3]));
  IBUF \p3_IBUF[4]_inst 
       (.I(p3[4]),
        .O(p3_IBUF[4]));
  IBUF \p3_IBUF[5]_inst 
       (.I(p3[5]),
        .O(p3_IBUF[5]));
  IBUF \p3_IBUF[6]_inst 
       (.I(p3[6]),
        .O(p3_IBUF[6]));
  IBUF \p3_IBUF[7]_inst 
       (.I(p3[7]),
        .O(p3_IBUF[7]));
  IBUF \p4_IBUF[0]_inst 
       (.I(p4[0]),
        .O(p4_IBUF[0]));
  IBUF \p4_IBUF[1]_inst 
       (.I(p4[1]),
        .O(p4_IBUF[1]));
  IBUF \p4_IBUF[2]_inst 
       (.I(p4[2]),
        .O(p4_IBUF[2]));
  IBUF \p4_IBUF[3]_inst 
       (.I(p4[3]),
        .O(p4_IBUF[3]));
  IBUF \p4_IBUF[4]_inst 
       (.I(p4[4]),
        .O(p4_IBUF[4]));
  IBUF \p4_IBUF[5]_inst 
       (.I(p4[5]),
        .O(p4_IBUF[5]));
  IBUF \p4_IBUF[6]_inst 
       (.I(p4[6]),
        .O(p4_IBUF[6]));
  IBUF \p4_IBUF[7]_inst 
       (.I(p4[7]),
        .O(p4_IBUF[7]));
  IBUF \q1_IBUF[0]_inst 
       (.I(q1[0]),
        .O(q1_IBUF[0]));
  IBUF \q1_IBUF[1]_inst 
       (.I(q1[1]),
        .O(q1_IBUF[1]));
  IBUF \q1_IBUF[2]_inst 
       (.I(q1[2]),
        .O(q1_IBUF[2]));
  IBUF \q1_IBUF[3]_inst 
       (.I(q1[3]),
        .O(q1_IBUF[3]));
  IBUF \q1_IBUF[4]_inst 
       (.I(q1[4]),
        .O(q1_IBUF[4]));
  IBUF \q1_IBUF[5]_inst 
       (.I(q1[5]),
        .O(q1_IBUF[5]));
  IBUF \q1_IBUF[6]_inst 
       (.I(q1[6]),
        .O(q1_IBUF[6]));
  IBUF \q1_IBUF[7]_inst 
       (.I(q1[7]),
        .O(q1_IBUF[7]));
  IBUF \q2_IBUF[0]_inst 
       (.I(q2[0]),
        .O(q2_IBUF[0]));
  IBUF \q2_IBUF[1]_inst 
       (.I(q2[1]),
        .O(q2_IBUF[1]));
  IBUF \q2_IBUF[2]_inst 
       (.I(q2[2]),
        .O(q2_IBUF[2]));
  IBUF \q2_IBUF[3]_inst 
       (.I(q2[3]),
        .O(q2_IBUF[3]));
  IBUF \q2_IBUF[4]_inst 
       (.I(q2[4]),
        .O(q2_IBUF[4]));
  IBUF \q2_IBUF[5]_inst 
       (.I(q2[5]),
        .O(q2_IBUF[5]));
  IBUF \q2_IBUF[6]_inst 
       (.I(q2[6]),
        .O(q2_IBUF[6]));
  IBUF \q2_IBUF[7]_inst 
       (.I(q2[7]),
        .O(q2_IBUF[7]));
  IBUF \q3_IBUF[0]_inst 
       (.I(q3[0]),
        .O(q3_IBUF[0]));
  IBUF \q3_IBUF[1]_inst 
       (.I(q3[1]),
        .O(q3_IBUF[1]));
  IBUF \q3_IBUF[2]_inst 
       (.I(q3[2]),
        .O(q3_IBUF[2]));
  IBUF \q3_IBUF[3]_inst 
       (.I(q3[3]),
        .O(q3_IBUF[3]));
  IBUF \q3_IBUF[4]_inst 
       (.I(q3[4]),
        .O(q3_IBUF[4]));
  IBUF \q3_IBUF[5]_inst 
       (.I(q3[5]),
        .O(q3_IBUF[5]));
  IBUF \q3_IBUF[6]_inst 
       (.I(q3[6]),
        .O(q3_IBUF[6]));
  IBUF \q3_IBUF[7]_inst 
       (.I(q3[7]),
        .O(q3_IBUF[7]));
  IBUF \q4_IBUF[0]_inst 
       (.I(q4[0]),
        .O(q4_IBUF[0]));
  IBUF \q4_IBUF[1]_inst 
       (.I(q4[1]),
        .O(q4_IBUF[1]));
  IBUF \q4_IBUF[2]_inst 
       (.I(q4[2]),
        .O(q4_IBUF[2]));
  IBUF \q4_IBUF[3]_inst 
       (.I(q4[3]),
        .O(q4_IBUF[3]));
  IBUF \q4_IBUF[4]_inst 
       (.I(q4[4]),
        .O(q4_IBUF[4]));
  IBUF \q4_IBUF[5]_inst 
       (.I(q4[5]),
        .O(q4_IBUF[5]));
  IBUF \q4_IBUF[6]_inst 
       (.I(q4[6]),
        .O(q4_IBUF[6]));
  IBUF \q4_IBUF[7]_inst 
       (.I(q4[7]),
        .O(q4_IBUF[7]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \res_OBUF[0]_inst 
       (.I(lopt),
        .O(res[0]));
  OBUF \res_OBUF[10]_inst 
       (.I(res_OBUF[10]),
        .O(res[10]));
  OBUF \res_OBUF[11]_inst 
       (.I(res_OBUF[11]),
        .O(res[11]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \res_OBUF[1]_inst 
       (.I(lopt_1),
        .O(res[1]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \res_OBUF[2]_inst 
       (.I(lopt_2),
        .O(res[2]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \res_OBUF[3]_inst 
       (.I(lopt_3),
        .O(res[3]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \res_OBUF[4]_inst 
       (.I(lopt_4),
        .O(res[4]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \res_OBUF[5]_inst 
       (.I(lopt_5),
        .O(res[5]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \res_OBUF[6]_inst 
       (.I(lopt_6),
        .O(res[6]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \res_OBUF[7]_inst 
       (.I(lopt_7),
        .O(res[7]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \res_OBUF[8]_inst 
       (.I(lopt_8),
        .O(res[8]));
  OBUF \res_OBUF[9]_inst 
       (.I(res_OBUF[9]),
        .O(res[9]));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
endmodule

module control
   (currstate,
    E,
    D,
    DI,
    O,
    \FSM_sequential_currstate_reg[1]_0 ,
    S,
    \reg1_reg[11] ,
    \rp3_reg[1] ,
    \FSM_sequential_currstate_reg[0]_0 ,
    \FSM_sequential_currstate_reg[1]_1 ,
    oper,
    done_OBUF,
    \FSM_sequential_currstate_reg[1]_2 ,
    Q,
    \reg1_reg[11]_0 ,
    p_2_in,
    p_0_in1_in,
    \_inferred__2/i__carry__1 ,
    \reg1_reg[3] ,
    \reg1_reg[3]_0 ,
    CO,
    instr_IBUF,
    rst_IBUF,
    CLK);
  output [2:0]currstate;
  output [0:0]E;
  output [11:0]D;
  output [2:0]DI;
  output [3:0]O;
  output \FSM_sequential_currstate_reg[1]_0 ;
  output [3:0]S;
  output [3:0]\reg1_reg[11] ;
  output [0:0]\rp3_reg[1] ;
  output \FSM_sequential_currstate_reg[0]_0 ;
  output \FSM_sequential_currstate_reg[1]_1 ;
  output [1:0]oper;
  output done_OBUF;
  output [2:0]\FSM_sequential_currstate_reg[1]_2 ;
  input [3:0]Q;
  input [3:0]\reg1_reg[11]_0 ;
  input [11:0]p_2_in;
  input [11:0]p_0_in1_in;
  input [3:0]\_inferred__2/i__carry__1 ;
  input [0:0]\reg1_reg[3] ;
  input [0:0]\reg1_reg[3]_0 ;
  input [0:0]CO;
  input instr_IBUF;
  input rst_IBUF;
  input CLK;

  wire [10:8]A;
  wire CLK;
  wire [0:0]CO;
  wire [11:0]D;
  wire [2:0]DI;
  wire [0:0]E;
  wire \FSM_sequential_currstate[0]_i_1_n_0 ;
  wire \FSM_sequential_currstate[1]_i_1_n_0 ;
  wire \FSM_sequential_currstate[2]_i_1_n_0 ;
  wire \FSM_sequential_currstate_reg[0]_0 ;
  wire \FSM_sequential_currstate_reg[1]_0 ;
  wire \FSM_sequential_currstate_reg[1]_1 ;
  wire [2:0]\FSM_sequential_currstate_reg[1]_2 ;
  wire [3:0]O;
  wire [3:0]Q;
  wire [3:0]S;
  wire [3:0]\_inferred__2/i__carry__1 ;
  wire [2:0]currstate;
  wire done_OBUF;
  wire instr_IBUF;
  wire [1:0]oper;
  wire [11:0]p_0_in1_in;
  wire [11:0]p_2_in;
  wire \reg1[11]_i_5_n_0 ;
  wire \reg1[11]_i_6_n_0 ;
  wire \reg1[11]_i_7_n_0 ;
  wire \reg1[11]_i_8_n_0 ;
  wire [3:0]\reg1_reg[11] ;
  wire [3:0]\reg1_reg[11]_0 ;
  wire [0:0]\reg1_reg[3] ;
  wire [0:0]\reg1_reg[3]_0 ;
  wire [0:0]\rp3_reg[1] ;
  wire rst_IBUF;
  wire [3:0]\NLW_reg1_reg[11]_i_1_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00009392)) 
    \FSM_sequential_currstate[0]_i_1 
       (.I0(currstate[1]),
        .I1(currstate[0]),
        .I2(currstate[2]),
        .I3(instr_IBUF),
        .I4(rst_IBUF),
        .O(\FSM_sequential_currstate[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h00A6)) 
    \FSM_sequential_currstate[1]_i_1 
       (.I0(currstate[1]),
        .I1(currstate[0]),
        .I2(currstate[2]),
        .I3(rst_IBUF),
        .O(\FSM_sequential_currstate[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \FSM_sequential_currstate[2]_i_1 
       (.I0(currstate[1]),
        .I1(currstate[0]),
        .I2(currstate[2]),
        .I3(rst_IBUF),
        .O(\FSM_sequential_currstate[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s_initial:000,s_1:001,s_2:010,s_3:011,s_4:100,s_end:101," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_currstate_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_currstate[0]_i_1_n_0 ),
        .Q(currstate[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "s_initial:000,s_1:001,s_2:010,s_3:011,s_4:100,s_end:101," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_currstate_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_currstate[1]_i_1_n_0 ),
        .Q(currstate[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "s_initial:000,s_1:001,s_2:010,s_3:011,s_4:100,s_end:101," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_currstate_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_currstate[2]_i_1_n_0 ),
        .Q(currstate[2]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h41)) 
    done_OBUF_inst_i_1
       (.I0(currstate[1]),
        .I1(currstate[0]),
        .I2(currstate[2]),
        .O(done_OBUF));
  LUT4 #(
    .INIT(16'h6500)) 
    i__carry__1_i_1
       (.I0(currstate[1]),
        .I1(currstate[2]),
        .I2(currstate[0]),
        .I3(O[2]),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'h6500)) 
    i__carry__1_i_1__0
       (.I0(currstate[1]),
        .I1(currstate[2]),
        .I2(currstate[0]),
        .I3(O[2]),
        .O(\FSM_sequential_currstate_reg[1]_2 [2]));
  LUT4 #(
    .INIT(16'h6500)) 
    i__carry__1_i_2
       (.I0(currstate[1]),
        .I1(currstate[2]),
        .I2(currstate[0]),
        .I3(O[1]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h6500)) 
    i__carry__1_i_2__0
       (.I0(currstate[1]),
        .I1(currstate[2]),
        .I2(currstate[0]),
        .I3(O[1]),
        .O(\FSM_sequential_currstate_reg[1]_2 [1]));
  LUT4 #(
    .INIT(16'h6500)) 
    i__carry__1_i_3
       (.I0(currstate[1]),
        .I1(currstate[2]),
        .I2(currstate[0]),
        .I3(O[0]),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h6500)) 
    i__carry__1_i_3__0
       (.I0(currstate[1]),
        .I1(currstate[2]),
        .I2(currstate[0]),
        .I3(O[0]),
        .O(\FSM_sequential_currstate_reg[1]_2 [0]));
  LUT5 #(
    .INIT(32'h002D2D00)) 
    i__carry__1_i_4
       (.I0(currstate[0]),
        .I1(currstate[2]),
        .I2(currstate[1]),
        .I3(\_inferred__2/i__carry__1 [3]),
        .I4(O[3]),
        .O(S[3]));
  LUT5 #(
    .INIT(32'hF99FF9F9)) 
    i__carry__1_i_4__0
       (.I0(O[3]),
        .I1(\_inferred__2/i__carry__1 [3]),
        .I2(currstate[1]),
        .I3(currstate[2]),
        .I4(currstate[0]),
        .O(\reg1_reg[11] [3]));
  LUT5 #(
    .INIT(32'hFF9F99F9)) 
    i__carry__1_i_5
       (.I0(O[2]),
        .I1(\_inferred__2/i__carry__1 [2]),
        .I2(currstate[0]),
        .I3(currstate[2]),
        .I4(currstate[1]),
        .O(\reg1_reg[11] [2]));
  LUT5 #(
    .INIT(32'h00656500)) 
    i__carry__1_i_5__0
       (.I0(currstate[1]),
        .I1(currstate[2]),
        .I2(currstate[0]),
        .I3(\_inferred__2/i__carry__1 [2]),
        .I4(O[2]),
        .O(S[2]));
  LUT5 #(
    .INIT(32'hFF9F99F9)) 
    i__carry__1_i_6
       (.I0(O[1]),
        .I1(\_inferred__2/i__carry__1 [1]),
        .I2(currstate[0]),
        .I3(currstate[2]),
        .I4(currstate[1]),
        .O(\reg1_reg[11] [1]));
  LUT5 #(
    .INIT(32'h00656500)) 
    i__carry__1_i_6__0
       (.I0(currstate[1]),
        .I1(currstate[2]),
        .I2(currstate[0]),
        .I3(\_inferred__2/i__carry__1 [1]),
        .I4(O[1]),
        .O(S[1]));
  LUT5 #(
    .INIT(32'hFF9F99F9)) 
    i__carry__1_i_7
       (.I0(O[0]),
        .I1(\_inferred__2/i__carry__1 [0]),
        .I2(currstate[0]),
        .I3(currstate[2]),
        .I4(currstate[1]),
        .O(\reg1_reg[11] [0]));
  LUT5 #(
    .INIT(32'h00656500)) 
    i__carry__1_i_7__0
       (.I0(currstate[1]),
        .I1(currstate[2]),
        .I2(currstate[0]),
        .I3(\_inferred__2/i__carry__1 [0]),
        .I4(O[0]),
        .O(S[0]));
  LUT3 #(
    .INIT(8'h43)) 
    i__carry_i_10
       (.I0(currstate[1]),
        .I1(currstate[2]),
        .I2(currstate[0]),
        .O(oper[0]));
  LUT3 #(
    .INIT(8'h2D)) 
    i__carry_i_9
       (.I0(currstate[0]),
        .I1(currstate[2]),
        .I2(currstate[1]),
        .O(oper[1]));
  LUT4 #(
    .INIT(16'h08A2)) 
    \reg1[11]_i_2 
       (.I0(Q[2]),
        .I1(currstate[0]),
        .I2(currstate[2]),
        .I3(currstate[1]),
        .O(A[10]));
  LUT4 #(
    .INIT(16'h08A2)) 
    \reg1[11]_i_3 
       (.I0(Q[1]),
        .I1(currstate[0]),
        .I2(currstate[2]),
        .I3(currstate[1]),
        .O(A[9]));
  LUT4 #(
    .INIT(16'h08A2)) 
    \reg1[11]_i_4 
       (.I0(Q[0]),
        .I1(currstate[0]),
        .I2(currstate[2]),
        .I3(currstate[1]),
        .O(A[8]));
  LUT5 #(
    .INIT(32'hF75DFBAE)) 
    \reg1[11]_i_5 
       (.I0(Q[3]),
        .I1(currstate[0]),
        .I2(currstate[2]),
        .I3(currstate[1]),
        .I4(\reg1_reg[11]_0 [3]),
        .O(\reg1[11]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hF75DFBAE)) 
    \reg1[11]_i_6 
       (.I0(Q[2]),
        .I1(currstate[0]),
        .I2(currstate[2]),
        .I3(currstate[1]),
        .I4(\reg1_reg[11]_0 [2]),
        .O(\reg1[11]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hF75DFBAE)) 
    \reg1[11]_i_7 
       (.I0(Q[1]),
        .I1(currstate[0]),
        .I2(currstate[2]),
        .I3(currstate[1]),
        .I4(\reg1_reg[11]_0 [1]),
        .O(\reg1[11]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hF75DFBAE)) 
    \reg1[11]_i_8 
       (.I0(Q[0]),
        .I1(currstate[0]),
        .I2(currstate[2]),
        .I3(currstate[1]),
        .I4(\reg1_reg[11]_0 [0]),
        .O(\reg1[11]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h67)) 
    \reg1[3]_i_11 
       (.I0(currstate[1]),
        .I1(currstate[2]),
        .I2(currstate[0]),
        .O(\FSM_sequential_currstate_reg[1]_1 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \reg1[3]_i_12 
       (.I0(currstate[0]),
        .I1(currstate[2]),
        .I2(currstate[1]),
        .O(\FSM_sequential_currstate_reg[0]_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \reg1[3]_i_2 
       (.I0(currstate[1]),
        .I1(currstate[2]),
        .I2(currstate[0]),
        .O(\FSM_sequential_currstate_reg[1]_0 ));
  LUT5 #(
    .INIT(32'hC3C80008)) 
    \reg1[3]_i_5 
       (.I0(\reg1_reg[3] ),
        .I1(currstate[1]),
        .I2(currstate[2]),
        .I3(currstate[0]),
        .I4(\reg1_reg[3]_0 ),
        .O(\rp3_reg[1] ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \reg1_reg[11]_i_1 
       (.CI(CO),
        .CO(\NLW_reg1_reg[11]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,A}),
        .O(O),
        .S({\reg1[11]_i_5_n_0 ,\reg1[11]_i_6_n_0 ,\reg1[11]_i_7_n_0 ,\reg1[11]_i_8_n_0 }));
  LUT5 #(
    .INIT(32'hFBAE08A2)) 
    \reg2[0]_i_1 
       (.I0(p_2_in[0]),
        .I1(currstate[0]),
        .I2(currstate[2]),
        .I3(currstate[1]),
        .I4(p_0_in1_in[0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hFBAE08A2)) 
    \reg2[10]_i_1 
       (.I0(p_2_in[10]),
        .I1(currstate[0]),
        .I2(currstate[2]),
        .I3(currstate[1]),
        .I4(p_0_in1_in[10]),
        .O(D[10]));
  LUT5 #(
    .INIT(32'hFBAE08A2)) 
    \reg2[11]_i_1 
       (.I0(p_2_in[11]),
        .I1(currstate[0]),
        .I2(currstate[2]),
        .I3(currstate[1]),
        .I4(p_0_in1_in[11]),
        .O(D[11]));
  LUT5 #(
    .INIT(32'hFBAE08A2)) 
    \reg2[1]_i_1 
       (.I0(p_2_in[1]),
        .I1(currstate[0]),
        .I2(currstate[2]),
        .I3(currstate[1]),
        .I4(p_0_in1_in[1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hFBAE08A2)) 
    \reg2[2]_i_1 
       (.I0(p_2_in[2]),
        .I1(currstate[0]),
        .I2(currstate[2]),
        .I3(currstate[1]),
        .I4(p_0_in1_in[2]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hFBAE08A2)) 
    \reg2[3]_i_1 
       (.I0(p_2_in[3]),
        .I1(currstate[0]),
        .I2(currstate[2]),
        .I3(currstate[1]),
        .I4(p_0_in1_in[3]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hFBAE08A2)) 
    \reg2[4]_i_1 
       (.I0(p_2_in[4]),
        .I1(currstate[0]),
        .I2(currstate[2]),
        .I3(currstate[1]),
        .I4(p_0_in1_in[4]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hFBAE08A2)) 
    \reg2[5]_i_1 
       (.I0(p_2_in[5]),
        .I1(currstate[0]),
        .I2(currstate[2]),
        .I3(currstate[1]),
        .I4(p_0_in1_in[5]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hFBAE08A2)) 
    \reg2[6]_i_1 
       (.I0(p_2_in[6]),
        .I1(currstate[0]),
        .I2(currstate[2]),
        .I3(currstate[1]),
        .I4(p_0_in1_in[6]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hFBAE08A2)) 
    \reg2[7]_i_1 
       (.I0(p_2_in[7]),
        .I1(currstate[0]),
        .I2(currstate[2]),
        .I3(currstate[1]),
        .I4(p_0_in1_in[7]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hFBAE08A2)) 
    \reg2[8]_i_1 
       (.I0(p_2_in[8]),
        .I1(currstate[0]),
        .I2(currstate[2]),
        .I3(currstate[1]),
        .I4(p_0_in1_in[8]),
        .O(D[8]));
  LUT5 #(
    .INIT(32'hFBAE08A2)) 
    \reg2[9]_i_1 
       (.I0(p_2_in[9]),
        .I1(currstate[0]),
        .I2(currstate[2]),
        .I3(currstate[1]),
        .I4(p_0_in1_in[9]),
        .O(D[9]));
  LUT3 #(
    .INIT(8'hBE)) 
    \reg3[11]_i_1 
       (.I0(currstate[1]),
        .I1(currstate[0]),
        .I2(currstate[2]),
        .O(E));
endmodule

module datapath
   (Q,
    p_0_in1_in,
    p_2_in,
    \rp1_reg[1]_0 ,
    \rp3_reg[1]_0 ,
    \reg3_reg[11]_0 ,
    CO,
    \reg4_reg[11]_0 ,
    \reg2_reg[11]_0 ,
    DI,
    \reg2_reg[11]_1 ,
    \reg2_reg[11]_2 ,
    S,
    currstate,
    \reg1_reg[3]_0 ,
    \reg1_reg[3]_1 ,
    oper,
    \reg1_reg[3]_2 ,
    \reg1_reg[3]_3 ,
    SR,
    D,
    CLK,
    \rq2_reg[7]_0 ,
    E,
    \rp3_reg[7]_0 ,
    \rp1_reg[7]_0 ,
    \rq3_reg[7]_0 ,
    \rq1_reg[7]_0 ,
    \reg1_reg[11]_0 ,
    \rp4_reg[7]_0 ,
    \rp2_reg[7]_0 ,
    \reg2_reg[11]_3 ,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5,
    lopt_6,
    lopt_7,
    lopt_8);
  output [3:0]Q;
  output [11:0]p_0_in1_in;
  output [11:0]p_2_in;
  output [0:0]\rp1_reg[1]_0 ;
  output [0:0]\rp3_reg[1]_0 ;
  output [3:0]\reg3_reg[11]_0 ;
  output [0:0]CO;
  output [3:0]\reg4_reg[11]_0 ;
  output [11:0]\reg2_reg[11]_0 ;
  input [2:0]DI;
  input [2:0]\reg2_reg[11]_1 ;
  input [3:0]\reg2_reg[11]_2 ;
  input [3:0]S;
  input [2:0]currstate;
  input [0:0]\reg1_reg[3]_0 ;
  input \reg1_reg[3]_1 ;
  input [1:0]oper;
  input \reg1_reg[3]_2 ;
  input \reg1_reg[3]_3 ;
  input [0:0]SR;
  input [7:0]D;
  input CLK;
  input [7:0]\rq2_reg[7]_0 ;
  input [0:0]E;
  input [7:0]\rp3_reg[7]_0 ;
  input [7:0]\rp1_reg[7]_0 ;
  input [7:0]\rq3_reg[7]_0 ;
  input [7:0]\rq1_reg[7]_0 ;
  input [3:0]\reg1_reg[11]_0 ;
  input [7:0]\rp4_reg[7]_0 ;
  input [7:0]\rp2_reg[7]_0 ;
  input [11:0]\reg2_reg[11]_3 ;
  output lopt;
  output lopt_1;
  output lopt_2;
  output lopt_3;
  output lopt_4;
  output lopt_5;
  output lopt_6;
  output lopt_7;
  output lopt_8;

  wire [7:0]A;
  wire CLK;
  wire [0:0]CO;
  wire [7:0]D;
  wire [2:0]DI;
  wire [0:0]E;
  wire [3:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire \_inferred__2/i__carry__0_n_0 ;
  wire \_inferred__2/i__carry_n_0 ;
  wire \_inferred__3/i__carry__0_n_0 ;
  wire \_inferred__3/i__carry_n_0 ;
  wire [2:0]currstate;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_8_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8_n_0;
  wire [11:2]mul1;
  wire mul1_ex__0_carry__0_i_10_n_0;
  wire mul1_ex__0_carry__0_i_11_n_0;
  wire mul1_ex__0_carry__0_i_1_n_0;
  wire mul1_ex__0_carry__0_i_2_n_0;
  wire mul1_ex__0_carry__0_i_3_n_0;
  wire mul1_ex__0_carry__0_i_4_n_0;
  wire mul1_ex__0_carry__0_i_5_n_0;
  wire mul1_ex__0_carry__0_i_6_n_0;
  wire mul1_ex__0_carry__0_i_7_n_0;
  wire mul1_ex__0_carry__0_i_8_n_0;
  wire mul1_ex__0_carry__0_i_9_n_0;
  wire mul1_ex__0_carry__0_n_0;
  wire mul1_ex__0_carry__0_n_4;
  wire mul1_ex__0_carry__0_n_5;
  wire mul1_ex__0_carry__0_n_6;
  wire mul1_ex__0_carry__0_n_7;
  wire mul1_ex__0_carry__1_i_1_n_0;
  wire mul1_ex__0_carry__1_i_2_n_0;
  wire mul1_ex__0_carry__1_i_3_n_0;
  wire mul1_ex__0_carry__1_i_4_n_0;
  wire mul1_ex__0_carry__1_n_1;
  wire mul1_ex__0_carry__1_n_6;
  wire mul1_ex__0_carry__1_n_7;
  wire mul1_ex__0_carry_i_1_n_0;
  wire mul1_ex__0_carry_i_2_n_0;
  wire mul1_ex__0_carry_i_3_n_0;
  wire mul1_ex__0_carry_i_4_n_0;
  wire mul1_ex__0_carry_i_5_n_0;
  wire mul1_ex__0_carry_n_0;
  wire mul1_ex__0_carry_n_4;
  wire mul1_ex__0_carry_n_5;
  wire mul1_ex__31_carry__0_i_1_n_0;
  wire mul1_ex__31_carry__0_i_2_n_0;
  wire mul1_ex__31_carry__0_i_3_n_0;
  wire mul1_ex__31_carry__0_i_4_n_0;
  wire mul1_ex__31_carry__0_i_5_n_0;
  wire mul1_ex__31_carry__0_i_6_n_0;
  wire mul1_ex__31_carry__0_i_7_n_0;
  wire mul1_ex__31_carry__0_n_0;
  wire mul1_ex__31_carry__0_n_4;
  wire mul1_ex__31_carry__0_n_5;
  wire mul1_ex__31_carry__0_n_6;
  wire mul1_ex__31_carry__0_n_7;
  wire mul1_ex__31_carry__1_i_1_n_0;
  wire mul1_ex__31_carry__1_n_7;
  wire mul1_ex__31_carry_i_1_n_0;
  wire mul1_ex__31_carry_i_2_n_0;
  wire mul1_ex__31_carry_i_3_n_0;
  wire mul1_ex__31_carry_i_4_n_0;
  wire mul1_ex__31_carry_i_5_n_0;
  wire mul1_ex__31_carry_i_6_n_0;
  wire mul1_ex__31_carry_i_7_n_0;
  wire mul1_ex__31_carry_n_0;
  wire mul1_ex__31_carry_n_4;
  wire mul1_ex__31_carry_n_5;
  wire mul1_ex__31_carry_n_6;
  wire mul1_ex__31_carry_n_7;
  wire mul1_ex__56_carry__0_i_1_n_0;
  wire mul1_ex__56_carry__0_i_2_n_0;
  wire mul1_ex__56_carry__0_i_3_n_0;
  wire mul1_ex__56_carry__0_i_4_n_0;
  wire mul1_ex__56_carry__0_i_5_n_0;
  wire mul1_ex__56_carry__0_n_6;
  wire mul1_ex__56_carry__0_n_7;
  wire mul1_ex__56_carry_i_1_n_0;
  wire mul1_ex__56_carry_i_2_n_0;
  wire mul1_ex__56_carry_i_3_n_0;
  wire mul1_ex__56_carry_i_4_n_0;
  wire mul1_ex__56_carry_i_5_n_0;
  wire mul1_ex__56_carry_i_6_n_0;
  wire mul1_ex__56_carry_i_7_n_0;
  wire mul1_ex__56_carry_i_8_n_0;
  wire mul1_ex__56_carry_n_0;
  wire mul1_ex__56_carry_n_4;
  wire mul1_ex__56_carry_n_5;
  wire mul1_ex__56_carry_n_6;
  wire mul1_ex__56_carry_n_7;
  wire mul1_ex__72_carry__0_i_1_n_0;
  wire mul1_ex__72_carry__0_i_2_n_0;
  wire mul1_ex__72_carry__0_i_3_n_0;
  wire mul1_ex__72_carry__0_i_4_n_0;
  wire mul1_ex__72_carry__0_i_5_n_0;
  wire mul1_ex__72_carry__0_i_6_n_0;
  wire mul1_ex__72_carry__0_i_7_n_0;
  wire mul1_ex__72_carry__0_i_8_n_0;
  wire mul1_ex__72_carry_i_1_n_0;
  wire mul1_ex__72_carry_i_2_n_0;
  wire mul1_ex__72_carry_i_3_n_0;
  wire mul1_ex__72_carry_i_4_n_0;
  wire mul1_ex__72_carry_i_5_n_0;
  wire mul1_ex__72_carry_i_6_n_0;
  wire mul1_ex__72_carry_i_7_n_0;
  wire mul1_ex__72_carry_i_8_n_0;
  wire mul1_ex__72_carry_n_0;
  wire [11:2]mul2;
  wire [1:0]oper;
  wire [11:0]p_0_in1_in;
  wire [7:0]p_1_in;
  wire [11:0]p_2_in;
  wire [7:0]reg1;
  wire \reg1[3]_i_10_n_0 ;
  wire \reg1[3]_i_7_n_0 ;
  wire \reg1[3]_i_8_n_0 ;
  wire \reg1[3]_i_9_n_0 ;
  wire \reg1[7]_i_6_n_0 ;
  wire \reg1[7]_i_7_n_0 ;
  wire \reg1[7]_i_8_n_0 ;
  wire \reg1[7]_i_9_n_0 ;
  wire [3:0]\reg1_reg[11]_0 ;
  wire [0:0]\reg1_reg[3]_0 ;
  wire \reg1_reg[3]_1 ;
  wire \reg1_reg[3]_2 ;
  wire \reg1_reg[3]_3 ;
  wire \reg1_reg[3]_i_1_n_0 ;
  wire \reg1_reg[3]_i_1_n_4 ;
  wire \reg1_reg[3]_i_1_n_5 ;
  wire \reg1_reg[3]_i_1_n_6 ;
  wire \reg1_reg[3]_i_1_n_7 ;
  wire \reg1_reg[7]_i_1_n_4 ;
  wire \reg1_reg[7]_i_1_n_5 ;
  wire \reg1_reg[7]_i_1_n_6 ;
  wire \reg1_reg[7]_i_1_n_7 ;
  wire \reg2_reg[0]_lopt_replica_1 ;
  wire [11:0]\reg2_reg[11]_0 ;
  wire [2:0]\reg2_reg[11]_1 ;
  wire [3:0]\reg2_reg[11]_2 ;
  wire [11:0]\reg2_reg[11]_3 ;
  wire \reg2_reg[1]_lopt_replica_1 ;
  wire \reg2_reg[2]_lopt_replica_1 ;
  wire \reg2_reg[3]_lopt_replica_1 ;
  wire \reg2_reg[4]_lopt_replica_1 ;
  wire \reg2_reg[5]_lopt_replica_1 ;
  wire \reg2_reg[6]_lopt_replica_1 ;
  wire \reg2_reg[7]_lopt_replica_1 ;
  wire \reg2_reg[8]_lopt_replica_1 ;
  wire [7:0]reg3;
  wire [3:0]\reg3_reg[11]_0 ;
  wire [7:0]reg4;
  wire \reg4[11]_i_13_n_0 ;
  wire \reg4[11]_i_15_n_0 ;
  wire \reg4[11]_i_16_n_0 ;
  wire \reg4[11]_i_17_n_0 ;
  wire \reg4[11]_i_18_n_0 ;
  wire \reg4[11]_i_19_n_0 ;
  wire \reg4[11]_i_20_n_0 ;
  wire \reg4[11]_i_21_n_0 ;
  wire \reg4[11]_i_22_n_0 ;
  wire \reg4[11]_i_23_n_0 ;
  wire \reg4[11]_i_24_n_0 ;
  wire \reg4[11]_i_25_n_0 ;
  wire \reg4[11]_i_26_n_0 ;
  wire \reg4[11]_i_27_n_0 ;
  wire \reg4[11]_i_28_n_0 ;
  wire \reg4[11]_i_29_n_0 ;
  wire \reg4[11]_i_2_n_0 ;
  wire \reg4[11]_i_30_n_0 ;
  wire \reg4[11]_i_31_n_0 ;
  wire \reg4[11]_i_32_n_0 ;
  wire \reg4[11]_i_33_n_0 ;
  wire \reg4[11]_i_34_n_0 ;
  wire \reg4[11]_i_35_n_0 ;
  wire \reg4[11]_i_36_n_0 ;
  wire \reg4[11]_i_37_n_0 ;
  wire \reg4[11]_i_38_n_0 ;
  wire \reg4[11]_i_39_n_0 ;
  wire \reg4[11]_i_3_n_0 ;
  wire \reg4[11]_i_40_n_0 ;
  wire \reg4[11]_i_42_n_0 ;
  wire \reg4[11]_i_43_n_0 ;
  wire \reg4[11]_i_44_n_0 ;
  wire \reg4[11]_i_45_n_0 ;
  wire \reg4[11]_i_46_n_0 ;
  wire \reg4[11]_i_47_n_0 ;
  wire \reg4[11]_i_48_n_0 ;
  wire \reg4[11]_i_49_n_0 ;
  wire \reg4[11]_i_4_n_0 ;
  wire \reg4[11]_i_50_n_0 ;
  wire \reg4[11]_i_51_n_0 ;
  wire \reg4[11]_i_5_n_0 ;
  wire \reg4[11]_i_6_n_0 ;
  wire \reg4[11]_i_7_n_0 ;
  wire \reg4[11]_i_8_n_0 ;
  wire \reg4[2]_i_2_n_0 ;
  wire \reg4[2]_i_3_n_0 ;
  wire \reg4[2]_i_4_n_0 ;
  wire \reg4[2]_i_5_n_0 ;
  wire \reg4[2]_i_6_n_0 ;
  wire \reg4[3]_i_3_n_0 ;
  wire \reg4[3]_i_4_n_0 ;
  wire \reg4[3]_i_5_n_0 ;
  wire \reg4[3]_i_6_n_0 ;
  wire \reg4[3]_i_7_n_0 ;
  wire \reg4[3]_i_8_n_0 ;
  wire \reg4[3]_i_9_n_0 ;
  wire \reg4[7]_i_2_n_0 ;
  wire \reg4[7]_i_3_n_0 ;
  wire \reg4[7]_i_4_n_0 ;
  wire \reg4[7]_i_5_n_0 ;
  wire \reg4[7]_i_6_n_0 ;
  wire \reg4[7]_i_7_n_0 ;
  wire \reg4[7]_i_8_n_0 ;
  wire \reg4[7]_i_9_n_0 ;
  wire [3:0]\reg4_reg[11]_0 ;
  wire \reg4_reg[11]_i_10_n_0 ;
  wire \reg4_reg[11]_i_10_n_4 ;
  wire \reg4_reg[11]_i_10_n_5 ;
  wire \reg4_reg[11]_i_10_n_6 ;
  wire \reg4_reg[11]_i_10_n_7 ;
  wire \reg4_reg[11]_i_11_n_1 ;
  wire \reg4_reg[11]_i_11_n_6 ;
  wire \reg4_reg[11]_i_11_n_7 ;
  wire \reg4_reg[11]_i_12_n_0 ;
  wire \reg4_reg[11]_i_12_n_4 ;
  wire \reg4_reg[11]_i_12_n_5 ;
  wire \reg4_reg[11]_i_12_n_6 ;
  wire \reg4_reg[11]_i_12_n_7 ;
  wire \reg4_reg[11]_i_14_n_6 ;
  wire \reg4_reg[11]_i_14_n_7 ;
  wire \reg4_reg[11]_i_41_n_7 ;
  wire \reg4_reg[11]_i_9_n_0 ;
  wire \reg4_reg[11]_i_9_n_4 ;
  wire \reg4_reg[11]_i_9_n_5 ;
  wire \reg4_reg[11]_i_9_n_6 ;
  wire \reg4_reg[11]_i_9_n_7 ;
  wire \reg4_reg[2]_i_1_n_0 ;
  wire \reg4_reg[2]_i_1_n_4 ;
  wire \reg4_reg[2]_i_1_n_5 ;
  wire \reg4_reg[3]_i_2_n_0 ;
  wire \reg4_reg[3]_i_2_n_4 ;
  wire \reg4_reg[3]_i_2_n_5 ;
  wire \reg4_reg[3]_i_2_n_6 ;
  wire \reg4_reg[3]_i_2_n_7 ;
  wire \reg4_reg[7]_i_1_n_0 ;
  wire [7:0]rp1;
  wire [0:0]\rp1_reg[1]_0 ;
  wire [7:0]\rp1_reg[7]_0 ;
  wire [7:0]rp2;
  wire [7:0]\rp2_reg[7]_0 ;
  wire [7:0]rp3;
  wire [0:0]\rp3_reg[1]_0 ;
  wire [7:0]\rp3_reg[7]_0 ;
  wire [7:0]rp4;
  wire [7:0]\rp4_reg[7]_0 ;
  wire [7:0]rq1;
  wire [7:0]\rq1_reg[7]_0 ;
  wire [7:0]rq2;
  wire [7:0]\rq2_reg[7]_0 ;
  wire [7:0]rq3;
  wire [7:0]\rq3_reg[7]_0 ;
  wire [7:0]rq4;
  wire [2:0]\NLW__inferred__2/i__carry_CO_UNCONNECTED ;
  wire [2:0]\NLW__inferred__2/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW__inferred__2/i__carry__1_CO_UNCONNECTED ;
  wire [2:0]\NLW__inferred__3/i__carry_CO_UNCONNECTED ;
  wire [2:0]\NLW__inferred__3/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW__inferred__3/i__carry__1_CO_UNCONNECTED ;
  wire [2:0]NLW_mul1_ex__0_carry_CO_UNCONNECTED;
  wire [0:0]NLW_mul1_ex__0_carry_O_UNCONNECTED;
  wire [2:0]NLW_mul1_ex__0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_mul1_ex__0_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_mul1_ex__0_carry__1_O_UNCONNECTED;
  wire [2:0]NLW_mul1_ex__31_carry_CO_UNCONNECTED;
  wire [2:0]NLW_mul1_ex__31_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_mul1_ex__31_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_mul1_ex__31_carry__1_O_UNCONNECTED;
  wire [2:0]NLW_mul1_ex__56_carry_CO_UNCONNECTED;
  wire [3:0]NLW_mul1_ex__56_carry__0_CO_UNCONNECTED;
  wire [3:2]NLW_mul1_ex__56_carry__0_O_UNCONNECTED;
  wire [2:0]NLW_mul1_ex__72_carry_CO_UNCONNECTED;
  wire [3:0]NLW_mul1_ex__72_carry__0_CO_UNCONNECTED;
  wire [2:0]\NLW_reg1_reg[3]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_reg1_reg[7]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_reg4_reg[11]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_reg4_reg[11]_i_10_CO_UNCONNECTED ;
  wire [3:0]\NLW_reg4_reg[11]_i_11_CO_UNCONNECTED ;
  wire [3:2]\NLW_reg4_reg[11]_i_11_O_UNCONNECTED ;
  wire [2:0]\NLW_reg4_reg[11]_i_12_CO_UNCONNECTED ;
  wire [3:0]\NLW_reg4_reg[11]_i_14_CO_UNCONNECTED ;
  wire [3:2]\NLW_reg4_reg[11]_i_14_O_UNCONNECTED ;
  wire [3:0]\NLW_reg4_reg[11]_i_41_CO_UNCONNECTED ;
  wire [3:1]\NLW_reg4_reg[11]_i_41_O_UNCONNECTED ;
  wire [2:0]\NLW_reg4_reg[11]_i_9_CO_UNCONNECTED ;
  wire [2:0]\NLW_reg4_reg[2]_i_1_CO_UNCONNECTED ;
  wire [0:0]\NLW_reg4_reg[2]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_reg4_reg[3]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_reg4_reg[7]_i_1_CO_UNCONNECTED ;

  assign lopt = \reg2_reg[0]_lopt_replica_1 ;
  assign lopt_1 = \reg2_reg[1]_lopt_replica_1 ;
  assign lopt_2 = \reg2_reg[2]_lopt_replica_1 ;
  assign lopt_3 = \reg2_reg[3]_lopt_replica_1 ;
  assign lopt_4 = \reg2_reg[4]_lopt_replica_1 ;
  assign lopt_5 = \reg2_reg[5]_lopt_replica_1 ;
  assign lopt_6 = \reg2_reg[6]_lopt_replica_1 ;
  assign lopt_7 = \reg2_reg[7]_lopt_replica_1 ;
  assign lopt_8 = \reg2_reg[8]_lopt_replica_1 ;
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \_inferred__2/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__2/i__carry_n_0 ,\NLW__inferred__2/i__carry_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI(p_1_in[3:0]),
        .O(p_0_in1_in[3:0]),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \_inferred__2/i__carry__0 
       (.CI(\_inferred__2/i__carry_n_0 ),
        .CO({\_inferred__2/i__carry__0_n_0 ,\NLW__inferred__2/i__carry__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(p_1_in[7:4]),
        .O(p_0_in1_in[7:4]),
        .S({i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0,i__carry__0_i_8_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \_inferred__2/i__carry__1 
       (.CI(\_inferred__2/i__carry__0_n_0 ),
        .CO(\NLW__inferred__2/i__carry__1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\reg2_reg[11]_1 }),
        .O(p_0_in1_in[11:8]),
        .S(\reg2_reg[11]_2 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \_inferred__3/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__3/i__carry_n_0 ,\NLW__inferred__3/i__carry_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(p_1_in[3:0]),
        .O(p_2_in[3:0]),
        .S({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \_inferred__3/i__carry__0 
       (.CI(\_inferred__3/i__carry_n_0 ),
        .CO({\_inferred__3/i__carry__0_n_0 ,\NLW__inferred__3/i__carry__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(p_1_in[7:4]),
        .O(p_2_in[7:4]),
        .S({i__carry__0_i_1__0_n_0,i__carry__0_i_2__0_n_0,i__carry__0_i_3__0_n_0,i__carry__0_i_4__0_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \_inferred__3/i__carry__1 
       (.CI(\_inferred__3/i__carry__0_n_0 ),
        .CO(\NLW__inferred__3/i__carry__1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,DI}),
        .O(p_2_in[11:8]),
        .S(S));
  LUT6 #(
    .INIT(64'hAAFCFFAFAA0C00A0)) 
    i__carry__0_i_1
       (.I0(rp2[7]),
        .I1(rp4[7]),
        .I2(currstate[0]),
        .I3(currstate[2]),
        .I4(currstate[1]),
        .I5(\reg1_reg[7]_i_1_n_4 ),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'h596A5959596A6A6A)) 
    i__carry__0_i_1__0
       (.I0(p_1_in[7]),
        .I1(oper[1]),
        .I2(reg1[7]),
        .I3(rq4[7]),
        .I4(oper[0]),
        .I5(rq2[7]),
        .O(i__carry__0_i_1__0_n_0));
  LUT6 #(
    .INIT(64'hAAFCFFAFAA0C00A0)) 
    i__carry__0_i_2
       (.I0(rp2[6]),
        .I1(rp4[6]),
        .I2(currstate[0]),
        .I3(currstate[2]),
        .I4(currstate[1]),
        .I5(\reg1_reg[7]_i_1_n_5 ),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'h596A5959596A6A6A)) 
    i__carry__0_i_2__0
       (.I0(p_1_in[6]),
        .I1(oper[1]),
        .I2(reg1[6]),
        .I3(rq4[6]),
        .I4(oper[0]),
        .I5(rq2[6]),
        .O(i__carry__0_i_2__0_n_0));
  LUT6 #(
    .INIT(64'hAAFCFFAFAA0C00A0)) 
    i__carry__0_i_3
       (.I0(rp2[5]),
        .I1(rp4[5]),
        .I2(currstate[0]),
        .I3(currstate[2]),
        .I4(currstate[1]),
        .I5(\reg1_reg[7]_i_1_n_6 ),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'h596A5959596A6A6A)) 
    i__carry__0_i_3__0
       (.I0(p_1_in[5]),
        .I1(oper[1]),
        .I2(reg1[5]),
        .I3(rq4[5]),
        .I4(oper[0]),
        .I5(rq2[5]),
        .O(i__carry__0_i_3__0_n_0));
  LUT6 #(
    .INIT(64'hAAFCFFAFAA0C00A0)) 
    i__carry__0_i_4
       (.I0(rp2[4]),
        .I1(rp4[4]),
        .I2(currstate[0]),
        .I3(currstate[2]),
        .I4(currstate[1]),
        .I5(\reg1_reg[7]_i_1_n_7 ),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'h596A5959596A6A6A)) 
    i__carry__0_i_4__0
       (.I0(p_1_in[4]),
        .I1(oper[1]),
        .I2(reg1[4]),
        .I3(rq4[4]),
        .I4(oper[0]),
        .I5(rq2[4]),
        .O(i__carry__0_i_4__0_n_0));
  LUT6 #(
    .INIT(64'hA695A695A6A69595)) 
    i__carry__0_i_5
       (.I0(p_1_in[7]),
        .I1(oper[1]),
        .I2(reg1[7]),
        .I3(rq4[7]),
        .I4(rq2[7]),
        .I5(oper[0]),
        .O(i__carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'hA695A695A6A69595)) 
    i__carry__0_i_6
       (.I0(p_1_in[6]),
        .I1(oper[1]),
        .I2(reg1[6]),
        .I3(rq4[6]),
        .I4(rq2[6]),
        .I5(oper[0]),
        .O(i__carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'hA695A695A6A69595)) 
    i__carry__0_i_7
       (.I0(p_1_in[5]),
        .I1(oper[1]),
        .I2(reg1[5]),
        .I3(rq4[5]),
        .I4(rq2[5]),
        .I5(oper[0]),
        .O(i__carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'hA695A695A6A69595)) 
    i__carry__0_i_8
       (.I0(p_1_in[4]),
        .I1(oper[1]),
        .I2(reg1[4]),
        .I3(rq4[4]),
        .I4(rq2[4]),
        .I5(oper[0]),
        .O(i__carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'hAAFCFFAFAA0C00A0)) 
    i__carry_i_1
       (.I0(rp2[3]),
        .I1(rp4[3]),
        .I2(currstate[0]),
        .I3(currstate[2]),
        .I4(currstate[1]),
        .I5(\reg1_reg[3]_i_1_n_4 ),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'h596A5959596A6A6A)) 
    i__carry_i_1__0
       (.I0(p_1_in[3]),
        .I1(oper[1]),
        .I2(reg1[3]),
        .I3(rq4[3]),
        .I4(oper[0]),
        .I5(rq2[3]),
        .O(i__carry_i_1__0_n_0));
  LUT6 #(
    .INIT(64'hAAFCFFAFAA0C00A0)) 
    i__carry_i_2
       (.I0(rp2[2]),
        .I1(rp4[2]),
        .I2(currstate[0]),
        .I3(currstate[2]),
        .I4(currstate[1]),
        .I5(\reg1_reg[3]_i_1_n_5 ),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'h596A5959596A6A6A)) 
    i__carry_i_2__0
       (.I0(p_1_in[2]),
        .I1(oper[1]),
        .I2(reg1[2]),
        .I3(rq4[2]),
        .I4(oper[0]),
        .I5(rq2[2]),
        .O(i__carry_i_2__0_n_0));
  LUT6 #(
    .INIT(64'hAAFCFFAFAA0C00A0)) 
    i__carry_i_3
       (.I0(rp2[1]),
        .I1(rp4[1]),
        .I2(currstate[0]),
        .I3(currstate[2]),
        .I4(currstate[1]),
        .I5(\reg1_reg[3]_i_1_n_6 ),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'h596A5959596A6A6A)) 
    i__carry_i_3__0
       (.I0(p_1_in[1]),
        .I1(oper[1]),
        .I2(reg1[1]),
        .I3(rq4[1]),
        .I4(oper[0]),
        .I5(rq2[1]),
        .O(i__carry_i_3__0_n_0));
  LUT6 #(
    .INIT(64'hAAFCFFAFAA0C00A0)) 
    i__carry_i_4
       (.I0(rp2[0]),
        .I1(rp4[0]),
        .I2(currstate[0]),
        .I3(currstate[2]),
        .I4(currstate[1]),
        .I5(\reg1_reg[3]_i_1_n_7 ),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'h596A5959596A6A6A)) 
    i__carry_i_4__0
       (.I0(p_1_in[0]),
        .I1(oper[1]),
        .I2(reg1[0]),
        .I3(rq4[0]),
        .I4(oper[0]),
        .I5(rq2[0]),
        .O(i__carry_i_4__0_n_0));
  LUT6 #(
    .INIT(64'hA695A695A6A69595)) 
    i__carry_i_5
       (.I0(p_1_in[3]),
        .I1(oper[1]),
        .I2(reg1[3]),
        .I3(rq4[3]),
        .I4(rq2[3]),
        .I5(oper[0]),
        .O(i__carry_i_5_n_0));
  LUT6 #(
    .INIT(64'hA695A695A6A69595)) 
    i__carry_i_6
       (.I0(p_1_in[2]),
        .I1(oper[1]),
        .I2(reg1[2]),
        .I3(rq4[2]),
        .I4(rq2[2]),
        .I5(oper[0]),
        .O(i__carry_i_6_n_0));
  LUT6 #(
    .INIT(64'hA695A695A6A69595)) 
    i__carry_i_7
       (.I0(p_1_in[1]),
        .I1(oper[1]),
        .I2(reg1[1]),
        .I3(rq4[1]),
        .I4(rq2[1]),
        .I5(oper[0]),
        .O(i__carry_i_7_n_0));
  LUT6 #(
    .INIT(64'hA695A695A6A69595)) 
    i__carry_i_8
       (.I0(p_1_in[0]),
        .I1(oper[1]),
        .I2(reg1[0]),
        .I3(rq4[0]),
        .I4(rq2[0]),
        .I5(oper[0]),
        .O(i__carry_i_8_n_0));
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 mul1_ex__0_carry
       (.CI(1'b0),
        .CO({mul1_ex__0_carry_n_0,NLW_mul1_ex__0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({mul1_ex__0_carry_i_1_n_0,mul1_ex__0_carry_i_2_n_0,reg1[1],1'b0}),
        .O({mul1_ex__0_carry_n_4,mul1_ex__0_carry_n_5,mul1[2],NLW_mul1_ex__0_carry_O_UNCONNECTED[0]}),
        .S({mul1_ex__0_carry_i_3_n_0,mul1_ex__0_carry_i_4_n_0,mul1_ex__0_carry_i_5_n_0,1'b0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 mul1_ex__0_carry__0
       (.CI(mul1_ex__0_carry_n_0),
        .CO({mul1_ex__0_carry__0_n_0,NLW_mul1_ex__0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({mul1_ex__0_carry__0_i_1_n_0,mul1_ex__0_carry__0_i_2_n_0,mul1_ex__0_carry__0_i_3_n_0,mul1_ex__0_carry__0_i_4_n_0}),
        .O({mul1_ex__0_carry__0_n_4,mul1_ex__0_carry__0_n_5,mul1_ex__0_carry__0_n_6,mul1_ex__0_carry__0_n_7}),
        .S({mul1_ex__0_carry__0_i_5_n_0,mul1_ex__0_carry__0_i_6_n_0,mul1_ex__0_carry__0_i_7_n_0,mul1_ex__0_carry__0_i_8_n_0}));
  LUT6 #(
    .INIT(64'hF880808088000000)) 
    mul1_ex__0_carry__0_i_1
       (.I0(reg1[6]),
        .I1(reg1[1]),
        .I2(reg1[7]),
        .I3(reg1[2]),
        .I4(reg1[5]),
        .I5(reg1[0]),
        .O(mul1_ex__0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    mul1_ex__0_carry__0_i_10
       (.I0(reg1[6]),
        .I1(reg1[1]),
        .O(mul1_ex__0_carry__0_i_10_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    mul1_ex__0_carry__0_i_11
       (.I0(reg1[6]),
        .I1(reg1[0]),
        .O(mul1_ex__0_carry__0_i_11_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    mul1_ex__0_carry__0_i_2
       (.I0(reg1[6]),
        .I1(reg1[0]),
        .I2(reg1[4]),
        .I3(reg1[2]),
        .I4(reg1[5]),
        .I5(reg1[1]),
        .O(mul1_ex__0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    mul1_ex__0_carry__0_i_3
       (.I0(reg1[1]),
        .I1(reg1[4]),
        .I2(reg1[5]),
        .I3(reg1[0]),
        .I4(reg1[2]),
        .I5(reg1[3]),
        .O(mul1_ex__0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    mul1_ex__0_carry__0_i_4
       (.I0(reg1[2]),
        .I1(reg1[1]),
        .O(mul1_ex__0_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    mul1_ex__0_carry__0_i_5
       (.I0(mul1_ex__0_carry__0_i_1_n_0),
        .I1(reg1[2]),
        .I2(reg1[6]),
        .I3(mul1_ex__0_carry__0_i_9_n_0),
        .I4(Q[0]),
        .I5(reg1[0]),
        .O(mul1_ex__0_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h9666699969996999)) 
    mul1_ex__0_carry__0_i_6
       (.I0(mul1_ex__0_carry__0_i_2_n_0),
        .I1(mul1_ex__0_carry__0_i_10_n_0),
        .I2(reg1[5]),
        .I3(reg1[2]),
        .I4(reg1[7]),
        .I5(reg1[0]),
        .O(mul1_ex__0_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h956A6A6A6A959595)) 
    mul1_ex__0_carry__0_i_7
       (.I0(mul1_ex__0_carry__0_i_3_n_0),
        .I1(reg1[1]),
        .I2(reg1[5]),
        .I3(reg1[2]),
        .I4(reg1[4]),
        .I5(mul1_ex__0_carry__0_i_11_n_0),
        .O(mul1_ex__0_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h47B7B848B848B848)) 
    mul1_ex__0_carry__0_i_8
       (.I0(reg1[3]),
        .I1(reg1[2]),
        .I2(reg1[1]),
        .I3(reg1[4]),
        .I4(reg1[5]),
        .I5(reg1[0]),
        .O(mul1_ex__0_carry__0_i_8_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    mul1_ex__0_carry__0_i_9
       (.I0(reg1[7]),
        .I1(reg1[1]),
        .O(mul1_ex__0_carry__0_i_9_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 mul1_ex__0_carry__1
       (.CI(mul1_ex__0_carry__0_n_0),
        .CO({NLW_mul1_ex__0_carry__1_CO_UNCONNECTED[3],mul1_ex__0_carry__1_n_1,NLW_mul1_ex__0_carry__1_CO_UNCONNECTED[1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,mul1_ex__0_carry__1_i_1_n_0,mul1_ex__0_carry__1_i_2_n_0}),
        .O({NLW_mul1_ex__0_carry__1_O_UNCONNECTED[3:2],mul1_ex__0_carry__1_n_6,mul1_ex__0_carry__1_n_7}),
        .S({1'b0,1'b1,mul1_ex__0_carry__1_i_3_n_0,mul1_ex__0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h7)) 
    mul1_ex__0_carry__1_i_1
       (.I0(Q[0]),
        .I1(reg1[2]),
        .O(mul1_ex__0_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h8777)) 
    mul1_ex__0_carry__1_i_2
       (.I0(reg1[2]),
        .I1(reg1[7]),
        .I2(reg1[1]),
        .I3(Q[0]),
        .O(mul1_ex__0_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F5F)) 
    mul1_ex__0_carry__1_i_3
       (.I0(reg1[7]),
        .I1(reg1[1]),
        .I2(reg1[2]),
        .I3(Q[0]),
        .O(mul1_ex__0_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h4F2A25D530FF0FFF)) 
    mul1_ex__0_carry__1_i_4
       (.I0(reg1[6]),
        .I1(reg1[0]),
        .I2(Q[0]),
        .I3(reg1[1]),
        .I4(reg1[7]),
        .I5(reg1[2]),
        .O(mul1_ex__0_carry__1_i_4_n_0));
  LUT3 #(
    .INIT(8'hAC)) 
    mul1_ex__0_carry_i_1
       (.I0(reg1[3]),
        .I1(reg1[2]),
        .I2(reg1[1]),
        .O(mul1_ex__0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    mul1_ex__0_carry_i_2
       (.I0(reg1[3]),
        .I1(reg1[0]),
        .O(mul1_ex__0_carry_i_2_n_0));
  LUT5 #(
    .INIT(32'h1BE4E4E4)) 
    mul1_ex__0_carry_i_3
       (.I0(reg1[1]),
        .I1(reg1[2]),
        .I2(reg1[3]),
        .I3(reg1[0]),
        .I4(reg1[4]),
        .O(mul1_ex__0_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h48)) 
    mul1_ex__0_carry_i_4
       (.I0(reg1[3]),
        .I1(reg1[0]),
        .I2(reg1[2]),
        .O(mul1_ex__0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h4)) 
    mul1_ex__0_carry_i_5
       (.I0(reg1[0]),
        .I1(reg1[1]),
        .O(mul1_ex__0_carry_i_5_n_0));
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 mul1_ex__31_carry
       (.CI(1'b0),
        .CO({mul1_ex__31_carry_n_0,NLW_mul1_ex__31_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({mul1_ex__31_carry_i_1_n_0,mul1_ex__31_carry_i_2_n_0,mul1_ex__31_carry_i_3_n_0,1'b0}),
        .O({mul1_ex__31_carry_n_4,mul1_ex__31_carry_n_5,mul1_ex__31_carry_n_6,mul1_ex__31_carry_n_7}),
        .S({mul1_ex__31_carry_i_4_n_0,mul1_ex__31_carry_i_5_n_0,mul1_ex__31_carry_i_6_n_0,mul1_ex__31_carry_i_7_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 mul1_ex__31_carry__0
       (.CI(mul1_ex__31_carry_n_0),
        .CO({mul1_ex__31_carry__0_n_0,NLW_mul1_ex__31_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({mul1_ex__31_carry__0_i_1_n_0,mul1_ex__31_carry__0_i_2_n_0,reg1[4],mul1_ex__31_carry__0_i_3_n_0}),
        .O({mul1_ex__31_carry__0_n_4,mul1_ex__31_carry__0_n_5,mul1_ex__31_carry__0_n_6,mul1_ex__31_carry__0_n_7}),
        .S({mul1_ex__31_carry__0_i_4_n_0,mul1_ex__31_carry__0_i_5_n_0,mul1_ex__31_carry__0_i_6_n_0,mul1_ex__31_carry__0_i_7_n_0}));
  LUT3 #(
    .INIT(8'hAC)) 
    mul1_ex__31_carry__0_i_1
       (.I0(reg1[6]),
        .I1(reg1[5]),
        .I2(reg1[4]),
        .O(mul1_ex__31_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    mul1_ex__31_carry__0_i_2
       (.I0(reg1[3]),
        .I1(reg1[6]),
        .O(mul1_ex__31_carry__0_i_2_n_0));
  LUT5 #(
    .INIT(32'hEA808080)) 
    mul1_ex__31_carry__0_i_3
       (.I0(reg1[3]),
        .I1(reg1[1]),
        .I2(reg1[5]),
        .I3(reg1[2]),
        .I4(reg1[4]),
        .O(mul1_ex__31_carry__0_i_3_n_0));
  LUT5 #(
    .INIT(32'h1BE4E4E4)) 
    mul1_ex__31_carry__0_i_4
       (.I0(reg1[4]),
        .I1(reg1[5]),
        .I2(reg1[6]),
        .I3(reg1[3]),
        .I4(reg1[7]),
        .O(mul1_ex__31_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'h48)) 
    mul1_ex__31_carry__0_i_5
       (.I0(reg1[6]),
        .I1(reg1[3]),
        .I2(reg1[5]),
        .O(mul1_ex__31_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h4)) 
    mul1_ex__31_carry__0_i_6
       (.I0(reg1[3]),
        .I1(reg1[4]),
        .O(mul1_ex__31_carry__0_i_6_n_0));
  LUT5 #(
    .INIT(32'h17A0C000)) 
    mul1_ex__31_carry__0_i_7
       (.I0(reg1[4]),
        .I1(reg1[1]),
        .I2(reg1[3]),
        .I3(reg1[5]),
        .I4(reg1[2]),
        .O(mul1_ex__31_carry__0_i_7_n_0));
  CARRY4 mul1_ex__31_carry__1
       (.CI(mul1_ex__31_carry__0_n_0),
        .CO(NLW_mul1_ex__31_carry__1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_mul1_ex__31_carry__1_O_UNCONNECTED[3:1],mul1_ex__31_carry__1_n_7}),
        .S({1'b0,1'b0,1'b0,mul1_ex__31_carry__1_i_1_n_0}));
  LUT6 #(
    .INIT(64'hD82827D727D727D7)) 
    mul1_ex__31_carry__1_i_1
       (.I0(reg1[4]),
        .I1(reg1[7]),
        .I2(reg1[5]),
        .I3(reg1[6]),
        .I4(Q[0]),
        .I5(reg1[3]),
        .O(mul1_ex__31_carry__1_i_1_n_0));
  LUT5 #(
    .INIT(32'h956A6A6A)) 
    mul1_ex__31_carry_i_1
       (.I0(reg1[3]),
        .I1(reg1[4]),
        .I2(reg1[2]),
        .I3(reg1[5]),
        .I4(reg1[1]),
        .O(mul1_ex__31_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h7888)) 
    mul1_ex__31_carry_i_2
       (.I0(reg1[1]),
        .I1(reg1[4]),
        .I2(reg1[0]),
        .I3(reg1[5]),
        .O(mul1_ex__31_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    mul1_ex__31_carry_i_3
       (.I0(reg1[1]),
        .I1(reg1[3]),
        .O(mul1_ex__31_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h636C6C6C936C6C6C)) 
    mul1_ex__31_carry_i_4
       (.I0(reg1[2]),
        .I1(reg1[3]),
        .I2(reg1[4]),
        .I3(reg1[1]),
        .I4(reg1[5]),
        .I5(reg1[0]),
        .O(mul1_ex__31_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    mul1_ex__31_carry_i_5
       (.I0(reg1[5]),
        .I1(reg1[0]),
        .I2(reg1[4]),
        .I3(reg1[1]),
        .I4(reg1[3]),
        .I5(reg1[2]),
        .O(mul1_ex__31_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h7888)) 
    mul1_ex__31_carry_i_6
       (.I0(reg1[1]),
        .I1(reg1[3]),
        .I2(reg1[0]),
        .I3(reg1[4]),
        .O(mul1_ex__31_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    mul1_ex__31_carry_i_7
       (.I0(reg1[3]),
        .I1(reg1[0]),
        .O(mul1_ex__31_carry_i_7_n_0));
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 mul1_ex__56_carry
       (.CI(1'b0),
        .CO({mul1_ex__56_carry_n_0,NLW_mul1_ex__56_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({mul1_ex__56_carry_i_1_n_0,mul1_ex__56_carry_i_2_n_0,mul1_ex__56_carry_i_3_n_0,1'b0}),
        .O({mul1_ex__56_carry_n_4,mul1_ex__56_carry_n_5,mul1_ex__56_carry_n_6,mul1_ex__56_carry_n_7}),
        .S({mul1_ex__56_carry_i_4_n_0,mul1_ex__56_carry_i_5_n_0,mul1_ex__56_carry_i_6_n_0,mul1_ex__56_carry_i_7_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 mul1_ex__56_carry__0
       (.CI(mul1_ex__56_carry_n_0),
        .CO(NLW_mul1_ex__56_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,mul1_ex__56_carry__0_i_1_n_0}),
        .O({NLW_mul1_ex__56_carry__0_O_UNCONNECTED[3:2],mul1_ex__56_carry__0_n_6,mul1_ex__56_carry__0_n_7}),
        .S({1'b0,1'b0,mul1_ex__56_carry__0_i_2_n_0,mul1_ex__56_carry__0_i_3_n_0}));
  LUT6 #(
    .INIT(64'hF777700070007000)) 
    mul1_ex__56_carry__0_i_1
       (.I0(reg1[1]),
        .I1(Q[0]),
        .I2(reg1[7]),
        .I3(reg1[2]),
        .I4(reg1[6]),
        .I5(reg1[3]),
        .O(mul1_ex__56_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h6A)) 
    mul1_ex__56_carry__0_i_2
       (.I0(mul1_ex__56_carry__0_i_4_n_0),
        .I1(reg1[5]),
        .I2(reg1[6]),
        .O(mul1_ex__56_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    mul1_ex__56_carry__0_i_3
       (.I0(mul1_ex__56_carry__0_i_1_n_0),
        .I1(reg1[3]),
        .I2(reg1[7]),
        .I3(mul1_ex__56_carry__0_i_5_n_0),
        .I4(reg1[6]),
        .I5(reg1[4]),
        .O(mul1_ex__56_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h4230F50F2DFFA5FF)) 
    mul1_ex__56_carry__0_i_4
       (.I0(reg1[6]),
        .I1(reg1[2]),
        .I2(reg1[7]),
        .I3(reg1[4]),
        .I4(Q[0]),
        .I5(reg1[3]),
        .O(mul1_ex__56_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    mul1_ex__56_carry__0_i_5
       (.I0(Q[0]),
        .I1(reg1[2]),
        .O(mul1_ex__56_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h7888877787778777)) 
    mul1_ex__56_carry_i_1
       (.I0(reg1[3]),
        .I1(reg1[6]),
        .I2(Q[0]),
        .I3(reg1[1]),
        .I4(reg1[7]),
        .I5(reg1[2]),
        .O(mul1_ex__56_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h8777)) 
    mul1_ex__56_carry_i_2
       (.I0(reg1[1]),
        .I1(reg1[7]),
        .I2(reg1[0]),
        .I3(Q[0]),
        .O(mul1_ex__56_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    mul1_ex__56_carry_i_3
       (.I0(reg1[1]),
        .I1(reg1[6]),
        .O(mul1_ex__56_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h936C9C6C636C9C6C)) 
    mul1_ex__56_carry_i_4
       (.I0(reg1[2]),
        .I1(mul1_ex__56_carry_i_8_n_0),
        .I2(reg1[7]),
        .I3(reg1[1]),
        .I4(Q[0]),
        .I5(reg1[0]),
        .O(mul1_ex__56_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h7888877787778777)) 
    mul1_ex__56_carry_i_5
       (.I0(Q[0]),
        .I1(reg1[0]),
        .I2(reg1[7]),
        .I3(reg1[1]),
        .I4(reg1[2]),
        .I5(reg1[6]),
        .O(mul1_ex__56_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h7888)) 
    mul1_ex__56_carry_i_6
       (.I0(reg1[1]),
        .I1(reg1[6]),
        .I2(reg1[0]),
        .I3(reg1[7]),
        .O(mul1_ex__56_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    mul1_ex__56_carry_i_7
       (.I0(reg1[0]),
        .I1(reg1[6]),
        .O(mul1_ex__56_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    mul1_ex__56_carry_i_8
       (.I0(reg1[6]),
        .I1(reg1[3]),
        .O(mul1_ex__56_carry_i_8_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 mul1_ex__72_carry
       (.CI(1'b0),
        .CO({mul1_ex__72_carry_n_0,NLW_mul1_ex__72_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({mul1_ex__72_carry_i_1_n_0,mul1_ex__72_carry_i_2_n_0,mul1_ex__72_carry_i_3_n_0,mul1_ex__72_carry_i_4_n_0}),
        .O(mul1[7:4]),
        .S({mul1_ex__72_carry_i_5_n_0,mul1_ex__72_carry_i_6_n_0,mul1_ex__72_carry_i_7_n_0,mul1_ex__72_carry_i_8_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 mul1_ex__72_carry__0
       (.CI(mul1_ex__72_carry_n_0),
        .CO(NLW_mul1_ex__72_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,mul1_ex__72_carry__0_i_1_n_0,mul1_ex__72_carry__0_i_2_n_0,mul1_ex__72_carry__0_i_3_n_0}),
        .O(mul1[11:8]),
        .S({mul1_ex__72_carry__0_i_4_n_0,mul1_ex__72_carry__0_i_5_n_0,mul1_ex__72_carry__0_i_6_n_0,mul1_ex__72_carry__0_i_7_n_0}));
  LUT3 #(
    .INIT(8'h90)) 
    mul1_ex__72_carry__0_i_1
       (.I0(mul1_ex__31_carry__0_n_5),
        .I1(mul1_ex__56_carry_n_4),
        .I2(mul1_ex__0_carry__1_n_7),
        .O(mul1_ex__72_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    mul1_ex__72_carry__0_i_2
       (.I0(mul1_ex__31_carry__0_n_5),
        .I1(mul1_ex__56_carry_n_4),
        .I2(mul1_ex__0_carry__1_n_7),
        .O(mul1_ex__72_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    mul1_ex__72_carry__0_i_3
       (.I0(mul1_ex__0_carry__0_n_5),
        .I1(mul1_ex__56_carry_n_6),
        .I2(mul1_ex__31_carry__0_n_7),
        .O(mul1_ex__72_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'hE10F0F1E0F1E1EF0)) 
    mul1_ex__72_carry__0_i_4
       (.I0(mul1_ex__31_carry__0_n_5),
        .I1(mul1_ex__56_carry_n_4),
        .I2(mul1_ex__72_carry__0_i_8_n_0),
        .I3(mul1_ex__56_carry__0_n_7),
        .I4(mul1_ex__31_carry__0_n_4),
        .I5(mul1_ex__0_carry__1_n_6),
        .O(mul1_ex__72_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h96693CC33CC36996)) 
    mul1_ex__72_carry__0_i_5
       (.I0(mul1_ex__0_carry__1_n_7),
        .I1(mul1_ex__56_carry__0_n_7),
        .I2(mul1_ex__31_carry__0_n_4),
        .I3(mul1_ex__0_carry__1_n_6),
        .I4(mul1_ex__31_carry__0_n_5),
        .I5(mul1_ex__56_carry_n_4),
        .O(mul1_ex__72_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h9696966996696969)) 
    mul1_ex__72_carry__0_i_6
       (.I0(mul1_ex__0_carry__1_n_7),
        .I1(mul1_ex__56_carry_n_4),
        .I2(mul1_ex__31_carry__0_n_5),
        .I3(mul1_ex__31_carry__0_n_6),
        .I4(mul1_ex__56_carry_n_5),
        .I5(mul1_ex__0_carry__0_n_4),
        .O(mul1_ex__72_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    mul1_ex__72_carry__0_i_7
       (.I0(mul1_ex__31_carry__0_n_7),
        .I1(mul1_ex__56_carry_n_6),
        .I2(mul1_ex__0_carry__0_n_5),
        .I3(mul1_ex__0_carry__0_n_4),
        .I4(mul1_ex__31_carry__0_n_6),
        .I5(mul1_ex__56_carry_n_5),
        .O(mul1_ex__72_carry__0_i_7_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    mul1_ex__72_carry__0_i_8
       (.I0(mul1_ex__56_carry__0_n_6),
        .I1(mul1_ex__31_carry__1_n_7),
        .I2(mul1_ex__0_carry__1_n_1),
        .O(mul1_ex__72_carry__0_i_8_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    mul1_ex__72_carry_i_1
       (.I0(mul1_ex__0_carry__0_n_6),
        .I1(mul1_ex__56_carry_n_7),
        .I2(mul1_ex__31_carry_n_4),
        .O(mul1_ex__72_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    mul1_ex__72_carry_i_2
       (.I0(mul1_ex__31_carry_n_5),
        .I1(mul1_ex__0_carry__0_n_7),
        .O(mul1_ex__72_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    mul1_ex__72_carry_i_3
       (.I0(mul1_ex__31_carry_n_6),
        .I1(mul1_ex__0_carry_n_4),
        .O(mul1_ex__72_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    mul1_ex__72_carry_i_4
       (.I0(mul1_ex__31_carry_n_7),
        .I1(mul1_ex__0_carry_n_5),
        .O(mul1_ex__72_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    mul1_ex__72_carry_i_5
       (.I0(mul1_ex__31_carry_n_4),
        .I1(mul1_ex__56_carry_n_7),
        .I2(mul1_ex__0_carry__0_n_6),
        .I3(mul1_ex__0_carry__0_n_5),
        .I4(mul1_ex__31_carry__0_n_7),
        .I5(mul1_ex__56_carry_n_6),
        .O(mul1_ex__72_carry_i_5_n_0));
  LUT5 #(
    .INIT(32'h78878778)) 
    mul1_ex__72_carry_i_6
       (.I0(mul1_ex__0_carry__0_n_7),
        .I1(mul1_ex__31_carry_n_5),
        .I2(mul1_ex__0_carry__0_n_6),
        .I3(mul1_ex__31_carry_n_4),
        .I4(mul1_ex__56_carry_n_7),
        .O(mul1_ex__72_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    mul1_ex__72_carry_i_7
       (.I0(mul1_ex__0_carry_n_4),
        .I1(mul1_ex__31_carry_n_6),
        .I2(mul1_ex__31_carry_n_5),
        .I3(mul1_ex__0_carry__0_n_7),
        .O(mul1_ex__72_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    mul1_ex__72_carry_i_8
       (.I0(mul1_ex__0_carry_n_5),
        .I1(mul1_ex__31_carry_n_7),
        .I2(mul1_ex__31_carry_n_6),
        .I3(mul1_ex__0_carry_n_4),
        .O(mul1_ex__72_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h6A656A656A6A6565)) 
    \reg1[3]_i_10 
       (.I0(A[0]),
        .I1(reg4[0]),
        .I2(oper[1]),
        .I3(rq3[0]),
        .I4(rq1[0]),
        .I5(oper[0]),
        .O(\reg1[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFFAAFCFA00AA0C0)) 
    \reg1[3]_i_3 
       (.I0(rp1[3]),
        .I1(rp3[3]),
        .I2(currstate[1]),
        .I3(currstate[2]),
        .I4(currstate[0]),
        .I5(reg3[3]),
        .O(A[3]));
  LUT6 #(
    .INIT(64'hAFFAAFCFA00AA0C0)) 
    \reg1[3]_i_4 
       (.I0(rp1[2]),
        .I1(rp3[2]),
        .I2(currstate[1]),
        .I3(currstate[2]),
        .I4(currstate[0]),
        .I5(reg3[2]),
        .O(A[2]));
  LUT6 #(
    .INIT(64'hAFFAAFCFA00AA0C0)) 
    \reg1[3]_i_6 
       (.I0(rp1[0]),
        .I1(rp3[0]),
        .I2(currstate[1]),
        .I3(currstate[2]),
        .I4(currstate[0]),
        .I5(reg3[0]),
        .O(A[0]));
  LUT6 #(
    .INIT(64'h6A656A656A6A6565)) 
    \reg1[3]_i_7 
       (.I0(A[3]),
        .I1(reg4[3]),
        .I2(oper[1]),
        .I3(rq3[3]),
        .I4(rq1[3]),
        .I5(oper[0]),
        .O(\reg1[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6A656A656A6A6565)) 
    \reg1[3]_i_8 
       (.I0(A[2]),
        .I1(reg4[2]),
        .I2(oper[1]),
        .I3(rq3[2]),
        .I4(rq1[2]),
        .I5(oper[0]),
        .O(\reg1[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0A05CAC50A053535)) 
    \reg1[3]_i_9 
       (.I0(\rp1_reg[1]_0 ),
        .I1(\rp3_reg[1]_0 ),
        .I2(\reg1_reg[3]_2 ),
        .I3(rq1[1]),
        .I4(\reg1_reg[3]_3 ),
        .I5(rq3[1]),
        .O(\reg1[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFFAAFCFA00AA0C0)) 
    \reg1[7]_i_2 
       (.I0(rp1[7]),
        .I1(rp3[7]),
        .I2(currstate[1]),
        .I3(currstate[2]),
        .I4(currstate[0]),
        .I5(reg3[7]),
        .O(A[7]));
  LUT6 #(
    .INIT(64'hAFFAAFCFA00AA0C0)) 
    \reg1[7]_i_3 
       (.I0(rp1[6]),
        .I1(rp3[6]),
        .I2(currstate[1]),
        .I3(currstate[2]),
        .I4(currstate[0]),
        .I5(reg3[6]),
        .O(A[6]));
  LUT6 #(
    .INIT(64'hAFFAAFCFA00AA0C0)) 
    \reg1[7]_i_4 
       (.I0(rp1[5]),
        .I1(rp3[5]),
        .I2(currstate[1]),
        .I3(currstate[2]),
        .I4(currstate[0]),
        .I5(reg3[5]),
        .O(A[5]));
  LUT6 #(
    .INIT(64'hAFFAAFCFA00AA0C0)) 
    \reg1[7]_i_5 
       (.I0(rp1[4]),
        .I1(rp3[4]),
        .I2(currstate[1]),
        .I3(currstate[2]),
        .I4(currstate[0]),
        .I5(reg3[4]),
        .O(A[4]));
  LUT6 #(
    .INIT(64'h6A656A656A6A6565)) 
    \reg1[7]_i_6 
       (.I0(A[7]),
        .I1(reg4[7]),
        .I2(oper[1]),
        .I3(rq3[7]),
        .I4(rq1[7]),
        .I5(oper[0]),
        .O(\reg1[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6A656A656A6A6565)) 
    \reg1[7]_i_7 
       (.I0(A[6]),
        .I1(reg4[6]),
        .I2(oper[1]),
        .I3(rq3[6]),
        .I4(rq1[6]),
        .I5(oper[0]),
        .O(\reg1[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6A656A656A6A6565)) 
    \reg1[7]_i_8 
       (.I0(A[5]),
        .I1(reg4[5]),
        .I2(oper[1]),
        .I3(rq3[5]),
        .I4(rq1[5]),
        .I5(oper[0]),
        .O(\reg1[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6A656A656A6A6565)) 
    \reg1[7]_i_9 
       (.I0(A[4]),
        .I1(reg4[4]),
        .I2(oper[1]),
        .I3(rq3[4]),
        .I4(rq1[4]),
        .I5(oper[0]),
        .O(\reg1[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg1_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(\reg1_reg[3]_i_1_n_7 ),
        .Q(reg1[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg1_reg[10] 
       (.C(CLK),
        .CE(E),
        .D(\reg1_reg[11]_0 [2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg1_reg[11] 
       (.C(CLK),
        .CE(E),
        .D(\reg1_reg[11]_0 [3]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg1_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(\reg1_reg[3]_i_1_n_6 ),
        .Q(reg1[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg1_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(\reg1_reg[3]_i_1_n_5 ),
        .Q(reg1[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg1_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(\reg1_reg[3]_i_1_n_4 ),
        .Q(reg1[3]),
        .R(SR));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \reg1_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\reg1_reg[3]_i_1_n_0 ,\NLW_reg1_reg[3]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\reg1_reg[3]_1 ),
        .DI({A[3:2],\reg1_reg[3]_0 ,A[0]}),
        .O({\reg1_reg[3]_i_1_n_4 ,\reg1_reg[3]_i_1_n_5 ,\reg1_reg[3]_i_1_n_6 ,\reg1_reg[3]_i_1_n_7 }),
        .S({\reg1[3]_i_7_n_0 ,\reg1[3]_i_8_n_0 ,\reg1[3]_i_9_n_0 ,\reg1[3]_i_10_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \reg1_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(\reg1_reg[7]_i_1_n_7 ),
        .Q(reg1[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg1_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(\reg1_reg[7]_i_1_n_6 ),
        .Q(reg1[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg1_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(\reg1_reg[7]_i_1_n_5 ),
        .Q(reg1[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg1_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(\reg1_reg[7]_i_1_n_4 ),
        .Q(reg1[7]),
        .R(SR));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \reg1_reg[7]_i_1 
       (.CI(\reg1_reg[3]_i_1_n_0 ),
        .CO({CO,\NLW_reg1_reg[7]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(A[7:4]),
        .O({\reg1_reg[7]_i_1_n_4 ,\reg1_reg[7]_i_1_n_5 ,\reg1_reg[7]_i_1_n_6 ,\reg1_reg[7]_i_1_n_7 }),
        .S({\reg1[7]_i_6_n_0 ,\reg1[7]_i_7_n_0 ,\reg1[7]_i_8_n_0 ,\reg1[7]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \reg1_reg[8] 
       (.C(CLK),
        .CE(E),
        .D(\reg1_reg[11]_0 [0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg1_reg[9] 
       (.C(CLK),
        .CE(E),
        .D(\reg1_reg[11]_0 [1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg2_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(\reg2_reg[11]_3 [0]),
        .Q(\reg2_reg[11]_0 [0]),
        .R(SR));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg2_reg[0]_lopt_replica 
       (.C(CLK),
        .CE(E),
        .D(\reg2_reg[11]_3 [0]),
        .Q(\reg2_reg[0]_lopt_replica_1 ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg2_reg[10] 
       (.C(CLK),
        .CE(E),
        .D(\reg2_reg[11]_3 [10]),
        .Q(\reg2_reg[11]_0 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg2_reg[11] 
       (.C(CLK),
        .CE(E),
        .D(\reg2_reg[11]_3 [11]),
        .Q(\reg2_reg[11]_0 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg2_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(\reg2_reg[11]_3 [1]),
        .Q(\reg2_reg[11]_0 [1]),
        .R(SR));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg2_reg[1]_lopt_replica 
       (.C(CLK),
        .CE(E),
        .D(\reg2_reg[11]_3 [1]),
        .Q(\reg2_reg[1]_lopt_replica_1 ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg2_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(\reg2_reg[11]_3 [2]),
        .Q(\reg2_reg[11]_0 [2]),
        .R(SR));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg2_reg[2]_lopt_replica 
       (.C(CLK),
        .CE(E),
        .D(\reg2_reg[11]_3 [2]),
        .Q(\reg2_reg[2]_lopt_replica_1 ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg2_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(\reg2_reg[11]_3 [3]),
        .Q(\reg2_reg[11]_0 [3]),
        .R(SR));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg2_reg[3]_lopt_replica 
       (.C(CLK),
        .CE(E),
        .D(\reg2_reg[11]_3 [3]),
        .Q(\reg2_reg[3]_lopt_replica_1 ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg2_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(\reg2_reg[11]_3 [4]),
        .Q(\reg2_reg[11]_0 [4]),
        .R(SR));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg2_reg[4]_lopt_replica 
       (.C(CLK),
        .CE(E),
        .D(\reg2_reg[11]_3 [4]),
        .Q(\reg2_reg[4]_lopt_replica_1 ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg2_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(\reg2_reg[11]_3 [5]),
        .Q(\reg2_reg[11]_0 [5]),
        .R(SR));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg2_reg[5]_lopt_replica 
       (.C(CLK),
        .CE(E),
        .D(\reg2_reg[11]_3 [5]),
        .Q(\reg2_reg[5]_lopt_replica_1 ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg2_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(\reg2_reg[11]_3 [6]),
        .Q(\reg2_reg[11]_0 [6]),
        .R(SR));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg2_reg[6]_lopt_replica 
       (.C(CLK),
        .CE(E),
        .D(\reg2_reg[11]_3 [6]),
        .Q(\reg2_reg[6]_lopt_replica_1 ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg2_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(\reg2_reg[11]_3 [7]),
        .Q(\reg2_reg[11]_0 [7]),
        .R(SR));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg2_reg[7]_lopt_replica 
       (.C(CLK),
        .CE(E),
        .D(\reg2_reg[11]_3 [7]),
        .Q(\reg2_reg[7]_lopt_replica_1 ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg2_reg[8] 
       (.C(CLK),
        .CE(E),
        .D(\reg2_reg[11]_3 [8]),
        .Q(\reg2_reg[11]_0 [8]),
        .R(SR));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg2_reg[8]_lopt_replica 
       (.C(CLK),
        .CE(E),
        .D(\reg2_reg[11]_3 [8]),
        .Q(\reg2_reg[8]_lopt_replica_1 ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg2_reg[9] 
       (.C(CLK),
        .CE(E),
        .D(\reg2_reg[11]_3 [9]),
        .Q(\reg2_reg[11]_0 [9]),
        .R(SR));
  LUT2 #(
    .INIT(4'h6)) 
    \reg3[3]_i_1 
       (.I0(mul1_ex__0_carry_n_5),
        .I1(mul1_ex__31_carry_n_7),
        .O(mul1[3]));
  FDRE #(
    .INIT(1'b0)) 
    \reg3_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(reg1[0]),
        .Q(reg3[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg3_reg[10] 
       (.C(CLK),
        .CE(E),
        .D(mul1[10]),
        .Q(\reg3_reg[11]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg3_reg[11] 
       (.C(CLK),
        .CE(E),
        .D(mul1[11]),
        .Q(\reg3_reg[11]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg3_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(mul1[2]),
        .Q(reg3[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg3_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(mul1[3]),
        .Q(reg3[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg3_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(mul1[4]),
        .Q(reg3[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg3_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(mul1[5]),
        .Q(reg3[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg3_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(mul1[6]),
        .Q(reg3[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg3_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(mul1[7]),
        .Q(reg3[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg3_reg[8] 
       (.C(CLK),
        .CE(E),
        .D(mul1[8]),
        .Q(\reg3_reg[11]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg3_reg[9] 
       (.C(CLK),
        .CE(E),
        .D(mul1[9]),
        .Q(\reg3_reg[11]_0 [1]),
        .R(SR));
  LUT3 #(
    .INIT(8'h96)) 
    \reg4[11]_i_13 
       (.I0(\reg4_reg[11]_i_14_n_6 ),
        .I1(\reg4_reg[11]_i_41_n_7 ),
        .I2(\reg4_reg[11]_i_11_n_1 ),
        .O(\reg4[11]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \reg4[11]_i_15 
       (.I0(\reg2_reg[11]_0 [6]),
        .I1(\reg2_reg[11]_0 [5]),
        .I2(\reg2_reg[11]_0 [4]),
        .O(\reg4[11]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \reg4[11]_i_16 
       (.I0(\reg2_reg[11]_0 [3]),
        .I1(\reg2_reg[11]_0 [6]),
        .O(\reg4[11]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hEA808080)) 
    \reg4[11]_i_17 
       (.I0(\reg2_reg[11]_0 [3]),
        .I1(\reg2_reg[11]_0 [1]),
        .I2(\reg2_reg[11]_0 [5]),
        .I3(\reg2_reg[11]_0 [2]),
        .I4(\reg2_reg[11]_0 [4]),
        .O(\reg4[11]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h1BE4E4E4)) 
    \reg4[11]_i_18 
       (.I0(\reg2_reg[11]_0 [4]),
        .I1(\reg2_reg[11]_0 [5]),
        .I2(\reg2_reg[11]_0 [6]),
        .I3(\reg2_reg[11]_0 [3]),
        .I4(\reg2_reg[11]_0 [7]),
        .O(\reg4[11]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \reg4[11]_i_19 
       (.I0(\reg2_reg[11]_0 [6]),
        .I1(\reg2_reg[11]_0 [3]),
        .I2(\reg2_reg[11]_0 [5]),
        .O(\reg4[11]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h90)) 
    \reg4[11]_i_2 
       (.I0(\reg4_reg[11]_i_9_n_5 ),
        .I1(\reg4_reg[11]_i_10_n_4 ),
        .I2(\reg4_reg[11]_i_11_n_7 ),
        .O(\reg4[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \reg4[11]_i_20 
       (.I0(\reg2_reg[11]_0 [3]),
        .I1(\reg2_reg[11]_0 [4]),
        .O(\reg4[11]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h17A0C000)) 
    \reg4[11]_i_21 
       (.I0(\reg2_reg[11]_0 [4]),
        .I1(\reg2_reg[11]_0 [1]),
        .I2(\reg2_reg[11]_0 [3]),
        .I3(\reg2_reg[11]_0 [5]),
        .I4(\reg2_reg[11]_0 [2]),
        .O(\reg4[11]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h7888877787778777)) 
    \reg4[11]_i_22 
       (.I0(\reg2_reg[11]_0 [3]),
        .I1(\reg2_reg[11]_0 [6]),
        .I2(\reg2_reg[11]_0 [8]),
        .I3(\reg2_reg[11]_0 [1]),
        .I4(\reg2_reg[11]_0 [7]),
        .I5(\reg2_reg[11]_0 [2]),
        .O(\reg4[11]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h8777)) 
    \reg4[11]_i_23 
       (.I0(\reg2_reg[11]_0 [1]),
        .I1(\reg2_reg[11]_0 [7]),
        .I2(\reg2_reg[11]_0 [0]),
        .I3(\reg2_reg[11]_0 [8]),
        .O(\reg4[11]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \reg4[11]_i_24 
       (.I0(\reg2_reg[11]_0 [1]),
        .I1(\reg2_reg[11]_0 [6]),
        .O(\reg4[11]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h936C9C6C636C9C6C)) 
    \reg4[11]_i_25 
       (.I0(\reg2_reg[11]_0 [2]),
        .I1(\reg4[11]_i_45_n_0 ),
        .I2(\reg2_reg[11]_0 [7]),
        .I3(\reg2_reg[11]_0 [1]),
        .I4(\reg2_reg[11]_0 [8]),
        .I5(\reg2_reg[11]_0 [0]),
        .O(\reg4[11]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h7888877787778777)) 
    \reg4[11]_i_26 
       (.I0(\reg2_reg[11]_0 [8]),
        .I1(\reg2_reg[11]_0 [0]),
        .I2(\reg2_reg[11]_0 [7]),
        .I3(\reg2_reg[11]_0 [1]),
        .I4(\reg2_reg[11]_0 [2]),
        .I5(\reg2_reg[11]_0 [6]),
        .O(\reg4[11]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \reg4[11]_i_27 
       (.I0(\reg2_reg[11]_0 [1]),
        .I1(\reg2_reg[11]_0 [6]),
        .I2(\reg2_reg[11]_0 [0]),
        .I3(\reg2_reg[11]_0 [7]),
        .O(\reg4[11]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \reg4[11]_i_28 
       (.I0(\reg2_reg[11]_0 [0]),
        .I1(\reg2_reg[11]_0 [6]),
        .O(\reg4[11]_i_28_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \reg4[11]_i_29 
       (.I0(\reg2_reg[11]_0 [8]),
        .I1(\reg2_reg[11]_0 [2]),
        .O(\reg4[11]_i_29_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \reg4[11]_i_3 
       (.I0(\reg4_reg[11]_i_9_n_5 ),
        .I1(\reg4_reg[11]_i_10_n_4 ),
        .I2(\reg4_reg[11]_i_11_n_7 ),
        .O(\reg4[11]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8777)) 
    \reg4[11]_i_30 
       (.I0(\reg2_reg[11]_0 [2]),
        .I1(\reg2_reg[11]_0 [7]),
        .I2(\reg2_reg[11]_0 [1]),
        .I3(\reg2_reg[11]_0 [8]),
        .O(\reg4[11]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h2F5F)) 
    \reg4[11]_i_31 
       (.I0(\reg2_reg[11]_0 [7]),
        .I1(\reg2_reg[11]_0 [1]),
        .I2(\reg2_reg[11]_0 [2]),
        .I3(\reg2_reg[11]_0 [8]),
        .O(\reg4[11]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h4F2A25D530FF0FFF)) 
    \reg4[11]_i_32 
       (.I0(\reg2_reg[11]_0 [6]),
        .I1(\reg2_reg[11]_0 [0]),
        .I2(\reg2_reg[11]_0 [8]),
        .I3(\reg2_reg[11]_0 [1]),
        .I4(\reg2_reg[11]_0 [7]),
        .I5(\reg2_reg[11]_0 [2]),
        .O(\reg4[11]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hF880808088000000)) 
    \reg4[11]_i_33 
       (.I0(\reg2_reg[11]_0 [6]),
        .I1(\reg2_reg[11]_0 [1]),
        .I2(\reg2_reg[11]_0 [7]),
        .I3(\reg2_reg[11]_0 [2]),
        .I4(\reg2_reg[11]_0 [5]),
        .I5(\reg2_reg[11]_0 [0]),
        .O(\reg4[11]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \reg4[11]_i_34 
       (.I0(\reg2_reg[11]_0 [6]),
        .I1(\reg2_reg[11]_0 [0]),
        .I2(\reg2_reg[11]_0 [4]),
        .I3(\reg2_reg[11]_0 [2]),
        .I4(\reg2_reg[11]_0 [5]),
        .I5(\reg2_reg[11]_0 [1]),
        .O(\reg4[11]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \reg4[11]_i_35 
       (.I0(\reg2_reg[11]_0 [1]),
        .I1(\reg2_reg[11]_0 [4]),
        .I2(\reg2_reg[11]_0 [5]),
        .I3(\reg2_reg[11]_0 [0]),
        .I4(\reg2_reg[11]_0 [2]),
        .I5(\reg2_reg[11]_0 [3]),
        .O(\reg4[11]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \reg4[11]_i_36 
       (.I0(\reg2_reg[11]_0 [2]),
        .I1(\reg2_reg[11]_0 [1]),
        .O(\reg4[11]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    \reg4[11]_i_37 
       (.I0(\reg4[11]_i_33_n_0 ),
        .I1(\reg2_reg[11]_0 [2]),
        .I2(\reg2_reg[11]_0 [6]),
        .I3(\reg4[11]_i_46_n_0 ),
        .I4(\reg2_reg[11]_0 [8]),
        .I5(\reg2_reg[11]_0 [0]),
        .O(\reg4[11]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h9666699969996999)) 
    \reg4[11]_i_38 
       (.I0(\reg4[11]_i_34_n_0 ),
        .I1(\reg4[11]_i_47_n_0 ),
        .I2(\reg2_reg[11]_0 [5]),
        .I3(\reg2_reg[11]_0 [2]),
        .I4(\reg2_reg[11]_0 [7]),
        .I5(\reg2_reg[11]_0 [0]),
        .O(\reg4[11]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A6A6A959595)) 
    \reg4[11]_i_39 
       (.I0(\reg4[11]_i_35_n_0 ),
        .I1(\reg2_reg[11]_0 [1]),
        .I2(\reg2_reg[11]_0 [5]),
        .I3(\reg2_reg[11]_0 [2]),
        .I4(\reg2_reg[11]_0 [4]),
        .I5(\reg4[11]_i_48_n_0 ),
        .O(\reg4[11]_i_39_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \reg4[11]_i_4 
       (.I0(\reg4_reg[11]_i_12_n_5 ),
        .I1(\reg4_reg[11]_i_10_n_6 ),
        .I2(\reg4_reg[11]_i_9_n_7 ),
        .O(\reg4[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h47B7B848B848B848)) 
    \reg4[11]_i_40 
       (.I0(\reg2_reg[11]_0 [3]),
        .I1(\reg2_reg[11]_0 [2]),
        .I2(\reg2_reg[11]_0 [1]),
        .I3(\reg2_reg[11]_0 [4]),
        .I4(\reg2_reg[11]_0 [5]),
        .I5(\reg2_reg[11]_0 [0]),
        .O(\reg4[11]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hF777700070007000)) 
    \reg4[11]_i_42 
       (.I0(\reg2_reg[11]_0 [1]),
        .I1(\reg2_reg[11]_0 [8]),
        .I2(\reg2_reg[11]_0 [7]),
        .I3(\reg2_reg[11]_0 [2]),
        .I4(\reg2_reg[11]_0 [6]),
        .I5(\reg2_reg[11]_0 [3]),
        .O(\reg4[11]_i_42_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \reg4[11]_i_43 
       (.I0(\reg4[11]_i_50_n_0 ),
        .I1(\reg2_reg[11]_0 [5]),
        .I2(\reg2_reg[11]_0 [6]),
        .O(\reg4[11]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    \reg4[11]_i_44 
       (.I0(\reg4[11]_i_42_n_0 ),
        .I1(\reg2_reg[11]_0 [3]),
        .I2(\reg2_reg[11]_0 [7]),
        .I3(\reg4[11]_i_51_n_0 ),
        .I4(\reg2_reg[11]_0 [6]),
        .I5(\reg2_reg[11]_0 [4]),
        .O(\reg4[11]_i_44_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \reg4[11]_i_45 
       (.I0(\reg2_reg[11]_0 [6]),
        .I1(\reg2_reg[11]_0 [3]),
        .O(\reg4[11]_i_45_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \reg4[11]_i_46 
       (.I0(\reg2_reg[11]_0 [7]),
        .I1(\reg2_reg[11]_0 [1]),
        .O(\reg4[11]_i_46_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \reg4[11]_i_47 
       (.I0(\reg2_reg[11]_0 [6]),
        .I1(\reg2_reg[11]_0 [1]),
        .O(\reg4[11]_i_47_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \reg4[11]_i_48 
       (.I0(\reg2_reg[11]_0 [6]),
        .I1(\reg2_reg[11]_0 [0]),
        .O(\reg4[11]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hD82827D727D727D7)) 
    \reg4[11]_i_49 
       (.I0(\reg2_reg[11]_0 [4]),
        .I1(\reg2_reg[11]_0 [7]),
        .I2(\reg2_reg[11]_0 [5]),
        .I3(\reg2_reg[11]_0 [6]),
        .I4(\reg2_reg[11]_0 [8]),
        .I5(\reg2_reg[11]_0 [3]),
        .O(\reg4[11]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hE10F0F1E0F1E1EF0)) 
    \reg4[11]_i_5 
       (.I0(\reg4_reg[11]_i_9_n_5 ),
        .I1(\reg4_reg[11]_i_10_n_4 ),
        .I2(\reg4[11]_i_13_n_0 ),
        .I3(\reg4_reg[11]_i_14_n_7 ),
        .I4(\reg4_reg[11]_i_9_n_4 ),
        .I5(\reg4_reg[11]_i_11_n_6 ),
        .O(\reg4[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4230F50F2DFFA5FF)) 
    \reg4[11]_i_50 
       (.I0(\reg2_reg[11]_0 [6]),
        .I1(\reg2_reg[11]_0 [2]),
        .I2(\reg2_reg[11]_0 [7]),
        .I3(\reg2_reg[11]_0 [4]),
        .I4(\reg2_reg[11]_0 [8]),
        .I5(\reg2_reg[11]_0 [3]),
        .O(\reg4[11]_i_50_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \reg4[11]_i_51 
       (.I0(\reg2_reg[11]_0 [8]),
        .I1(\reg2_reg[11]_0 [2]),
        .O(\reg4[11]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h96693CC33CC36996)) 
    \reg4[11]_i_6 
       (.I0(\reg4_reg[11]_i_11_n_7 ),
        .I1(\reg4_reg[11]_i_14_n_7 ),
        .I2(\reg4_reg[11]_i_9_n_4 ),
        .I3(\reg4_reg[11]_i_11_n_6 ),
        .I4(\reg4_reg[11]_i_9_n_5 ),
        .I5(\reg4_reg[11]_i_10_n_4 ),
        .O(\reg4[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9696966996696969)) 
    \reg4[11]_i_7 
       (.I0(\reg4_reg[11]_i_11_n_7 ),
        .I1(\reg4_reg[11]_i_10_n_4 ),
        .I2(\reg4_reg[11]_i_9_n_5 ),
        .I3(\reg4_reg[11]_i_9_n_6 ),
        .I4(\reg4_reg[11]_i_10_n_5 ),
        .I5(\reg4_reg[11]_i_12_n_4 ),
        .O(\reg4[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \reg4[11]_i_8 
       (.I0(\reg4_reg[11]_i_9_n_7 ),
        .I1(\reg4_reg[11]_i_10_n_6 ),
        .I2(\reg4_reg[11]_i_12_n_5 ),
        .I3(\reg4_reg[11]_i_12_n_4 ),
        .I4(\reg4_reg[11]_i_9_n_6 ),
        .I5(\reg4_reg[11]_i_10_n_5 ),
        .O(\reg4[11]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \reg4[2]_i_2 
       (.I0(\reg2_reg[11]_0 [3]),
        .I1(\reg2_reg[11]_0 [2]),
        .I2(\reg2_reg[11]_0 [1]),
        .O(\reg4[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \reg4[2]_i_3 
       (.I0(\reg2_reg[11]_0 [3]),
        .I1(\reg2_reg[11]_0 [0]),
        .O(\reg4[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h1BE4E4E4)) 
    \reg4[2]_i_4 
       (.I0(\reg2_reg[11]_0 [1]),
        .I1(\reg2_reg[11]_0 [2]),
        .I2(\reg2_reg[11]_0 [3]),
        .I3(\reg2_reg[11]_0 [0]),
        .I4(\reg2_reg[11]_0 [4]),
        .O(\reg4[2]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \reg4[2]_i_5 
       (.I0(\reg2_reg[11]_0 [3]),
        .I1(\reg2_reg[11]_0 [0]),
        .I2(\reg2_reg[11]_0 [2]),
        .O(\reg4[2]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \reg4[2]_i_6 
       (.I0(\reg2_reg[11]_0 [0]),
        .I1(\reg2_reg[11]_0 [1]),
        .O(\reg4[2]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg4[3]_i_1 
       (.I0(\reg4_reg[2]_i_1_n_5 ),
        .I1(\reg4_reg[3]_i_2_n_7 ),
        .O(mul2[3]));
  LUT5 #(
    .INIT(32'h956A6A6A)) 
    \reg4[3]_i_3 
       (.I0(\reg2_reg[11]_0 [3]),
        .I1(\reg2_reg[11]_0 [4]),
        .I2(\reg2_reg[11]_0 [2]),
        .I3(\reg2_reg[11]_0 [5]),
        .I4(\reg2_reg[11]_0 [1]),
        .O(\reg4[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \reg4[3]_i_4 
       (.I0(\reg2_reg[11]_0 [1]),
        .I1(\reg2_reg[11]_0 [4]),
        .I2(\reg2_reg[11]_0 [0]),
        .I3(\reg2_reg[11]_0 [5]),
        .O(\reg4[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \reg4[3]_i_5 
       (.I0(\reg2_reg[11]_0 [1]),
        .I1(\reg2_reg[11]_0 [3]),
        .O(\reg4[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h636C6C6C936C6C6C)) 
    \reg4[3]_i_6 
       (.I0(\reg2_reg[11]_0 [2]),
        .I1(\reg2_reg[11]_0 [3]),
        .I2(\reg2_reg[11]_0 [4]),
        .I3(\reg2_reg[11]_0 [1]),
        .I4(\reg2_reg[11]_0 [5]),
        .I5(\reg2_reg[11]_0 [0]),
        .O(\reg4[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \reg4[3]_i_7 
       (.I0(\reg2_reg[11]_0 [5]),
        .I1(\reg2_reg[11]_0 [0]),
        .I2(\reg2_reg[11]_0 [4]),
        .I3(\reg2_reg[11]_0 [1]),
        .I4(\reg2_reg[11]_0 [3]),
        .I5(\reg2_reg[11]_0 [2]),
        .O(\reg4[3]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \reg4[3]_i_8 
       (.I0(\reg2_reg[11]_0 [1]),
        .I1(\reg2_reg[11]_0 [3]),
        .I2(\reg2_reg[11]_0 [0]),
        .I3(\reg2_reg[11]_0 [4]),
        .O(\reg4[3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \reg4[3]_i_9 
       (.I0(\reg2_reg[11]_0 [3]),
        .I1(\reg2_reg[11]_0 [0]),
        .O(\reg4[3]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \reg4[7]_i_2 
       (.I0(\reg4_reg[11]_i_12_n_6 ),
        .I1(\reg4_reg[11]_i_10_n_7 ),
        .I2(\reg4_reg[3]_i_2_n_4 ),
        .O(\reg4[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \reg4[7]_i_3 
       (.I0(\reg4_reg[3]_i_2_n_5 ),
        .I1(\reg4_reg[11]_i_12_n_7 ),
        .O(\reg4[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \reg4[7]_i_4 
       (.I0(\reg4_reg[3]_i_2_n_6 ),
        .I1(\reg4_reg[2]_i_1_n_4 ),
        .O(\reg4[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \reg4[7]_i_5 
       (.I0(\reg4_reg[3]_i_2_n_7 ),
        .I1(\reg4_reg[2]_i_1_n_5 ),
        .O(\reg4[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \reg4[7]_i_6 
       (.I0(\reg4_reg[3]_i_2_n_4 ),
        .I1(\reg4_reg[11]_i_10_n_7 ),
        .I2(\reg4_reg[11]_i_12_n_6 ),
        .I3(\reg4_reg[11]_i_12_n_5 ),
        .I4(\reg4_reg[11]_i_9_n_7 ),
        .I5(\reg4_reg[11]_i_10_n_6 ),
        .O(\reg4[7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \reg4[7]_i_7 
       (.I0(\reg4_reg[11]_i_12_n_7 ),
        .I1(\reg4_reg[3]_i_2_n_5 ),
        .I2(\reg4_reg[11]_i_12_n_6 ),
        .I3(\reg4_reg[3]_i_2_n_4 ),
        .I4(\reg4_reg[11]_i_10_n_7 ),
        .O(\reg4[7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \reg4[7]_i_8 
       (.I0(\reg4_reg[2]_i_1_n_4 ),
        .I1(\reg4_reg[3]_i_2_n_6 ),
        .I2(\reg4_reg[3]_i_2_n_5 ),
        .I3(\reg4_reg[11]_i_12_n_7 ),
        .O(\reg4[7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \reg4[7]_i_9 
       (.I0(\reg4_reg[2]_i_1_n_5 ),
        .I1(\reg4_reg[3]_i_2_n_7 ),
        .I2(\reg4_reg[3]_i_2_n_6 ),
        .I3(\reg4_reg[2]_i_1_n_4 ),
        .O(\reg4[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg4_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(\reg2_reg[11]_0 [0]),
        .Q(reg4[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg4_reg[10] 
       (.C(CLK),
        .CE(E),
        .D(mul2[10]),
        .Q(\reg4_reg[11]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg4_reg[11] 
       (.C(CLK),
        .CE(E),
        .D(mul2[11]),
        .Q(\reg4_reg[11]_0 [3]),
        .R(SR));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 9x9}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \reg4_reg[11]_i_1 
       (.CI(\reg4_reg[7]_i_1_n_0 ),
        .CO(\NLW_reg4_reg[11]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\reg4[11]_i_2_n_0 ,\reg4[11]_i_3_n_0 ,\reg4[11]_i_4_n_0 }),
        .O(mul2[11:8]),
        .S({\reg4[11]_i_5_n_0 ,\reg4[11]_i_6_n_0 ,\reg4[11]_i_7_n_0 ,\reg4[11]_i_8_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 9x9}}" *) 
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 \reg4_reg[11]_i_10 
       (.CI(1'b0),
        .CO({\reg4_reg[11]_i_10_n_0 ,\NLW_reg4_reg[11]_i_10_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\reg4[11]_i_22_n_0 ,\reg4[11]_i_23_n_0 ,\reg4[11]_i_24_n_0 ,1'b0}),
        .O({\reg4_reg[11]_i_10_n_4 ,\reg4_reg[11]_i_10_n_5 ,\reg4_reg[11]_i_10_n_6 ,\reg4_reg[11]_i_10_n_7 }),
        .S({\reg4[11]_i_25_n_0 ,\reg4[11]_i_26_n_0 ,\reg4[11]_i_27_n_0 ,\reg4[11]_i_28_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 9x9}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \reg4_reg[11]_i_11 
       (.CI(\reg4_reg[11]_i_12_n_0 ),
        .CO({\NLW_reg4_reg[11]_i_11_CO_UNCONNECTED [3],\reg4_reg[11]_i_11_n_1 ,\NLW_reg4_reg[11]_i_11_CO_UNCONNECTED [1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\reg4[11]_i_29_n_0 ,\reg4[11]_i_30_n_0 }),
        .O({\NLW_reg4_reg[11]_i_11_O_UNCONNECTED [3:2],\reg4_reg[11]_i_11_n_6 ,\reg4_reg[11]_i_11_n_7 }),
        .S({1'b0,1'b1,\reg4[11]_i_31_n_0 ,\reg4[11]_i_32_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 9x9}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \reg4_reg[11]_i_12 
       (.CI(\reg4_reg[2]_i_1_n_0 ),
        .CO({\reg4_reg[11]_i_12_n_0 ,\NLW_reg4_reg[11]_i_12_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\reg4[11]_i_33_n_0 ,\reg4[11]_i_34_n_0 ,\reg4[11]_i_35_n_0 ,\reg4[11]_i_36_n_0 }),
        .O({\reg4_reg[11]_i_12_n_4 ,\reg4_reg[11]_i_12_n_5 ,\reg4_reg[11]_i_12_n_6 ,\reg4_reg[11]_i_12_n_7 }),
        .S({\reg4[11]_i_37_n_0 ,\reg4[11]_i_38_n_0 ,\reg4[11]_i_39_n_0 ,\reg4[11]_i_40_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 9x9}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \reg4_reg[11]_i_14 
       (.CI(\reg4_reg[11]_i_10_n_0 ),
        .CO(\NLW_reg4_reg[11]_i_14_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\reg4[11]_i_42_n_0 }),
        .O({\NLW_reg4_reg[11]_i_14_O_UNCONNECTED [3:2],\reg4_reg[11]_i_14_n_6 ,\reg4_reg[11]_i_14_n_7 }),
        .S({1'b0,1'b0,\reg4[11]_i_43_n_0 ,\reg4[11]_i_44_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 9x9}}" *) 
  CARRY4 \reg4_reg[11]_i_41 
       (.CI(\reg4_reg[11]_i_9_n_0 ),
        .CO(\NLW_reg4_reg[11]_i_41_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_reg4_reg[11]_i_41_O_UNCONNECTED [3:1],\reg4_reg[11]_i_41_n_7 }),
        .S({1'b0,1'b0,1'b0,\reg4[11]_i_49_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 9x9}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \reg4_reg[11]_i_9 
       (.CI(\reg4_reg[3]_i_2_n_0 ),
        .CO({\reg4_reg[11]_i_9_n_0 ,\NLW_reg4_reg[11]_i_9_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\reg4[11]_i_15_n_0 ,\reg4[11]_i_16_n_0 ,\reg2_reg[11]_0 [4],\reg4[11]_i_17_n_0 }),
        .O({\reg4_reg[11]_i_9_n_4 ,\reg4_reg[11]_i_9_n_5 ,\reg4_reg[11]_i_9_n_6 ,\reg4_reg[11]_i_9_n_7 }),
        .S({\reg4[11]_i_18_n_0 ,\reg4[11]_i_19_n_0 ,\reg4[11]_i_20_n_0 ,\reg4[11]_i_21_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \reg4_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(mul2[2]),
        .Q(reg4[2]),
        .R(SR));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 9x9}}" *) 
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 \reg4_reg[2]_i_1 
       (.CI(1'b0),
        .CO({\reg4_reg[2]_i_1_n_0 ,\NLW_reg4_reg[2]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\reg4[2]_i_2_n_0 ,\reg4[2]_i_3_n_0 ,\reg2_reg[11]_0 [1],1'b0}),
        .O({\reg4_reg[2]_i_1_n_4 ,\reg4_reg[2]_i_1_n_5 ,mul2[2],\NLW_reg4_reg[2]_i_1_O_UNCONNECTED [0]}),
        .S({\reg4[2]_i_4_n_0 ,\reg4[2]_i_5_n_0 ,\reg4[2]_i_6_n_0 ,1'b0}));
  FDRE #(
    .INIT(1'b0)) 
    \reg4_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(mul2[3]),
        .Q(reg4[3]),
        .R(SR));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 9x9}}" *) 
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 \reg4_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\reg4_reg[3]_i_2_n_0 ,\NLW_reg4_reg[3]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\reg4[3]_i_3_n_0 ,\reg4[3]_i_4_n_0 ,\reg4[3]_i_5_n_0 ,1'b0}),
        .O({\reg4_reg[3]_i_2_n_4 ,\reg4_reg[3]_i_2_n_5 ,\reg4_reg[3]_i_2_n_6 ,\reg4_reg[3]_i_2_n_7 }),
        .S({\reg4[3]_i_6_n_0 ,\reg4[3]_i_7_n_0 ,\reg4[3]_i_8_n_0 ,\reg4[3]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \reg4_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(mul2[4]),
        .Q(reg4[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg4_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(mul2[5]),
        .Q(reg4[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg4_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(mul2[6]),
        .Q(reg4[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg4_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(mul2[7]),
        .Q(reg4[7]),
        .R(SR));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 9x9}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \reg4_reg[7]_i_1 
       (.CI(1'b0),
        .CO({\reg4_reg[7]_i_1_n_0 ,\NLW_reg4_reg[7]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\reg4[7]_i_2_n_0 ,\reg4[7]_i_3_n_0 ,\reg4[7]_i_4_n_0 ,\reg4[7]_i_5_n_0 }),
        .O(mul2[7:4]),
        .S({\reg4[7]_i_6_n_0 ,\reg4[7]_i_7_n_0 ,\reg4[7]_i_8_n_0 ,\reg4[7]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \reg4_reg[8] 
       (.C(CLK),
        .CE(E),
        .D(mul2[8]),
        .Q(\reg4_reg[11]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg4_reg[9] 
       (.C(CLK),
        .CE(E),
        .D(mul2[9]),
        .Q(\reg4_reg[11]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rp1_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp1_reg[7]_0 [0]),
        .Q(rp1[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rp1_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp1_reg[7]_0 [1]),
        .Q(\rp1_reg[1]_0 ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rp1_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp1_reg[7]_0 [2]),
        .Q(rp1[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rp1_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp1_reg[7]_0 [3]),
        .Q(rp1[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rp1_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp1_reg[7]_0 [4]),
        .Q(rp1[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rp1_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp1_reg[7]_0 [5]),
        .Q(rp1[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rp1_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp1_reg[7]_0 [6]),
        .Q(rp1[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rp1_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp1_reg[7]_0 [7]),
        .Q(rp1[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rp2_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp2_reg[7]_0 [0]),
        .Q(rp2[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rp2_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp2_reg[7]_0 [1]),
        .Q(rp2[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rp2_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp2_reg[7]_0 [2]),
        .Q(rp2[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rp2_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp2_reg[7]_0 [3]),
        .Q(rp2[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rp2_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp2_reg[7]_0 [4]),
        .Q(rp2[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rp2_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp2_reg[7]_0 [5]),
        .Q(rp2[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rp2_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp2_reg[7]_0 [6]),
        .Q(rp2[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rp2_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp2_reg[7]_0 [7]),
        .Q(rp2[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rp3_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp3_reg[7]_0 [0]),
        .Q(rp3[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rp3_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp3_reg[7]_0 [1]),
        .Q(\rp3_reg[1]_0 ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rp3_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp3_reg[7]_0 [2]),
        .Q(rp3[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rp3_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp3_reg[7]_0 [3]),
        .Q(rp3[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rp3_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp3_reg[7]_0 [4]),
        .Q(rp3[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rp3_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp3_reg[7]_0 [5]),
        .Q(rp3[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rp3_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp3_reg[7]_0 [6]),
        .Q(rp3[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rp3_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp3_reg[7]_0 [7]),
        .Q(rp3[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rp4_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp4_reg[7]_0 [0]),
        .Q(rp4[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rp4_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp4_reg[7]_0 [1]),
        .Q(rp4[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rp4_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp4_reg[7]_0 [2]),
        .Q(rp4[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rp4_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp4_reg[7]_0 [3]),
        .Q(rp4[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rp4_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp4_reg[7]_0 [4]),
        .Q(rp4[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rp4_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp4_reg[7]_0 [5]),
        .Q(rp4[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rp4_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp4_reg[7]_0 [6]),
        .Q(rp4[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rp4_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp4_reg[7]_0 [7]),
        .Q(rp4[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rq1_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rq1_reg[7]_0 [0]),
        .Q(rq1[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rq1_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rq1_reg[7]_0 [1]),
        .Q(rq1[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rq1_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rq1_reg[7]_0 [2]),
        .Q(rq1[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rq1_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rq1_reg[7]_0 [3]),
        .Q(rq1[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rq1_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rq1_reg[7]_0 [4]),
        .Q(rq1[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rq1_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rq1_reg[7]_0 [5]),
        .Q(rq1[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rq1_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rq1_reg[7]_0 [6]),
        .Q(rq1[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rq1_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rq1_reg[7]_0 [7]),
        .Q(rq1[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rq2_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rq2_reg[7]_0 [0]),
        .Q(rq2[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rq2_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rq2_reg[7]_0 [1]),
        .Q(rq2[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rq2_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rq2_reg[7]_0 [2]),
        .Q(rq2[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rq2_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rq2_reg[7]_0 [3]),
        .Q(rq2[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rq2_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rq2_reg[7]_0 [4]),
        .Q(rq2[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rq2_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rq2_reg[7]_0 [5]),
        .Q(rq2[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rq2_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rq2_reg[7]_0 [6]),
        .Q(rq2[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rq2_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rq2_reg[7]_0 [7]),
        .Q(rq2[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rq3_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rq3_reg[7]_0 [0]),
        .Q(rq3[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rq3_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rq3_reg[7]_0 [1]),
        .Q(rq3[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rq3_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rq3_reg[7]_0 [2]),
        .Q(rq3[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rq3_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rq3_reg[7]_0 [3]),
        .Q(rq3[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rq3_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rq3_reg[7]_0 [4]),
        .Q(rq3[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rq3_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rq3_reg[7]_0 [5]),
        .Q(rq3[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rq3_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rq3_reg[7]_0 [6]),
        .Q(rq3[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rq3_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rq3_reg[7]_0 [7]),
        .Q(rq3[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rq4_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[0]),
        .Q(rq4[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rq4_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[1]),
        .Q(rq4[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rq4_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[2]),
        .Q(rq4[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rq4_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[3]),
        .Q(rq4[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rq4_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[4]),
        .Q(rq4[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rq4_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[5]),
        .Q(rq4[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rq4_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[6]),
        .Q(rq4[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rq4_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[7]),
        .Q(rq4[7]),
        .R(SR));
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
