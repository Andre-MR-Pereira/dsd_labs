// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Fri Nov 19 22:51:43 2021
// Host        : DESKTOP-G74GFK5 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Vivado/test_iris/test_iris.sim/sim_1/impl/timing/xsim/circuito_tb_time_impl.v
// Design      : fpga_basicIO
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module RAM128X1S_UNIQ_BASE_
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    A6,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input A6;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire O;
  wire O0;
  wire O1;
  wire WCLK;
  wire WE;
  wire NLW_HIGH_WADR7_UNCONNECTED;
  wire NLW_LOW_WADR7_UNCONNECTED;

  MUXF7 F7
       (.I0(O0),
        .I1(O1),
        .O(O),
        .S(A6));
  RAMS64E #(
    .INIT(64'h00000FFFFFFFFF00),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    HIGH
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O1),
        .WADR6(A6),
        .WADR7(NLW_HIGH_WADR7_UNCONNECTED),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000FFFFFFFFF),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    LOW
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O0),
        .WADR6(A6),
        .WADR7(NLW_LOW_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM128X1S_HD1
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    A6,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input A6;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire D;
  wire O;
  wire O0;
  wire O1;
  wire WCLK;
  wire WE;
  wire NLW_HIGH_WADR7_UNCONNECTED;
  wire NLW_LOW_WADR7_UNCONNECTED;

  MUXF7 F7
       (.I0(O0),
        .I1(O1),
        .O(O),
        .S(A6));
  RAMS64E #(
    .INIT(64'h00000FFFFFFFFFFF),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b11)) 
    HIGH
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O1),
        .WADR6(A6),
        .WADR7(NLW_HIGH_WADR7_UNCONNECTED),
        .WE(WE));
  RAMS64E #(
    .INIT(64'hFFFFFFF000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b10),
    .RAM_ADDRESS_SPACE(2'b10)) 
    LOW
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O0),
        .WADR6(A6),
        .WADR7(NLW_LOW_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2021.1" *) 
module blk_mem_gen_0
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [6:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [47:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [47:0]douta;

  wire [6:0]addra;
  wire clka;
  wire [47:0]dina;
  wire [47:0]douta;
  wire [0:0]wea;
  wire NLW_U0_clkb_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_deepsleep_UNCONNECTED;
  wire NLW_U0_eccpipece_UNCONNECTED;
  wire NLW_U0_ena_UNCONNECTED;
  wire NLW_U0_enb_UNCONNECTED;
  wire NLW_U0_injectdbiterr_UNCONNECTED;
  wire NLW_U0_injectsbiterr_UNCONNECTED;
  wire NLW_U0_regcea_UNCONNECTED;
  wire NLW_U0_regceb_UNCONNECTED;
  wire NLW_U0_rsta_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_aclk_UNCONNECTED;
  wire NLW_U0_s_aresetn_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_arvalid_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_awvalid_UNCONNECTED;
  wire NLW_U0_s_axi_bready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_injectdbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_injectsbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rready_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wlast_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axi_wvalid_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_shutdown_UNCONNECTED;
  wire NLW_U0_sleep_UNCONNECTED;
  wire [6:0]NLW_U0_addrb_UNCONNECTED;
  wire [47:0]NLW_U0_dinb_UNCONNECTED;
  wire [47:0]NLW_U0_doutb_UNCONNECTED;
  wire [6:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_arlen_UNCONNECTED;
  wire [2:0]NLW_U0_s_axi_arsize_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_awlen_UNCONNECTED;
  wire [2:0]NLW_U0_s_axi_awsize_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [6:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [47:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [47:0]NLW_U0_s_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_web_UNCONNECTED;

  (* C_ADDRA_WIDTH = "7" *) 
  (* C_ADDRB_WIDTH = "7" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     6.13735 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "108" *) 
  (* C_READ_DEPTH_B = "108" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "48" *) 
  (* C_READ_WIDTH_B = "48" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "108" *) 
  (* C_WRITE_DEPTH_B = "108" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "48" *) 
  (* C_WRITE_WIDTH_B = "48" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_default_data = "0" *) 
  (* c_elaboration_dir = "./" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb(NLW_U0_addrb_UNCONNECTED[6:0]),
        .clka(clka),
        .clkb(NLW_U0_clkb_UNCONNECTED),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(NLW_U0_deepsleep_UNCONNECTED),
        .dina(dina),
        .dinb(NLW_U0_dinb_UNCONNECTED[47:0]),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[47:0]),
        .eccpipece(NLW_U0_eccpipece_UNCONNECTED),
        .ena(NLW_U0_ena_UNCONNECTED),
        .enb(NLW_U0_enb_UNCONNECTED),
        .injectdbiterr(NLW_U0_injectdbiterr_UNCONNECTED),
        .injectsbiterr(NLW_U0_injectsbiterr_UNCONNECTED),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[6:0]),
        .regcea(NLW_U0_regcea_UNCONNECTED),
        .regceb(NLW_U0_regceb_UNCONNECTED),
        .rsta(NLW_U0_rsta_UNCONNECTED),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(NLW_U0_rstb_UNCONNECTED),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(NLW_U0_s_aclk_UNCONNECTED),
        .s_aresetn(NLW_U0_s_aresetn_UNCONNECTED),
        .s_axi_araddr(NLW_U0_s_axi_araddr_UNCONNECTED[31:0]),
        .s_axi_arburst(NLW_U0_s_axi_arburst_UNCONNECTED[1:0]),
        .s_axi_arid(NLW_U0_s_axi_arid_UNCONNECTED[3:0]),
        .s_axi_arlen(NLW_U0_s_axi_arlen_UNCONNECTED[7:0]),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize(NLW_U0_s_axi_arsize_UNCONNECTED[2:0]),
        .s_axi_arvalid(NLW_U0_s_axi_arvalid_UNCONNECTED),
        .s_axi_awaddr(NLW_U0_s_axi_awaddr_UNCONNECTED[31:0]),
        .s_axi_awburst(NLW_U0_s_axi_awburst_UNCONNECTED[1:0]),
        .s_axi_awid(NLW_U0_s_axi_awid_UNCONNECTED[3:0]),
        .s_axi_awlen(NLW_U0_s_axi_awlen_UNCONNECTED[7:0]),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize(NLW_U0_s_axi_awsize_UNCONNECTED[2:0]),
        .s_axi_awvalid(NLW_U0_s_axi_awvalid_UNCONNECTED),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(NLW_U0_s_axi_bready_UNCONNECTED),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(NLW_U0_s_axi_injectdbiterr_UNCONNECTED),
        .s_axi_injectsbiterr(NLW_U0_s_axi_injectsbiterr_UNCONNECTED),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[6:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[47:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(NLW_U0_s_axi_rready_UNCONNECTED),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata(NLW_U0_s_axi_wdata_UNCONNECTED[47:0]),
        .s_axi_wlast(NLW_U0_s_axi_wlast_UNCONNECTED),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(NLW_U0_s_axi_wstrb_UNCONNECTED[0]),
        .s_axi_wvalid(NLW_U0_s_axi_wvalid_UNCONNECTED),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(NLW_U0_shutdown_UNCONNECTED),
        .sleep(NLW_U0_sleep_UNCONNECTED),
        .wea(wea),
        .web(NLW_U0_web_UNCONNECTED[0]));
endmodule

module circuito
   (led_OBUF,
    CLK,
    Q,
    \FSM_sequential_currstate_reg[0] ,
    \flower_rattr4_reg[11] ,
    lopt,
    lopt_1);
  output [9:0]led_OBUF;
  input CLK;
  input [1:0]Q;
  input [0:0]\FSM_sequential_currstate_reg[0] ;
  input [47:0]\flower_rattr4_reg[11] ;
  output lopt;
  output lopt_1;

  wire CLK;
  wire [0:0]\FSM_sequential_currstate_reg[0] ;
  wire [1:0]Q;
  wire [6:0]addra;
  wire [1:0]class;
  wire control_unit_n_7;
  wire control_unit_n_9;
  wire [47:0]douta;
  wire [47:0]\flower_rattr4_reg[11] ;
  wire [9:0]led_OBUF;
  wire lopt;
  wire lopt_1;
  wire oper;
  wire rattr2;

  (* IMPORTED_FROM = "c:/Vivado/test_iris/test_iris.gen/sources_1/ip/dist_mem_gen_0/dist_mem_gen_0.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2021.1" *) 
  dist_mem_gen_0 class_mem_instance
       (.a(addra),
        .clk(CLK),
        .d({1'b0,1'b0}),
        .qspo(class),
        .we(1'b0));
  control control_unit
       (.CLK(CLK),
        .E(control_unit_n_7),
        .\FSM_sequential_currstate_reg[0]_0 (rattr2),
        .\FSM_sequential_currstate_reg[0]_1 (control_unit_n_9),
        .\FSM_sequential_currstate_reg[0]_2 (\FSM_sequential_currstate_reg[0] ),
        .Q(Q[1]),
        .oper(oper),
        .\raddr_reg[6]_0 (addra));
  (* IMPORTED_FROM = "c:/Vivado/test_iris/test_iris.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2021.1" *) 
  blk_mem_gen_0 feature_mem_instance
       (.addra(addra),
        .clka(CLK),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .wea(1'b0));
  knn knn_port
       (.CLK(CLK),
        .D(class),
        .E(rattr2),
        .\FSM_sequential_currstate_reg[1] (led_OBUF[1]),
        .Q(led_OBUF[8:7]),
        .douta(douta),
        .\flower_rattr4_reg[11]_0 (\flower_rattr4_reg[11] ),
        .knn_rst_reg_0(control_unit_n_9),
        .led_OBUF({led_OBUF[9],led_OBUF[6:2],led_OBUF[0]}),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .oper(oper),
        .\rclass_reg[0]_0 (Q),
        .\rclass_reg[0]_1 (control_unit_n_7));
endmodule

module clkdiv
   (clk10hz,
    CLK,
    \cnt_reg[23]_0 );
  output clk10hz;
  output CLK;
  input \cnt_reg[23]_0 ;

  wire CLK;
  wire I;
  wire clear;
  wire clk10hz;
  wire \cnt[0]_i_3_n_0 ;
  wire \cnt[0]_i_4_n_0 ;
  wire \cnt[0]_i_5_n_0 ;
  wire \cnt[0]_i_6_n_0 ;
  wire \cnt[0]_i_7_n_0 ;
  wire \cnt[0]_i_8_n_0 ;
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
  wire \cnt_reg[23]_0 ;
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
        .O(clk10hz));
  (* box_type = "PRIMITIVE" *) 
  BUFG BUFG_INST3
       (.I(\cnt_reg_n_0_[16] ),
        .O(CLK));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cnt[0]_i_1 
       (.I0(cnt_reg[1]),
        .I1(cnt_reg[0]),
        .I2(cnt_reg[3]),
        .I3(cnt_reg[2]),
        .I4(\cnt[0]_i_3_n_0 ),
        .I5(\cnt[0]_i_4_n_0 ),
        .O(clear));
  LUT5 #(
    .INIT(32'h80000000)) 
    \cnt[0]_i_3 
       (.I0(cnt_reg[10]),
        .I1(cnt_reg[12]),
        .I2(cnt_reg[15]),
        .I3(cnt_reg[19]),
        .I4(\cnt[0]_i_6_n_0 ),
        .O(\cnt[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \cnt[0]_i_4 
       (.I0(\cnt[0]_i_7_n_0 ),
        .I1(cnt_reg[22]),
        .I2(I),
        .I3(cnt_reg[21]),
        .I4(cnt_reg[20]),
        .I5(\cnt[0]_i_8_n_0 ),
        .O(\cnt[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_5 
       (.I0(cnt_reg[0]),
        .O(\cnt[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \cnt[0]_i_6 
       (.I0(cnt_reg[9]),
        .I1(cnt_reg[6]),
        .I2(cnt_reg[5]),
        .I3(cnt_reg[4]),
        .O(\cnt[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \cnt[0]_i_7 
       (.I0(cnt_reg[18]),
        .I1(cnt_reg[17]),
        .I2(\cnt_reg_n_0_[16] ),
        .I3(cnt_reg[14]),
        .O(\cnt[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \cnt[0]_i_8 
       (.I0(cnt_reg[8]),
        .I1(cnt_reg[7]),
        .I2(cnt_reg[13]),
        .I3(cnt_reg[11]),
        .O(\cnt[0]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(\cnt_reg[23]_0 ),
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
        .S({cnt_reg[3:1],\cnt[0]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[10] 
       (.C(\cnt_reg[23]_0 ),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_5 ),
        .Q(cnt_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[11] 
       (.C(\cnt_reg[23]_0 ),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_4 ),
        .Q(cnt_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[12] 
       (.C(\cnt_reg[23]_0 ),
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
       (.C(\cnt_reg[23]_0 ),
        .CE(1'b1),
        .D(\cnt_reg[12]_i_1_n_6 ),
        .Q(cnt_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[14] 
       (.C(\cnt_reg[23]_0 ),
        .CE(1'b1),
        .D(\cnt_reg[12]_i_1_n_5 ),
        .Q(cnt_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[15] 
       (.C(\cnt_reg[23]_0 ),
        .CE(1'b1),
        .D(\cnt_reg[12]_i_1_n_4 ),
        .Q(cnt_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[16] 
       (.C(\cnt_reg[23]_0 ),
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
       (.C(\cnt_reg[23]_0 ),
        .CE(1'b1),
        .D(\cnt_reg[16]_i_1_n_6 ),
        .Q(cnt_reg[17]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[18] 
       (.C(\cnt_reg[23]_0 ),
        .CE(1'b1),
        .D(\cnt_reg[16]_i_1_n_5 ),
        .Q(cnt_reg[18]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[19] 
       (.C(\cnt_reg[23]_0 ),
        .CE(1'b1),
        .D(\cnt_reg[16]_i_1_n_4 ),
        .Q(cnt_reg[19]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(\cnt_reg[23]_0 ),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_2_n_6 ),
        .Q(cnt_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[20] 
       (.C(\cnt_reg[23]_0 ),
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
       (.C(\cnt_reg[23]_0 ),
        .CE(1'b1),
        .D(\cnt_reg[20]_i_1_n_6 ),
        .Q(cnt_reg[21]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[22] 
       (.C(\cnt_reg[23]_0 ),
        .CE(1'b1),
        .D(\cnt_reg[20]_i_1_n_5 ),
        .Q(cnt_reg[22]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[23] 
       (.C(\cnt_reg[23]_0 ),
        .CE(1'b1),
        .D(\cnt_reg[20]_i_1_n_4 ),
        .Q(I),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(\cnt_reg[23]_0 ),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_2_n_5 ),
        .Q(cnt_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(\cnt_reg[23]_0 ),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_2_n_4 ),
        .Q(cnt_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(\cnt_reg[23]_0 ),
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
       (.C(\cnt_reg[23]_0 ),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_6 ),
        .Q(cnt_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(\cnt_reg[23]_0 ),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_5 ),
        .Q(cnt_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(\cnt_reg[23]_0 ),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_4 ),
        .Q(cnt_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[8] 
       (.C(\cnt_reg[23]_0 ),
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
       (.C(\cnt_reg[23]_0 ),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_6 ),
        .Q(cnt_reg[9]),
        .R(clear));
endmodule

module control
   (\raddr_reg[6]_0 ,
    E,
    \FSM_sequential_currstate_reg[0]_0 ,
    \FSM_sequential_currstate_reg[0]_1 ,
    oper,
    Q,
    \FSM_sequential_currstate_reg[0]_2 ,
    CLK);
  output [6:0]\raddr_reg[6]_0 ;
  output [0:0]E;
  output [0:0]\FSM_sequential_currstate_reg[0]_0 ;
  output \FSM_sequential_currstate_reg[0]_1 ;
  output oper;
  input [0:0]Q;
  input [0:0]\FSM_sequential_currstate_reg[0]_2 ;
  input CLK;

  wire CLK;
  wire [0:0]E;
  wire \FSM_sequential_currstate[0]_i_1_n_0 ;
  wire \FSM_sequential_currstate[1]_i_1_n_0 ;
  wire \FSM_sequential_currstate[1]_i_2_n_0 ;
  wire \FSM_sequential_currstate[1]_i_3_n_0 ;
  wire \FSM_sequential_currstate[1]_i_4_n_0 ;
  wire \FSM_sequential_currstate[1]_i_5_n_0 ;
  wire \FSM_sequential_currstate[1]_i_6_n_0 ;
  wire [0:0]\FSM_sequential_currstate_reg[0]_0 ;
  wire \FSM_sequential_currstate_reg[0]_1 ;
  wire [0:0]\FSM_sequential_currstate_reg[0]_2 ;
  wire [0:0]Q;
  wire flag;
  wire oper;
  wire [6:0]plusOp;
  wire \raddr[6]_i_1_n_0 ;
  wire \raddr[6]_i_3_n_0 ;
  wire [6:0]\raddr_reg[6]_0 ;

  LUT6 #(
    .INIT(64'h0000000032323202)) 
    \FSM_sequential_currstate[0]_i_1 
       (.I0(\FSM_sequential_currstate_reg[0]_2 ),
        .I1(oper),
        .I2(flag),
        .I3(\FSM_sequential_currstate[1]_i_2_n_0 ),
        .I4(\FSM_sequential_currstate[1]_i_3_n_0 ),
        .I5(Q),
        .O(\FSM_sequential_currstate[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008080838)) 
    \FSM_sequential_currstate[1]_i_1 
       (.I0(\FSM_sequential_currstate_reg[0]_2 ),
        .I1(oper),
        .I2(flag),
        .I3(\FSM_sequential_currstate[1]_i_2_n_0 ),
        .I4(\FSM_sequential_currstate[1]_i_3_n_0 ),
        .I5(Q),
        .O(\FSM_sequential_currstate[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    \FSM_sequential_currstate[1]_i_2 
       (.I0(\FSM_sequential_currstate[1]_i_4_n_0 ),
        .I1(\FSM_sequential_currstate[1]_i_2_n_0 ),
        .I2(\FSM_sequential_currstate[1]_i_5_n_0 ),
        .I3(\FSM_sequential_currstate[1]_i_6_n_0 ),
        .I4(flag),
        .O(\FSM_sequential_currstate[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h15FFFFFF)) 
    \FSM_sequential_currstate[1]_i_3 
       (.I0(\raddr_reg[6]_0 [4]),
        .I1(\raddr_reg[6]_0 [3]),
        .I2(\raddr_reg[6]_0 [2]),
        .I3(\raddr_reg[6]_0 [6]),
        .I4(\raddr_reg[6]_0 [5]),
        .O(\FSM_sequential_currstate[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBFBFBFFFFFFF)) 
    \FSM_sequential_currstate[1]_i_4 
       (.I0(Q),
        .I1(\raddr_reg[6]_0 [5]),
        .I2(\raddr_reg[6]_0 [6]),
        .I3(\raddr_reg[6]_0 [2]),
        .I4(\raddr_reg[6]_0 [3]),
        .I5(\raddr_reg[6]_0 [4]),
        .O(\FSM_sequential_currstate[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00600000)) 
    \FSM_sequential_currstate[1]_i_5 
       (.I0(\FSM_sequential_currstate[1]_i_6_n_0 ),
        .I1(\FSM_sequential_currstate[1]_i_5_n_0 ),
        .I2(flag),
        .I3(\FSM_sequential_currstate[1]_i_4_n_0 ),
        .I4(\FSM_sequential_currstate[1]_i_2_n_0 ),
        .O(\FSM_sequential_currstate[1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \FSM_sequential_currstate[1]_i_6 
       (.I0(\FSM_sequential_currstate[1]_i_6_n_0 ),
        .I1(\FSM_sequential_currstate[1]_i_2_n_0 ),
        .I2(flag),
        .I3(\FSM_sequential_currstate[1]_i_4_n_0 ),
        .O(\FSM_sequential_currstate[1]_i_6_n_0 ));
  (* FSM_ENCODED_STATES = "s_end:10,s_working:01,s_initial:00,iSTATE:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_currstate_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_currstate[0]_i_1_n_0 ),
        .Q(flag),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "s_end:10,s_working:01,s_initial:00,iSTATE:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_currstate_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_currstate[1]_i_1_n_0 ),
        .Q(oper),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h00A8)) 
    \flower_rattr3[11]_i_1 
       (.I0(flag),
        .I1(\FSM_sequential_currstate[1]_i_2_n_0 ),
        .I2(\FSM_sequential_currstate[1]_i_3_n_0 ),
        .I3(Q),
        .O(E));
  LUT4 #(
    .INIT(16'h00A8)) 
    \flower_rattr4[11]_i_1 
       (.I0(flag),
        .I1(\FSM_sequential_currstate[1]_i_2_n_0 ),
        .I2(\FSM_sequential_currstate[1]_i_3_n_0 ),
        .I3(Q),
        .O(\FSM_sequential_currstate_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hFF57)) 
    knn_rst_i_1
       (.I0(flag),
        .I1(\FSM_sequential_currstate[1]_i_2_n_0 ),
        .I2(\FSM_sequential_currstate[1]_i_3_n_0 ),
        .I3(Q),
        .O(\FSM_sequential_currstate_reg[0]_1 ));
  (* \PinAttr:I0:HOLD_DETOUR  = "192" *) 
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \raddr[0]_i_1 
       (.I0(\raddr_reg[6]_0 [0]),
        .O(plusOp[0]));
  (* \PinAttr:I0:HOLD_DETOUR  = "192" *) 
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \raddr[1]_i_1 
       (.I0(\raddr_reg[6]_0 [0]),
        .I1(\raddr_reg[6]_0 [1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \raddr[2]_i_1 
       (.I0(\raddr_reg[6]_0 [0]),
        .I1(\raddr_reg[6]_0 [1]),
        .I2(\raddr_reg[6]_0 [2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \raddr[3]_i_1 
       (.I0(\raddr_reg[6]_0 [1]),
        .I1(\raddr_reg[6]_0 [0]),
        .I2(\raddr_reg[6]_0 [2]),
        .I3(\raddr_reg[6]_0 [3]),
        .O(plusOp[3]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \raddr[4]_i_1 
       (.I0(\raddr_reg[6]_0 [2]),
        .I1(\raddr_reg[6]_0 [0]),
        .I2(\raddr_reg[6]_0 [1]),
        .I3(\raddr_reg[6]_0 [3]),
        .I4(\raddr_reg[6]_0 [4]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \raddr[5]_i_1 
       (.I0(\raddr_reg[6]_0 [3]),
        .I1(\raddr_reg[6]_0 [1]),
        .I2(\raddr_reg[6]_0 [0]),
        .I3(\raddr_reg[6]_0 [2]),
        .I4(\raddr_reg[6]_0 [4]),
        .I5(\raddr_reg[6]_0 [5]),
        .O(plusOp[5]));
  LUT2 #(
    .INIT(4'hB)) 
    \raddr[6]_i_1 
       (.I0(Q),
        .I1(flag),
        .O(\raddr[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \raddr[6]_i_2 
       (.I0(\raddr[6]_i_3_n_0 ),
        .I1(\raddr_reg[6]_0 [5]),
        .I2(\raddr_reg[6]_0 [6]),
        .O(plusOp[6]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \raddr[6]_i_3 
       (.I0(\raddr_reg[6]_0 [4]),
        .I1(\raddr_reg[6]_0 [2]),
        .I2(\raddr_reg[6]_0 [0]),
        .I3(\raddr_reg[6]_0 [1]),
        .I4(\raddr_reg[6]_0 [3]),
        .O(\raddr[6]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(\raddr_reg[6]_0 [0]),
        .R(\raddr[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(\raddr_reg[6]_0 [1]),
        .R(\raddr[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(\raddr_reg[6]_0 [2]),
        .R(\raddr[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(\raddr_reg[6]_0 [3]),
        .R(\raddr[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(\raddr_reg[6]_0 [4]),
        .R(\raddr[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp[5]),
        .Q(\raddr_reg[6]_0 [5]),
        .R(\raddr[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp[6]),
        .Q(\raddr_reg[6]_0 [6]),
        .R(\raddr[6]_i_1_n_0 ));
endmodule

module disp7
   (seg_OBUF,
    an_OBUF,
    dp_OBUF,
    \seg[4] ,
    \seg[4]_0 ,
    \seg[4]_1 ,
    Q,
    \seg_OBUF[4]_inst_i_1_0 ,
    dp,
    \seg_OBUF[6]_inst_i_1_0 ,
    \seg_OBUF[6]_inst_i_1_1 ,
    \seg_OBUF[6]_inst_i_1_2 ,
    \seg_OBUF[6]_inst_i_1_3 ,
    sel0,
    CLK);
  output [6:0]seg_OBUF;
  output [3:0]an_OBUF;
  output dp_OBUF;
  input \seg[4] ;
  input \seg[4]_0 ;
  input \seg[4]_1 ;
  input [0:0]Q;
  input \seg_OBUF[4]_inst_i_1_0 ;
  input [2:0]dp;
  input \seg_OBUF[6]_inst_i_1_0 ;
  input \seg_OBUF[6]_inst_i_1_1 ;
  input \seg_OBUF[6]_inst_i_1_2 ;
  input \seg_OBUF[6]_inst_i_1_3 ;
  input [3:0]sel0;
  input CLK;

  wire CLK;
  wire [0:0]Q;
  wire [3:0]an_OBUF;
  wire [2:0]dp;
  wire dp_OBUF;
  wire [1:0]ndisp;
  wire \ndisp[0]_i_1_n_0 ;
  wire \ndisp[1]_i_1_n_0 ;
  wire \seg[4] ;
  wire \seg[4]_0 ;
  wire \seg[4]_1 ;
  wire [6:0]seg_OBUF;
  wire \seg_OBUF[0]_inst_i_2_n_0 ;
  wire \seg_OBUF[0]_inst_i_3_n_0 ;
  wire \seg_OBUF[1]_inst_i_2_n_0 ;
  wire \seg_OBUF[1]_inst_i_3_n_0 ;
  wire \seg_OBUF[2]_inst_i_2_n_0 ;
  wire \seg_OBUF[2]_inst_i_3_n_0 ;
  wire \seg_OBUF[3]_inst_i_2_n_0 ;
  wire \seg_OBUF[3]_inst_i_3_n_0 ;
  wire \seg_OBUF[4]_inst_i_1_0 ;
  wire \seg_OBUF[4]_inst_i_2_n_0 ;
  wire \seg_OBUF[4]_inst_i_3_n_0 ;
  wire \seg_OBUF[5]_inst_i_2_n_0 ;
  wire \seg_OBUF[5]_inst_i_3_n_0 ;
  wire \seg_OBUF[5]_inst_i_4_n_0 ;
  wire \seg_OBUF[6]_inst_i_1_0 ;
  wire \seg_OBUF[6]_inst_i_1_1 ;
  wire \seg_OBUF[6]_inst_i_1_2 ;
  wire \seg_OBUF[6]_inst_i_1_3 ;
  wire \seg_OBUF[6]_inst_i_5_n_0 ;
  wire \seg_OBUF[6]_inst_i_6_n_0 ;
  wire [3:0]sel0;

  LUT2 #(
    .INIT(4'hE)) 
    \an_OBUF[0]_inst_i_1 
       (.I0(ndisp[1]),
        .I1(ndisp[0]),
        .O(an_OBUF[0]));
  LUT2 #(
    .INIT(4'hB)) 
    \an_OBUF[1]_inst_i_1 
       (.I0(ndisp[1]),
        .I1(ndisp[0]),
        .O(an_OBUF[1]));
  LUT2 #(
    .INIT(4'hB)) 
    \an_OBUF[2]_inst_i_1 
       (.I0(ndisp[0]),
        .I1(ndisp[1]),
        .O(an_OBUF[2]));
  LUT2 #(
    .INIT(4'h7)) 
    \an_OBUF[3]_inst_i_1 
       (.I0(ndisp[0]),
        .I1(ndisp[1]),
        .O(an_OBUF[3]));
  LUT3 #(
    .INIT(8'h1F)) 
    dp_OBUF_inst_i_1
       (.I0(dp[2]),
        .I1(ndisp[1]),
        .I2(ndisp[0]),
        .O(dp_OBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \ndisp[0]_i_1 
       (.I0(ndisp[0]),
        .O(\ndisp[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ndisp[1]_i_1 
       (.I0(ndisp[0]),
        .I1(ndisp[1]),
        .O(\ndisp[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ndisp_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ndisp[0]_i_1_n_0 ),
        .Q(ndisp[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ndisp_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\ndisp[1]_i_1_n_0 ),
        .Q(ndisp[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0006)) 
    \seg_OBUF[0]_inst_i_1 
       (.I0(\seg[4] ),
        .I1(\seg[4]_1 ),
        .I2(an_OBUF[3]),
        .I3(\seg[4]_0 ),
        .I4(\seg_OBUF[5]_inst_i_3_n_0 ),
        .I5(\seg_OBUF[0]_inst_i_2_n_0 ),
        .O(seg_OBUF[0]));
  LUT6 #(
    .INIT(64'hABAAAAAABAABAABA)) 
    \seg_OBUF[0]_inst_i_2 
       (.I0(\seg_OBUF[0]_inst_i_3_n_0 ),
        .I1(an_OBUF[0]),
        .I2(\seg_OBUF[6]_inst_i_1_0 ),
        .I3(\seg_OBUF[6]_inst_i_1_1 ),
        .I4(\seg_OBUF[6]_inst_i_1_2 ),
        .I5(\seg_OBUF[6]_inst_i_1_3 ),
        .O(\seg_OBUF[0]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000418400000000)) 
    \seg_OBUF[0]_inst_i_3 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(ndisp[1]),
        .I5(ndisp[0]),
        .O(\seg_OBUF[0]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBEAAAAAAAAAAAAAA)) 
    \seg_OBUF[1]_inst_i_1 
       (.I0(\seg_OBUF[1]_inst_i_2_n_0 ),
        .I1(\seg[4]_1 ),
        .I2(\seg[4]_0 ),
        .I3(\seg[4] ),
        .I4(ndisp[1]),
        .I5(ndisp[0]),
        .O(seg_OBUF[1]));
  LUT6 #(
    .INIT(64'hBABBABBABAAAAAAA)) 
    \seg_OBUF[1]_inst_i_2 
       (.I0(\seg_OBUF[1]_inst_i_3_n_0 ),
        .I1(an_OBUF[0]),
        .I2(\seg_OBUF[6]_inst_i_1_3 ),
        .I3(\seg_OBUF[6]_inst_i_1_2 ),
        .I4(\seg_OBUF[6]_inst_i_1_1 ),
        .I5(\seg_OBUF[6]_inst_i_1_0 ),
        .O(\seg_OBUF[1]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4400404000404000)) 
    \seg_OBUF[1]_inst_i_3 
       (.I0(ndisp[1]),
        .I1(ndisp[0]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(\seg_OBUF[1]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAEAAA)) 
    \seg_OBUF[2]_inst_i_1 
       (.I0(\seg_OBUF[2]_inst_i_2_n_0 ),
        .I1(\seg[4]_0 ),
        .I2(ndisp[1]),
        .I3(ndisp[0]),
        .I4(\seg[4] ),
        .I5(\seg[4]_1 ),
        .O(seg_OBUF[2]));
  LUT6 #(
    .INIT(64'hBAAAAAAABBAAAABA)) 
    \seg_OBUF[2]_inst_i_2 
       (.I0(\seg_OBUF[2]_inst_i_3_n_0 ),
        .I1(an_OBUF[0]),
        .I2(\seg_OBUF[6]_inst_i_1_3 ),
        .I3(\seg_OBUF[6]_inst_i_1_0 ),
        .I4(\seg_OBUF[6]_inst_i_1_1 ),
        .I5(\seg_OBUF[6]_inst_i_1_2 ),
        .O(\seg_OBUF[2]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000C14000000000)) 
    \seg_OBUF[2]_inst_i_3 
       (.I0(sel0[0]),
        .I1(sel0[3]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(ndisp[1]),
        .I5(ndisp[0]),
        .O(\seg_OBUF[2]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEFEEFEFEE)) 
    \seg_OBUF[3]_inst_i_1 
       (.I0(\seg_OBUF[3]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_3_n_0 ),
        .I2(\seg[4]_0 ),
        .I3(\seg[4]_1 ),
        .I4(\seg[4] ),
        .I5(an_OBUF[3]),
        .O(seg_OBUF[3]));
  LUT6 #(
    .INIT(64'hBAAABAABABAAAABA)) 
    \seg_OBUF[3]_inst_i_2 
       (.I0(\seg_OBUF[3]_inst_i_3_n_0 ),
        .I1(an_OBUF[0]),
        .I2(\seg_OBUF[6]_inst_i_1_2 ),
        .I3(\seg_OBUF[6]_inst_i_1_3 ),
        .I4(\seg_OBUF[6]_inst_i_1_1 ),
        .I5(\seg_OBUF[6]_inst_i_1_0 ),
        .O(\seg_OBUF[3]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000A14200000000)) 
    \seg_OBUF[3]_inst_i_3 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(ndisp[1]),
        .I5(ndisp[0]),
        .O(\seg_OBUF[3]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0F02)) 
    \seg_OBUF[4]_inst_i_1 
       (.I0(\seg[4] ),
        .I1(\seg[4]_0 ),
        .I2(an_OBUF[3]),
        .I3(\seg[4]_1 ),
        .I4(\seg_OBUF[5]_inst_i_3_n_0 ),
        .I5(\seg_OBUF[4]_inst_i_2_n_0 ),
        .O(seg_OBUF[4]));
  LUT6 #(
    .INIT(64'hAAAABBABABAABBAA)) 
    \seg_OBUF[4]_inst_i_2 
       (.I0(\seg_OBUF[4]_inst_i_3_n_0 ),
        .I1(an_OBUF[0]),
        .I2(\seg_OBUF[6]_inst_i_1_3 ),
        .I3(\seg_OBUF[6]_inst_i_1_2 ),
        .I4(\seg_OBUF[6]_inst_i_1_1 ),
        .I5(\seg_OBUF[6]_inst_i_1_0 ),
        .O(\seg_OBUF[4]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000307200000000)) 
    \seg_OBUF[4]_inst_i_3 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(ndisp[1]),
        .I5(ndisp[0]),
        .O(\seg_OBUF[4]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEFEFFEEFE)) 
    \seg_OBUF[5]_inst_i_1 
       (.I0(\seg_OBUF[5]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[5]_inst_i_3_n_0 ),
        .I2(\seg[4]_0 ),
        .I3(\seg[4] ),
        .I4(\seg[4]_1 ),
        .I5(an_OBUF[3]),
        .O(seg_OBUF[5]));
  LUT6 #(
    .INIT(64'hAAAAAAAABBEBABAA)) 
    \seg_OBUF[5]_inst_i_2 
       (.I0(\seg_OBUF[5]_inst_i_4_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_1_1 ),
        .I2(\seg_OBUF[6]_inst_i_1_0 ),
        .I3(\seg_OBUF[6]_inst_i_1_3 ),
        .I4(\seg_OBUF[6]_inst_i_1_2 ),
        .I5(an_OBUF[0]),
        .O(\seg_OBUF[5]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0C000C000C000A00)) 
    \seg_OBUF[5]_inst_i_3 
       (.I0(Q),
        .I1(\seg_OBUF[4]_inst_i_1_0 ),
        .I2(ndisp[0]),
        .I3(ndisp[1]),
        .I4(dp[1]),
        .I5(dp[0]),
        .O(\seg_OBUF[5]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0040000040004440)) 
    \seg_OBUF[5]_inst_i_4 
       (.I0(ndisp[1]),
        .I1(ndisp[0]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(sel0[3]),
        .O(\seg_OBUF[5]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF9F001F00)) 
    \seg_OBUF[6]_inst_i_1 
       (.I0(\seg[4]_0 ),
        .I1(\seg[4] ),
        .I2(ndisp[0]),
        .I3(ndisp[1]),
        .I4(\seg[4]_1 ),
        .I5(\seg_OBUF[6]_inst_i_5_n_0 ),
        .O(seg_OBUF[6]));
  LUT6 #(
    .INIT(64'hABAAAAAAAAABBAAB)) 
    \seg_OBUF[6]_inst_i_5 
       (.I0(\seg_OBUF[6]_inst_i_6_n_0 ),
        .I1(an_OBUF[0]),
        .I2(\seg_OBUF[6]_inst_i_1_1 ),
        .I3(\seg_OBUF[6]_inst_i_1_0 ),
        .I4(\seg_OBUF[6]_inst_i_1_2 ),
        .I5(\seg_OBUF[6]_inst_i_1_3 ),
        .O(\seg_OBUF[6]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000108500000000)) 
    \seg_OBUF[6]_inst_i_6 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(ndisp[1]),
        .I5(ndisp[0]),
        .O(\seg_OBUF[6]_inst_i_6_n_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "dist_mem_gen_0,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2021.1" *) 
module dist_mem_gen_0
   (a,
    d,
    clk,
    we,
    qspo);
  input [6:0]a;
  input [1:0]d;
  input clk;
  input we;
  output [1:0]qspo;

  wire [6:0]a;
  wire clk;
  wire [1:0]d;
  wire [1:0]qspo;
  wire we;
  wire NLW_U0_i_ce_UNCONNECTED;
  wire NLW_U0_qdpo_ce_UNCONNECTED;
  wire NLW_U0_qdpo_clk_UNCONNECTED;
  wire NLW_U0_qdpo_rst_UNCONNECTED;
  wire NLW_U0_qdpo_srst_UNCONNECTED;
  wire NLW_U0_qspo_ce_UNCONNECTED;
  wire NLW_U0_qspo_rst_UNCONNECTED;
  wire NLW_U0_qspo_srst_UNCONNECTED;
  wire [1:0]NLW_U0_dpo_UNCONNECTED;
  wire [6:0]NLW_U0_dpra_UNCONNECTED;
  wire [1:0]NLW_U0_qdpo_UNCONNECTED;
  wire [1:0]NLW_U0_spo_UNCONNECTED;

  (* C_FAMILY = "artix7" *) 
  (* C_HAS_CLK = "1" *) 
  (* C_HAS_D = "1" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "1" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "7" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "128" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_i_ce = "0" *) 
  (* c_has_qspo = "1" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "0" *) 
  (* c_mem_init_file = "dist_mem_gen_0.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_pipeline_stages = "0" *) 
  (* c_qualify_we = "0" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "2" *) 
  (* is_du_within_envelope = "true" *) 
  dist_mem_gen_0_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(clk),
        .d(d),
        .dpo(NLW_U0_dpo_UNCONNECTED[1:0]),
        .dpra(NLW_U0_dpra_UNCONNECTED[6:0]),
        .i_ce(NLW_U0_i_ce_UNCONNECTED),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[1:0]),
        .qdpo_ce(NLW_U0_qdpo_ce_UNCONNECTED),
        .qdpo_clk(NLW_U0_qdpo_clk_UNCONNECTED),
        .qdpo_rst(NLW_U0_qdpo_rst_UNCONNECTED),
        .qdpo_srst(NLW_U0_qdpo_srst_UNCONNECTED),
        .qspo(qspo),
        .qspo_ce(NLW_U0_qspo_ce_UNCONNECTED),
        .qspo_rst(NLW_U0_qspo_rst_UNCONNECTED),
        .qspo_srst(NLW_U0_qspo_srst_UNCONNECTED),
        .spo(NLW_U0_spo_UNCONNECTED[1:0]),
        .we(we));
endmodule

module distance
   (SR,
    \rout_reg[25]_0 ,
    rmul1_reg_0,
    CLK,
    Q,
    \rp4_reg[11]_0 ,
    \rq2_reg[11]_0 ,
    \rp2_reg[11]_0 ,
    \rq3_reg[11]_0 ,
    \rp3_reg[11]_0 ,
    \rq1_reg[11]_0 ,
    \rp1_reg[11]_0 );
  output [0:0]SR;
  output [25:0]\rout_reg[25]_0 ;
  input rmul1_reg_0;
  input CLK;
  input [11:0]Q;
  input [11:0]\rp4_reg[11]_0 ;
  input [11:0]\rq2_reg[11]_0 ;
  input [11:0]\rp2_reg[11]_0 ;
  input [11:0]\rq3_reg[11]_0 ;
  input [11:0]\rp3_reg[11]_0 ;
  input [11:0]\rq1_reg[11]_0 ;
  input [11:0]\rp1_reg[11]_0 ;

  wire [12:0]A;
  wire CLK;
  wire [11:0]Q;
  wire [0:0]SR;
  wire [25:0]add3;
  wire done;
  wire en1;
  wire en2;
  wire en2_i_1_n_0;
  wire en3;
  wire en3_i_1_n_0;
  wire rmul1_reg_0;
  wire rmul1_reg_n_100;
  wire rmul1_reg_n_101;
  wire rmul1_reg_n_102;
  wire rmul1_reg_n_103;
  wire rmul1_reg_n_104;
  wire rmul1_reg_n_105;
  wire rmul1_reg_n_81;
  wire rmul1_reg_n_82;
  wire rmul1_reg_n_83;
  wire rmul1_reg_n_84;
  wire rmul1_reg_n_85;
  wire rmul1_reg_n_86;
  wire rmul1_reg_n_87;
  wire rmul1_reg_n_88;
  wire rmul1_reg_n_89;
  wire rmul1_reg_n_90;
  wire rmul1_reg_n_91;
  wire rmul1_reg_n_92;
  wire rmul1_reg_n_93;
  wire rmul1_reg_n_94;
  wire rmul1_reg_n_95;
  wire rmul1_reg_n_96;
  wire rmul1_reg_n_97;
  wire rmul1_reg_n_98;
  wire rmul1_reg_n_99;
  wire rmul2_reg_n_100;
  wire rmul2_reg_n_101;
  wire rmul2_reg_n_102;
  wire rmul2_reg_n_103;
  wire rmul2_reg_n_104;
  wire rmul2_reg_n_105;
  wire rmul2_reg_n_81;
  wire rmul2_reg_n_82;
  wire rmul2_reg_n_83;
  wire rmul2_reg_n_84;
  wire rmul2_reg_n_85;
  wire rmul2_reg_n_86;
  wire rmul2_reg_n_87;
  wire rmul2_reg_n_88;
  wire rmul2_reg_n_89;
  wire rmul2_reg_n_90;
  wire rmul2_reg_n_91;
  wire rmul2_reg_n_92;
  wire rmul2_reg_n_93;
  wire rmul2_reg_n_94;
  wire rmul2_reg_n_95;
  wire rmul2_reg_n_96;
  wire rmul2_reg_n_97;
  wire rmul2_reg_n_98;
  wire rmul2_reg_n_99;
  wire rmul3_reg_n_100;
  wire rmul3_reg_n_101;
  wire rmul3_reg_n_102;
  wire rmul3_reg_n_103;
  wire rmul3_reg_n_104;
  wire rmul3_reg_n_105;
  wire rmul3_reg_n_81;
  wire rmul3_reg_n_82;
  wire rmul3_reg_n_83;
  wire rmul3_reg_n_84;
  wire rmul3_reg_n_85;
  wire rmul3_reg_n_86;
  wire rmul3_reg_n_87;
  wire rmul3_reg_n_88;
  wire rmul3_reg_n_89;
  wire rmul3_reg_n_90;
  wire rmul3_reg_n_91;
  wire rmul3_reg_n_92;
  wire rmul3_reg_n_93;
  wire rmul3_reg_n_94;
  wire rmul3_reg_n_95;
  wire rmul3_reg_n_96;
  wire rmul3_reg_n_97;
  wire rmul3_reg_n_98;
  wire rmul3_reg_n_99;
  wire rmul4_reg_n_100;
  wire rmul4_reg_n_101;
  wire rmul4_reg_n_102;
  wire rmul4_reg_n_103;
  wire rmul4_reg_n_104;
  wire rmul4_reg_n_105;
  wire rmul4_reg_n_81;
  wire rmul4_reg_n_82;
  wire rmul4_reg_n_83;
  wire rmul4_reg_n_84;
  wire rmul4_reg_n_85;
  wire rmul4_reg_n_86;
  wire rmul4_reg_n_87;
  wire rmul4_reg_n_88;
  wire rmul4_reg_n_89;
  wire rmul4_reg_n_90;
  wire rmul4_reg_n_91;
  wire rmul4_reg_n_92;
  wire rmul4_reg_n_93;
  wire rmul4_reg_n_94;
  wire rmul4_reg_n_95;
  wire rmul4_reg_n_96;
  wire rmul4_reg_n_97;
  wire rmul4_reg_n_98;
  wire rmul4_reg_n_99;
  wire \rout[11]_i_10_n_0 ;
  wire \rout[11]_i_11_n_0 ;
  wire \rout[11]_i_12_n_0 ;
  wire \rout[11]_i_13_n_0 ;
  wire \rout[11]_i_2_n_0 ;
  wire \rout[11]_i_3_n_0 ;
  wire \rout[11]_i_4_n_0 ;
  wire \rout[11]_i_5_n_0 ;
  wire \rout[11]_i_6_n_0 ;
  wire \rout[11]_i_7_n_0 ;
  wire \rout[11]_i_8_n_0 ;
  wire \rout[11]_i_9_n_0 ;
  wire \rout[15]_i_10_n_0 ;
  wire \rout[15]_i_11_n_0 ;
  wire \rout[15]_i_12_n_0 ;
  wire \rout[15]_i_13_n_0 ;
  wire \rout[15]_i_2_n_0 ;
  wire \rout[15]_i_3_n_0 ;
  wire \rout[15]_i_4_n_0 ;
  wire \rout[15]_i_5_n_0 ;
  wire \rout[15]_i_6_n_0 ;
  wire \rout[15]_i_7_n_0 ;
  wire \rout[15]_i_8_n_0 ;
  wire \rout[15]_i_9_n_0 ;
  wire \rout[19]_i_10_n_0 ;
  wire \rout[19]_i_11_n_0 ;
  wire \rout[19]_i_12_n_0 ;
  wire \rout[19]_i_13_n_0 ;
  wire \rout[19]_i_2_n_0 ;
  wire \rout[19]_i_3_n_0 ;
  wire \rout[19]_i_4_n_0 ;
  wire \rout[19]_i_5_n_0 ;
  wire \rout[19]_i_6_n_0 ;
  wire \rout[19]_i_7_n_0 ;
  wire \rout[19]_i_8_n_0 ;
  wire \rout[19]_i_9_n_0 ;
  wire \rout[23]_i_10_n_0 ;
  wire \rout[23]_i_11_n_0 ;
  wire \rout[23]_i_12_n_0 ;
  wire \rout[23]_i_13_n_0 ;
  wire \rout[23]_i_2_n_0 ;
  wire \rout[23]_i_3_n_0 ;
  wire \rout[23]_i_4_n_0 ;
  wire \rout[23]_i_5_n_0 ;
  wire \rout[23]_i_6_n_0 ;
  wire \rout[23]_i_7_n_0 ;
  wire \rout[23]_i_8_n_0 ;
  wire \rout[23]_i_9_n_0 ;
  wire \rout[25]_i_2_n_0 ;
  wire \rout[25]_i_3_n_0 ;
  wire \rout[25]_i_4_n_0 ;
  wire \rout[25]_i_5_n_0 ;
  wire \rout[25]_i_6_n_0 ;
  wire \rout[25]_i_7_n_0 ;
  wire \rout[3]_i_2_n_0 ;
  wire \rout[3]_i_3_n_0 ;
  wire \rout[3]_i_4_n_0 ;
  wire \rout[3]_i_5_n_0 ;
  wire \rout[3]_i_6_n_0 ;
  wire \rout[3]_i_7_n_0 ;
  wire \rout[3]_i_8_n_0 ;
  wire \rout[3]_i_9_n_0 ;
  wire \rout[7]_i_10_n_0 ;
  wire \rout[7]_i_11_n_0 ;
  wire \rout[7]_i_12_n_0 ;
  wire \rout[7]_i_13_n_0 ;
  wire \rout[7]_i_2_n_0 ;
  wire \rout[7]_i_3_n_0 ;
  wire \rout[7]_i_4_n_0 ;
  wire \rout[7]_i_5_n_0 ;
  wire \rout[7]_i_6_n_0 ;
  wire \rout[7]_i_7_n_0 ;
  wire \rout[7]_i_8_n_0 ;
  wire \rout[7]_i_9_n_0 ;
  wire \rout_reg[11]_i_1_n_0 ;
  wire \rout_reg[15]_i_1_n_0 ;
  wire \rout_reg[19]_i_1_n_0 ;
  wire \rout_reg[23]_i_1_n_0 ;
  wire [25:0]\rout_reg[25]_0 ;
  wire \rout_reg[3]_i_1_n_0 ;
  wire \rout_reg[7]_i_1_n_0 ;
  wire [11:0]rp1;
  wire [11:0]\rp1_reg[11]_0 ;
  wire [11:0]rp2;
  wire [11:0]\rp2_reg[11]_0 ;
  wire [11:0]rp3;
  wire [11:0]\rp3_reg[11]_0 ;
  wire [11:0]rp4;
  wire [11:0]\rp4_reg[11]_0 ;
  wire [11:0]rq1;
  wire [11:0]\rq1_reg[11]_0 ;
  wire [11:0]rq2;
  wire [11:0]\rq2_reg[11]_0 ;
  wire [11:0]rq3;
  wire [11:0]\rq3_reg[11]_0 ;
  wire [11:0]rq4;
  wire sub1_carry__0_i_1_n_0;
  wire sub1_carry__0_i_2_n_0;
  wire sub1_carry__0_i_3_n_0;
  wire sub1_carry__0_i_4_n_0;
  wire sub1_carry__0_n_0;
  wire sub1_carry__1_i_1_n_0;
  wire sub1_carry__1_i_2_n_0;
  wire sub1_carry__1_i_3_n_0;
  wire sub1_carry__1_i_4_n_0;
  wire sub1_carry__1_n_0;
  wire sub1_carry_i_1_n_0;
  wire sub1_carry_i_2_n_0;
  wire sub1_carry_i_3_n_0;
  wire sub1_carry_i_4_n_0;
  wire sub1_carry_n_0;
  wire sub2_carry__0_i_1_n_0;
  wire sub2_carry__0_i_2_n_0;
  wire sub2_carry__0_i_3_n_0;
  wire sub2_carry__0_i_4_n_0;
  wire sub2_carry__0_n_0;
  wire sub2_carry__0_n_4;
  wire sub2_carry__0_n_5;
  wire sub2_carry__0_n_6;
  wire sub2_carry__0_n_7;
  wire sub2_carry__1_i_1_n_0;
  wire sub2_carry__1_i_2_n_0;
  wire sub2_carry__1_i_3_n_0;
  wire sub2_carry__1_i_4_n_0;
  wire sub2_carry__1_n_0;
  wire sub2_carry__1_n_4;
  wire sub2_carry__1_n_5;
  wire sub2_carry__1_n_6;
  wire sub2_carry__1_n_7;
  wire sub2_carry__2_n_7;
  wire sub2_carry_i_1_n_0;
  wire sub2_carry_i_2_n_0;
  wire sub2_carry_i_3_n_0;
  wire sub2_carry_i_4_n_0;
  wire sub2_carry_n_0;
  wire sub2_carry_n_4;
  wire sub2_carry_n_5;
  wire sub2_carry_n_6;
  wire sub2_carry_n_7;
  wire sub3_carry__0_i_1_n_0;
  wire sub3_carry__0_i_2_n_0;
  wire sub3_carry__0_i_3_n_0;
  wire sub3_carry__0_i_4_n_0;
  wire sub3_carry__0_n_0;
  wire sub3_carry__0_n_4;
  wire sub3_carry__0_n_5;
  wire sub3_carry__0_n_6;
  wire sub3_carry__0_n_7;
  wire sub3_carry__1_i_1_n_0;
  wire sub3_carry__1_i_2_n_0;
  wire sub3_carry__1_i_3_n_0;
  wire sub3_carry__1_i_4_n_0;
  wire sub3_carry__1_n_0;
  wire sub3_carry__1_n_4;
  wire sub3_carry__1_n_5;
  wire sub3_carry__1_n_6;
  wire sub3_carry__1_n_7;
  wire sub3_carry__2_n_7;
  wire sub3_carry_i_1_n_0;
  wire sub3_carry_i_2_n_0;
  wire sub3_carry_i_3_n_0;
  wire sub3_carry_i_4_n_0;
  wire sub3_carry_n_0;
  wire sub3_carry_n_4;
  wire sub3_carry_n_5;
  wire sub3_carry_n_6;
  wire sub3_carry_n_7;
  wire sub4_carry__0_i_1_n_0;
  wire sub4_carry__0_i_2_n_0;
  wire sub4_carry__0_i_3_n_0;
  wire sub4_carry__0_i_4_n_0;
  wire sub4_carry__0_n_0;
  wire sub4_carry__0_n_4;
  wire sub4_carry__0_n_5;
  wire sub4_carry__0_n_6;
  wire sub4_carry__0_n_7;
  wire sub4_carry__1_i_1_n_0;
  wire sub4_carry__1_i_2_n_0;
  wire sub4_carry__1_i_3_n_0;
  wire sub4_carry__1_i_4_n_0;
  wire sub4_carry__1_n_0;
  wire sub4_carry__1_n_4;
  wire sub4_carry__1_n_5;
  wire sub4_carry__1_n_6;
  wire sub4_carry__1_n_7;
  wire sub4_carry__2_n_7;
  wire sub4_carry_i_1_n_0;
  wire sub4_carry_i_2_n_0;
  wire sub4_carry_i_3_n_0;
  wire sub4_carry_i_4_n_0;
  wire sub4_carry_n_0;
  wire sub4_carry_n_4;
  wire sub4_carry_n_5;
  wire sub4_carry_n_6;
  wire sub4_carry_n_7;
  wire NLW_rmul1_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_rmul1_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_rmul1_reg_OVERFLOW_UNCONNECTED;
  wire NLW_rmul1_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_rmul1_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_rmul1_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_rmul1_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_rmul1_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_rmul1_reg_CARRYOUT_UNCONNECTED;
  wire [47:25]NLW_rmul1_reg_P_UNCONNECTED;
  wire [47:0]NLW_rmul1_reg_PCOUT_UNCONNECTED;
  wire NLW_rmul2_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_rmul2_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_rmul2_reg_OVERFLOW_UNCONNECTED;
  wire NLW_rmul2_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_rmul2_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_rmul2_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_rmul2_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_rmul2_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_rmul2_reg_CARRYOUT_UNCONNECTED;
  wire [47:25]NLW_rmul2_reg_P_UNCONNECTED;
  wire [47:0]NLW_rmul2_reg_PCOUT_UNCONNECTED;
  wire NLW_rmul3_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_rmul3_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_rmul3_reg_OVERFLOW_UNCONNECTED;
  wire NLW_rmul3_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_rmul3_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_rmul3_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_rmul3_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_rmul3_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_rmul3_reg_CARRYOUT_UNCONNECTED;
  wire [47:25]NLW_rmul3_reg_P_UNCONNECTED;
  wire [47:0]NLW_rmul3_reg_PCOUT_UNCONNECTED;
  wire NLW_rmul4_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_rmul4_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_rmul4_reg_OVERFLOW_UNCONNECTED;
  wire NLW_rmul4_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_rmul4_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_rmul4_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_rmul4_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_rmul4_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_rmul4_reg_CARRYOUT_UNCONNECTED;
  wire [47:25]NLW_rmul4_reg_P_UNCONNECTED;
  wire [47:0]NLW_rmul4_reg_PCOUT_UNCONNECTED;
  wire [2:0]\NLW_rout_reg[11]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[15]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[19]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[23]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_rout_reg[25]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_rout_reg[25]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[7]_i_1_CO_UNCONNECTED ;
  wire [2:0]NLW_sub1_carry_CO_UNCONNECTED;
  wire [2:0]NLW_sub1_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_sub1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_sub1_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_sub1_carry__2_O_UNCONNECTED;
  wire [2:0]NLW_sub2_carry_CO_UNCONNECTED;
  wire [2:0]NLW_sub2_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_sub2_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_sub2_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_sub2_carry__2_O_UNCONNECTED;
  wire [2:0]NLW_sub3_carry_CO_UNCONNECTED;
  wire [2:0]NLW_sub3_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_sub3_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_sub3_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_sub3_carry__2_O_UNCONNECTED;
  wire [2:0]NLW_sub4_carry_CO_UNCONNECTED;
  wire [2:0]NLW_sub4_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_sub4_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_sub4_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_sub4_carry__2_O_UNCONNECTED;

  FDRE #(
    .INIT(1'b0)) 
    done_reg
       (.C(CLK),
        .CE(en3),
        .D(en3),
        .Q(done),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    en1_reg
       (.C(CLK),
        .CE(1'b1),
        .D(1'b1),
        .Q(en1),
        .R(rmul1_reg_0));
  (* \PinAttr:I1:HOLD_DETOUR  = "194" *) 
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    en2_i_1
       (.I0(en1),
        .I1(en2),
        .O(en2_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    en2_reg
       (.C(CLK),
        .CE(1'b1),
        .D(en2_i_1_n_0),
        .Q(en2),
        .R(rmul1_reg_0));
  (* \PinAttr:I0:HOLD_DETOUR  = "194" *) 
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    en3_i_1
       (.I0(en2),
        .I1(en3),
        .O(en3_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    en3_reg
       (.C(CLK),
        .CE(1'b1),
        .D(en3_i_1_n_0),
        .Q(en3),
        .R(rmul1_reg_0));
  LUT1 #(
    .INIT(2'h1)) 
    \local_reg_distance[25]_i_1__1 
       (.I0(done),
        .O(SR));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    rmul1_reg
       (.A({A[12],A[12],A[12],A[12],A[12],A[12],A[12],A[12],A[12],A[12],A[12],A[12],A[12],A[12],A[12],A[12],A[12],A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_rmul1_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({A[12],A[12],A[12],A[12],A[12],A}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_rmul1_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_rmul1_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_rmul1_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(en1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(en1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(en2),
        .CLK(CLK),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_rmul1_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_rmul1_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_rmul1_reg_P_UNCONNECTED[47:25],rmul1_reg_n_81,rmul1_reg_n_82,rmul1_reg_n_83,rmul1_reg_n_84,rmul1_reg_n_85,rmul1_reg_n_86,rmul1_reg_n_87,rmul1_reg_n_88,rmul1_reg_n_89,rmul1_reg_n_90,rmul1_reg_n_91,rmul1_reg_n_92,rmul1_reg_n_93,rmul1_reg_n_94,rmul1_reg_n_95,rmul1_reg_n_96,rmul1_reg_n_97,rmul1_reg_n_98,rmul1_reg_n_99,rmul1_reg_n_100,rmul1_reg_n_101,rmul1_reg_n_102,rmul1_reg_n_103,rmul1_reg_n_104,rmul1_reg_n_105}),
        .PATTERNBDETECT(NLW_rmul1_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_rmul1_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_rmul1_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(rmul1_reg_0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(rmul1_reg_0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(rmul1_reg_0),
        .UNDERFLOW(NLW_rmul1_reg_UNDERFLOW_UNCONNECTED));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    rmul2_reg
       (.A({sub2_carry__2_n_7,sub2_carry__2_n_7,sub2_carry__2_n_7,sub2_carry__2_n_7,sub2_carry__2_n_7,sub2_carry__2_n_7,sub2_carry__2_n_7,sub2_carry__2_n_7,sub2_carry__2_n_7,sub2_carry__2_n_7,sub2_carry__2_n_7,sub2_carry__2_n_7,sub2_carry__2_n_7,sub2_carry__2_n_7,sub2_carry__2_n_7,sub2_carry__2_n_7,sub2_carry__2_n_7,sub2_carry__2_n_7,sub2_carry__1_n_4,sub2_carry__1_n_5,sub2_carry__1_n_6,sub2_carry__1_n_7,sub2_carry__0_n_4,sub2_carry__0_n_5,sub2_carry__0_n_6,sub2_carry__0_n_7,sub2_carry_n_4,sub2_carry_n_5,sub2_carry_n_6,sub2_carry_n_7}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_rmul2_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({sub2_carry__2_n_7,sub2_carry__2_n_7,sub2_carry__2_n_7,sub2_carry__2_n_7,sub2_carry__2_n_7,sub2_carry__2_n_7,sub2_carry__1_n_4,sub2_carry__1_n_5,sub2_carry__1_n_6,sub2_carry__1_n_7,sub2_carry__0_n_4,sub2_carry__0_n_5,sub2_carry__0_n_6,sub2_carry__0_n_7,sub2_carry_n_4,sub2_carry_n_5,sub2_carry_n_6,sub2_carry_n_7}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_rmul2_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_rmul2_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_rmul2_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(en1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(en1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(en2),
        .CLK(CLK),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_rmul2_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_rmul2_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_rmul2_reg_P_UNCONNECTED[47:25],rmul2_reg_n_81,rmul2_reg_n_82,rmul2_reg_n_83,rmul2_reg_n_84,rmul2_reg_n_85,rmul2_reg_n_86,rmul2_reg_n_87,rmul2_reg_n_88,rmul2_reg_n_89,rmul2_reg_n_90,rmul2_reg_n_91,rmul2_reg_n_92,rmul2_reg_n_93,rmul2_reg_n_94,rmul2_reg_n_95,rmul2_reg_n_96,rmul2_reg_n_97,rmul2_reg_n_98,rmul2_reg_n_99,rmul2_reg_n_100,rmul2_reg_n_101,rmul2_reg_n_102,rmul2_reg_n_103,rmul2_reg_n_104,rmul2_reg_n_105}),
        .PATTERNBDETECT(NLW_rmul2_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_rmul2_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_rmul2_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(rmul1_reg_0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(rmul1_reg_0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(rmul1_reg_0),
        .UNDERFLOW(NLW_rmul2_reg_UNDERFLOW_UNCONNECTED));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    rmul3_reg
       (.A({sub3_carry__2_n_7,sub3_carry__2_n_7,sub3_carry__2_n_7,sub3_carry__2_n_7,sub3_carry__2_n_7,sub3_carry__2_n_7,sub3_carry__2_n_7,sub3_carry__2_n_7,sub3_carry__2_n_7,sub3_carry__2_n_7,sub3_carry__2_n_7,sub3_carry__2_n_7,sub3_carry__2_n_7,sub3_carry__2_n_7,sub3_carry__2_n_7,sub3_carry__2_n_7,sub3_carry__2_n_7,sub3_carry__2_n_7,sub3_carry__1_n_4,sub3_carry__1_n_5,sub3_carry__1_n_6,sub3_carry__1_n_7,sub3_carry__0_n_4,sub3_carry__0_n_5,sub3_carry__0_n_6,sub3_carry__0_n_7,sub3_carry_n_4,sub3_carry_n_5,sub3_carry_n_6,sub3_carry_n_7}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_rmul3_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({sub3_carry__2_n_7,sub3_carry__2_n_7,sub3_carry__2_n_7,sub3_carry__2_n_7,sub3_carry__2_n_7,sub3_carry__2_n_7,sub3_carry__1_n_4,sub3_carry__1_n_5,sub3_carry__1_n_6,sub3_carry__1_n_7,sub3_carry__0_n_4,sub3_carry__0_n_5,sub3_carry__0_n_6,sub3_carry__0_n_7,sub3_carry_n_4,sub3_carry_n_5,sub3_carry_n_6,sub3_carry_n_7}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_rmul3_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_rmul3_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_rmul3_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(en1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(en1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(en2),
        .CLK(CLK),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_rmul3_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_rmul3_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_rmul3_reg_P_UNCONNECTED[47:25],rmul3_reg_n_81,rmul3_reg_n_82,rmul3_reg_n_83,rmul3_reg_n_84,rmul3_reg_n_85,rmul3_reg_n_86,rmul3_reg_n_87,rmul3_reg_n_88,rmul3_reg_n_89,rmul3_reg_n_90,rmul3_reg_n_91,rmul3_reg_n_92,rmul3_reg_n_93,rmul3_reg_n_94,rmul3_reg_n_95,rmul3_reg_n_96,rmul3_reg_n_97,rmul3_reg_n_98,rmul3_reg_n_99,rmul3_reg_n_100,rmul3_reg_n_101,rmul3_reg_n_102,rmul3_reg_n_103,rmul3_reg_n_104,rmul3_reg_n_105}),
        .PATTERNBDETECT(NLW_rmul3_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_rmul3_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_rmul3_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(rmul1_reg_0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(rmul1_reg_0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(rmul1_reg_0),
        .UNDERFLOW(NLW_rmul3_reg_UNDERFLOW_UNCONNECTED));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    rmul4_reg
       (.A({sub4_carry__2_n_7,sub4_carry__2_n_7,sub4_carry__2_n_7,sub4_carry__2_n_7,sub4_carry__2_n_7,sub4_carry__2_n_7,sub4_carry__2_n_7,sub4_carry__2_n_7,sub4_carry__2_n_7,sub4_carry__2_n_7,sub4_carry__2_n_7,sub4_carry__2_n_7,sub4_carry__2_n_7,sub4_carry__2_n_7,sub4_carry__2_n_7,sub4_carry__2_n_7,sub4_carry__2_n_7,sub4_carry__2_n_7,sub4_carry__1_n_4,sub4_carry__1_n_5,sub4_carry__1_n_6,sub4_carry__1_n_7,sub4_carry__0_n_4,sub4_carry__0_n_5,sub4_carry__0_n_6,sub4_carry__0_n_7,sub4_carry_n_4,sub4_carry_n_5,sub4_carry_n_6,sub4_carry_n_7}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_rmul4_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({sub4_carry__2_n_7,sub4_carry__2_n_7,sub4_carry__2_n_7,sub4_carry__2_n_7,sub4_carry__2_n_7,sub4_carry__2_n_7,sub4_carry__1_n_4,sub4_carry__1_n_5,sub4_carry__1_n_6,sub4_carry__1_n_7,sub4_carry__0_n_4,sub4_carry__0_n_5,sub4_carry__0_n_6,sub4_carry__0_n_7,sub4_carry_n_4,sub4_carry_n_5,sub4_carry_n_6,sub4_carry_n_7}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_rmul4_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_rmul4_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_rmul4_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(en1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(en1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(en2),
        .CLK(CLK),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_rmul4_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_rmul4_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_rmul4_reg_P_UNCONNECTED[47:25],rmul4_reg_n_81,rmul4_reg_n_82,rmul4_reg_n_83,rmul4_reg_n_84,rmul4_reg_n_85,rmul4_reg_n_86,rmul4_reg_n_87,rmul4_reg_n_88,rmul4_reg_n_89,rmul4_reg_n_90,rmul4_reg_n_91,rmul4_reg_n_92,rmul4_reg_n_93,rmul4_reg_n_94,rmul4_reg_n_95,rmul4_reg_n_96,rmul4_reg_n_97,rmul4_reg_n_98,rmul4_reg_n_99,rmul4_reg_n_100,rmul4_reg_n_101,rmul4_reg_n_102,rmul4_reg_n_103,rmul4_reg_n_104,rmul4_reg_n_105}),
        .PATTERNBDETECT(NLW_rmul4_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_rmul4_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_rmul4_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(rmul1_reg_0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(rmul1_reg_0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(rmul1_reg_0),
        .UNDERFLOW(NLW_rmul4_reg_UNDERFLOW_UNCONNECTED));
  LUT3 #(
    .INIT(8'h96)) 
    \rout[11]_i_10 
       (.I0(rmul3_reg_n_95),
        .I1(rmul4_reg_n_95),
        .I2(rmul2_reg_n_95),
        .O(\rout[11]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \rout[11]_i_11 
       (.I0(rmul3_reg_n_96),
        .I1(rmul4_reg_n_96),
        .I2(rmul2_reg_n_96),
        .O(\rout[11]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \rout[11]_i_12 
       (.I0(rmul3_reg_n_97),
        .I1(rmul4_reg_n_97),
        .I2(rmul2_reg_n_97),
        .O(\rout[11]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \rout[11]_i_13 
       (.I0(rmul3_reg_n_98),
        .I1(rmul4_reg_n_98),
        .I2(rmul2_reg_n_98),
        .O(\rout[11]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \rout[11]_i_2 
       (.I0(rmul1_reg_n_95),
        .I1(\rout[11]_i_10_n_0 ),
        .I2(rmul3_reg_n_96),
        .I3(rmul2_reg_n_96),
        .I4(rmul4_reg_n_96),
        .O(\rout[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \rout[11]_i_3 
       (.I0(rmul1_reg_n_96),
        .I1(\rout[11]_i_11_n_0 ),
        .I2(rmul3_reg_n_97),
        .I3(rmul2_reg_n_97),
        .I4(rmul4_reg_n_97),
        .O(\rout[11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \rout[11]_i_4 
       (.I0(rmul1_reg_n_97),
        .I1(\rout[11]_i_12_n_0 ),
        .I2(rmul3_reg_n_98),
        .I3(rmul2_reg_n_98),
        .I4(rmul4_reg_n_98),
        .O(\rout[11]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \rout[11]_i_5 
       (.I0(rmul1_reg_n_98),
        .I1(\rout[11]_i_13_n_0 ),
        .I2(rmul3_reg_n_99),
        .I3(rmul2_reg_n_99),
        .I4(rmul4_reg_n_99),
        .O(\rout[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \rout[11]_i_6 
       (.I0(\rout[11]_i_2_n_0 ),
        .I1(\rout[15]_i_13_n_0 ),
        .I2(rmul1_reg_n_94),
        .I3(rmul4_reg_n_95),
        .I4(rmul2_reg_n_95),
        .I5(rmul3_reg_n_95),
        .O(\rout[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \rout[11]_i_7 
       (.I0(\rout[11]_i_3_n_0 ),
        .I1(\rout[11]_i_10_n_0 ),
        .I2(rmul1_reg_n_95),
        .I3(rmul4_reg_n_96),
        .I4(rmul2_reg_n_96),
        .I5(rmul3_reg_n_96),
        .O(\rout[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \rout[11]_i_8 
       (.I0(\rout[11]_i_4_n_0 ),
        .I1(\rout[11]_i_11_n_0 ),
        .I2(rmul1_reg_n_96),
        .I3(rmul4_reg_n_97),
        .I4(rmul2_reg_n_97),
        .I5(rmul3_reg_n_97),
        .O(\rout[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \rout[11]_i_9 
       (.I0(\rout[11]_i_5_n_0 ),
        .I1(\rout[11]_i_12_n_0 ),
        .I2(rmul1_reg_n_97),
        .I3(rmul4_reg_n_98),
        .I4(rmul2_reg_n_98),
        .I5(rmul3_reg_n_98),
        .O(\rout[11]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \rout[15]_i_10 
       (.I0(rmul3_reg_n_91),
        .I1(rmul4_reg_n_91),
        .I2(rmul2_reg_n_91),
        .O(\rout[15]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \rout[15]_i_11 
       (.I0(rmul3_reg_n_92),
        .I1(rmul4_reg_n_92),
        .I2(rmul2_reg_n_92),
        .O(\rout[15]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \rout[15]_i_12 
       (.I0(rmul3_reg_n_93),
        .I1(rmul4_reg_n_93),
        .I2(rmul2_reg_n_93),
        .O(\rout[15]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \rout[15]_i_13 
       (.I0(rmul3_reg_n_94),
        .I1(rmul4_reg_n_94),
        .I2(rmul2_reg_n_94),
        .O(\rout[15]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \rout[15]_i_2 
       (.I0(rmul1_reg_n_91),
        .I1(\rout[15]_i_10_n_0 ),
        .I2(rmul3_reg_n_92),
        .I3(rmul2_reg_n_92),
        .I4(rmul4_reg_n_92),
        .O(\rout[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \rout[15]_i_3 
       (.I0(rmul1_reg_n_92),
        .I1(\rout[15]_i_11_n_0 ),
        .I2(rmul3_reg_n_93),
        .I3(rmul2_reg_n_93),
        .I4(rmul4_reg_n_93),
        .O(\rout[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \rout[15]_i_4 
       (.I0(rmul1_reg_n_93),
        .I1(\rout[15]_i_12_n_0 ),
        .I2(rmul3_reg_n_94),
        .I3(rmul2_reg_n_94),
        .I4(rmul4_reg_n_94),
        .O(\rout[15]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \rout[15]_i_5 
       (.I0(rmul1_reg_n_94),
        .I1(\rout[15]_i_13_n_0 ),
        .I2(rmul3_reg_n_95),
        .I3(rmul2_reg_n_95),
        .I4(rmul4_reg_n_95),
        .O(\rout[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \rout[15]_i_6 
       (.I0(\rout[15]_i_2_n_0 ),
        .I1(\rout[19]_i_13_n_0 ),
        .I2(rmul1_reg_n_90),
        .I3(rmul4_reg_n_91),
        .I4(rmul2_reg_n_91),
        .I5(rmul3_reg_n_91),
        .O(\rout[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \rout[15]_i_7 
       (.I0(\rout[15]_i_3_n_0 ),
        .I1(\rout[15]_i_10_n_0 ),
        .I2(rmul1_reg_n_91),
        .I3(rmul4_reg_n_92),
        .I4(rmul2_reg_n_92),
        .I5(rmul3_reg_n_92),
        .O(\rout[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \rout[15]_i_8 
       (.I0(\rout[15]_i_4_n_0 ),
        .I1(\rout[15]_i_11_n_0 ),
        .I2(rmul1_reg_n_92),
        .I3(rmul4_reg_n_93),
        .I4(rmul2_reg_n_93),
        .I5(rmul3_reg_n_93),
        .O(\rout[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \rout[15]_i_9 
       (.I0(\rout[15]_i_5_n_0 ),
        .I1(\rout[15]_i_12_n_0 ),
        .I2(rmul1_reg_n_93),
        .I3(rmul4_reg_n_94),
        .I4(rmul2_reg_n_94),
        .I5(rmul3_reg_n_94),
        .O(\rout[15]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \rout[19]_i_10 
       (.I0(rmul3_reg_n_87),
        .I1(rmul4_reg_n_87),
        .I2(rmul2_reg_n_87),
        .O(\rout[19]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \rout[19]_i_11 
       (.I0(rmul3_reg_n_88),
        .I1(rmul4_reg_n_88),
        .I2(rmul2_reg_n_88),
        .O(\rout[19]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \rout[19]_i_12 
       (.I0(rmul3_reg_n_89),
        .I1(rmul4_reg_n_89),
        .I2(rmul2_reg_n_89),
        .O(\rout[19]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \rout[19]_i_13 
       (.I0(rmul3_reg_n_90),
        .I1(rmul4_reg_n_90),
        .I2(rmul2_reg_n_90),
        .O(\rout[19]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \rout[19]_i_2 
       (.I0(rmul1_reg_n_87),
        .I1(\rout[19]_i_10_n_0 ),
        .I2(rmul3_reg_n_88),
        .I3(rmul2_reg_n_88),
        .I4(rmul4_reg_n_88),
        .O(\rout[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \rout[19]_i_3 
       (.I0(rmul1_reg_n_88),
        .I1(\rout[19]_i_11_n_0 ),
        .I2(rmul3_reg_n_89),
        .I3(rmul2_reg_n_89),
        .I4(rmul4_reg_n_89),
        .O(\rout[19]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \rout[19]_i_4 
       (.I0(rmul1_reg_n_89),
        .I1(\rout[19]_i_12_n_0 ),
        .I2(rmul3_reg_n_90),
        .I3(rmul2_reg_n_90),
        .I4(rmul4_reg_n_90),
        .O(\rout[19]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \rout[19]_i_5 
       (.I0(rmul1_reg_n_90),
        .I1(\rout[19]_i_13_n_0 ),
        .I2(rmul3_reg_n_91),
        .I3(rmul2_reg_n_91),
        .I4(rmul4_reg_n_91),
        .O(\rout[19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \rout[19]_i_6 
       (.I0(\rout[19]_i_2_n_0 ),
        .I1(\rout[23]_i_13_n_0 ),
        .I2(rmul1_reg_n_86),
        .I3(rmul4_reg_n_87),
        .I4(rmul2_reg_n_87),
        .I5(rmul3_reg_n_87),
        .O(\rout[19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \rout[19]_i_7 
       (.I0(\rout[19]_i_3_n_0 ),
        .I1(\rout[19]_i_10_n_0 ),
        .I2(rmul1_reg_n_87),
        .I3(rmul4_reg_n_88),
        .I4(rmul2_reg_n_88),
        .I5(rmul3_reg_n_88),
        .O(\rout[19]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \rout[19]_i_8 
       (.I0(\rout[19]_i_4_n_0 ),
        .I1(\rout[19]_i_11_n_0 ),
        .I2(rmul1_reg_n_88),
        .I3(rmul4_reg_n_89),
        .I4(rmul2_reg_n_89),
        .I5(rmul3_reg_n_89),
        .O(\rout[19]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \rout[19]_i_9 
       (.I0(\rout[19]_i_5_n_0 ),
        .I1(\rout[19]_i_12_n_0 ),
        .I2(rmul1_reg_n_89),
        .I3(rmul4_reg_n_90),
        .I4(rmul2_reg_n_90),
        .I5(rmul3_reg_n_90),
        .O(\rout[19]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \rout[23]_i_10 
       (.I0(rmul3_reg_n_83),
        .I1(rmul4_reg_n_83),
        .I2(rmul2_reg_n_83),
        .O(\rout[23]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \rout[23]_i_11 
       (.I0(rmul3_reg_n_84),
        .I1(rmul4_reg_n_84),
        .I2(rmul2_reg_n_84),
        .O(\rout[23]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \rout[23]_i_12 
       (.I0(rmul3_reg_n_85),
        .I1(rmul4_reg_n_85),
        .I2(rmul2_reg_n_85),
        .O(\rout[23]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \rout[23]_i_13 
       (.I0(rmul3_reg_n_86),
        .I1(rmul4_reg_n_86),
        .I2(rmul2_reg_n_86),
        .O(\rout[23]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \rout[23]_i_2 
       (.I0(rmul1_reg_n_83),
        .I1(\rout[23]_i_10_n_0 ),
        .I2(rmul3_reg_n_84),
        .I3(rmul2_reg_n_84),
        .I4(rmul4_reg_n_84),
        .O(\rout[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \rout[23]_i_3 
       (.I0(rmul1_reg_n_84),
        .I1(\rout[23]_i_11_n_0 ),
        .I2(rmul3_reg_n_85),
        .I3(rmul2_reg_n_85),
        .I4(rmul4_reg_n_85),
        .O(\rout[23]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \rout[23]_i_4 
       (.I0(rmul1_reg_n_85),
        .I1(\rout[23]_i_12_n_0 ),
        .I2(rmul3_reg_n_86),
        .I3(rmul2_reg_n_86),
        .I4(rmul4_reg_n_86),
        .O(\rout[23]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \rout[23]_i_5 
       (.I0(rmul1_reg_n_86),
        .I1(\rout[23]_i_13_n_0 ),
        .I2(rmul3_reg_n_87),
        .I3(rmul2_reg_n_87),
        .I4(rmul4_reg_n_87),
        .O(\rout[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \rout[23]_i_6 
       (.I0(\rout[23]_i_2_n_0 ),
        .I1(\rout[25]_i_5_n_0 ),
        .I2(rmul1_reg_n_82),
        .I3(rmul4_reg_n_83),
        .I4(rmul2_reg_n_83),
        .I5(rmul3_reg_n_83),
        .O(\rout[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \rout[23]_i_7 
       (.I0(\rout[23]_i_3_n_0 ),
        .I1(\rout[23]_i_10_n_0 ),
        .I2(rmul1_reg_n_83),
        .I3(rmul4_reg_n_84),
        .I4(rmul2_reg_n_84),
        .I5(rmul3_reg_n_84),
        .O(\rout[23]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \rout[23]_i_8 
       (.I0(\rout[23]_i_4_n_0 ),
        .I1(\rout[23]_i_11_n_0 ),
        .I2(rmul1_reg_n_84),
        .I3(rmul4_reg_n_85),
        .I4(rmul2_reg_n_85),
        .I5(rmul3_reg_n_85),
        .O(\rout[23]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \rout[23]_i_9 
       (.I0(\rout[23]_i_5_n_0 ),
        .I1(\rout[23]_i_12_n_0 ),
        .I2(rmul1_reg_n_85),
        .I3(rmul4_reg_n_86),
        .I4(rmul2_reg_n_86),
        .I5(rmul3_reg_n_86),
        .O(\rout[23]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \rout[25]_i_2 
       (.I0(rmul1_reg_n_82),
        .I1(\rout[25]_i_5_n_0 ),
        .I2(rmul3_reg_n_83),
        .I3(rmul2_reg_n_83),
        .I4(rmul4_reg_n_83),
        .O(\rout[25]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h177E7EE8)) 
    \rout[25]_i_3 
       (.I0(\rout[25]_i_6_n_0 ),
        .I1(rmul1_reg_n_81),
        .I2(rmul3_reg_n_81),
        .I3(rmul2_reg_n_81),
        .I4(rmul4_reg_n_81),
        .O(\rout[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \rout[25]_i_4 
       (.I0(\rout[25]_i_2_n_0 ),
        .I1(\rout[25]_i_7_n_0 ),
        .I2(rmul1_reg_n_81),
        .I3(rmul4_reg_n_82),
        .I4(rmul2_reg_n_82),
        .I5(rmul3_reg_n_82),
        .O(\rout[25]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \rout[25]_i_5 
       (.I0(rmul3_reg_n_82),
        .I1(rmul4_reg_n_82),
        .I2(rmul2_reg_n_82),
        .O(\rout[25]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \rout[25]_i_6 
       (.I0(rmul4_reg_n_82),
        .I1(rmul2_reg_n_82),
        .I2(rmul3_reg_n_82),
        .O(\rout[25]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \rout[25]_i_7 
       (.I0(rmul3_reg_n_81),
        .I1(rmul4_reg_n_81),
        .I2(rmul2_reg_n_81),
        .O(\rout[25]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \rout[3]_i_2 
       (.I0(rmul1_reg_n_103),
        .I1(\rout[3]_i_9_n_0 ),
        .I2(rmul3_reg_n_104),
        .I3(rmul2_reg_n_104),
        .I4(rmul4_reg_n_104),
        .O(\rout[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \rout[3]_i_3 
       (.I0(rmul3_reg_n_104),
        .I1(rmul2_reg_n_104),
        .I2(rmul4_reg_n_104),
        .I3(rmul1_reg_n_103),
        .I4(\rout[3]_i_9_n_0 ),
        .O(\rout[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \rout[3]_i_4 
       (.I0(rmul2_reg_n_104),
        .I1(rmul4_reg_n_104),
        .I2(rmul3_reg_n_104),
        .I3(rmul1_reg_n_104),
        .O(\rout[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \rout[3]_i_5 
       (.I0(\rout[3]_i_2_n_0 ),
        .I1(\rout[7]_i_13_n_0 ),
        .I2(rmul1_reg_n_102),
        .I3(rmul4_reg_n_103),
        .I4(rmul2_reg_n_103),
        .I5(rmul3_reg_n_103),
        .O(\rout[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6999999699969666)) 
    \rout[3]_i_6 
       (.I0(\rout[3]_i_9_n_0 ),
        .I1(rmul1_reg_n_103),
        .I2(rmul3_reg_n_104),
        .I3(rmul4_reg_n_104),
        .I4(rmul2_reg_n_104),
        .I5(rmul1_reg_n_104),
        .O(\rout[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h566A)) 
    \rout[3]_i_7 
       (.I0(\rout[3]_i_4_n_0 ),
        .I1(rmul3_reg_n_105),
        .I2(rmul2_reg_n_105),
        .I3(rmul4_reg_n_105),
        .O(\rout[3]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \rout[3]_i_8 
       (.I0(rmul2_reg_n_105),
        .I1(rmul4_reg_n_105),
        .I2(rmul3_reg_n_105),
        .I3(rmul1_reg_n_105),
        .O(\rout[3]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \rout[3]_i_9 
       (.I0(rmul3_reg_n_103),
        .I1(rmul4_reg_n_103),
        .I2(rmul2_reg_n_103),
        .O(\rout[3]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \rout[7]_i_10 
       (.I0(rmul3_reg_n_99),
        .I1(rmul4_reg_n_99),
        .I2(rmul2_reg_n_99),
        .O(\rout[7]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \rout[7]_i_11 
       (.I0(rmul3_reg_n_100),
        .I1(rmul4_reg_n_100),
        .I2(rmul2_reg_n_100),
        .O(\rout[7]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \rout[7]_i_12 
       (.I0(rmul3_reg_n_101),
        .I1(rmul4_reg_n_101),
        .I2(rmul2_reg_n_101),
        .O(\rout[7]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \rout[7]_i_13 
       (.I0(rmul3_reg_n_102),
        .I1(rmul4_reg_n_102),
        .I2(rmul2_reg_n_102),
        .O(\rout[7]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \rout[7]_i_2 
       (.I0(rmul1_reg_n_99),
        .I1(\rout[7]_i_10_n_0 ),
        .I2(rmul3_reg_n_100),
        .I3(rmul2_reg_n_100),
        .I4(rmul4_reg_n_100),
        .O(\rout[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \rout[7]_i_3 
       (.I0(rmul1_reg_n_100),
        .I1(\rout[7]_i_11_n_0 ),
        .I2(rmul3_reg_n_101),
        .I3(rmul2_reg_n_101),
        .I4(rmul4_reg_n_101),
        .O(\rout[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \rout[7]_i_4 
       (.I0(rmul1_reg_n_101),
        .I1(\rout[7]_i_12_n_0 ),
        .I2(rmul3_reg_n_102),
        .I3(rmul2_reg_n_102),
        .I4(rmul4_reg_n_102),
        .O(\rout[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \rout[7]_i_5 
       (.I0(rmul1_reg_n_102),
        .I1(\rout[7]_i_13_n_0 ),
        .I2(rmul3_reg_n_103),
        .I3(rmul2_reg_n_103),
        .I4(rmul4_reg_n_103),
        .O(\rout[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \rout[7]_i_6 
       (.I0(\rout[7]_i_2_n_0 ),
        .I1(\rout[11]_i_13_n_0 ),
        .I2(rmul1_reg_n_98),
        .I3(rmul4_reg_n_99),
        .I4(rmul2_reg_n_99),
        .I5(rmul3_reg_n_99),
        .O(\rout[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \rout[7]_i_7 
       (.I0(\rout[7]_i_3_n_0 ),
        .I1(\rout[7]_i_10_n_0 ),
        .I2(rmul1_reg_n_99),
        .I3(rmul4_reg_n_100),
        .I4(rmul2_reg_n_100),
        .I5(rmul3_reg_n_100),
        .O(\rout[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \rout[7]_i_8 
       (.I0(\rout[7]_i_4_n_0 ),
        .I1(\rout[7]_i_11_n_0 ),
        .I2(rmul1_reg_n_100),
        .I3(rmul4_reg_n_101),
        .I4(rmul2_reg_n_101),
        .I5(rmul3_reg_n_101),
        .O(\rout[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \rout[7]_i_9 
       (.I0(\rout[7]_i_5_n_0 ),
        .I1(\rout[7]_i_12_n_0 ),
        .I2(rmul1_reg_n_101),
        .I3(rmul4_reg_n_102),
        .I4(rmul2_reg_n_102),
        .I5(rmul3_reg_n_102),
        .O(\rout[7]_i_9_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rout_reg[0] 
       (.C(CLK),
        .CE(en3),
        .D(add3[0]),
        .Q(\rout_reg[25]_0 [0]),
        .S(rmul1_reg_0));
  FDSE #(
    .INIT(1'b1)) 
    \rout_reg[10] 
       (.C(CLK),
        .CE(en3),
        .D(add3[10]),
        .Q(\rout_reg[25]_0 [10]),
        .S(rmul1_reg_0));
  FDSE #(
    .INIT(1'b1)) 
    \rout_reg[11] 
       (.C(CLK),
        .CE(en3),
        .D(add3[11]),
        .Q(\rout_reg[25]_0 [11]),
        .S(rmul1_reg_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \rout_reg[11]_i_1 
       (.CI(\rout_reg[7]_i_1_n_0 ),
        .CO({\rout_reg[11]_i_1_n_0 ,\NLW_rout_reg[11]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout[11]_i_2_n_0 ,\rout[11]_i_3_n_0 ,\rout[11]_i_4_n_0 ,\rout[11]_i_5_n_0 }),
        .O(add3[11:8]),
        .S({\rout[11]_i_6_n_0 ,\rout[11]_i_7_n_0 ,\rout[11]_i_8_n_0 ,\rout[11]_i_9_n_0 }));
  FDSE #(
    .INIT(1'b1)) 
    \rout_reg[12] 
       (.C(CLK),
        .CE(en3),
        .D(add3[12]),
        .Q(\rout_reg[25]_0 [12]),
        .S(rmul1_reg_0));
  FDSE #(
    .INIT(1'b1)) 
    \rout_reg[13] 
       (.C(CLK),
        .CE(en3),
        .D(add3[13]),
        .Q(\rout_reg[25]_0 [13]),
        .S(rmul1_reg_0));
  FDSE #(
    .INIT(1'b1)) 
    \rout_reg[14] 
       (.C(CLK),
        .CE(en3),
        .D(add3[14]),
        .Q(\rout_reg[25]_0 [14]),
        .S(rmul1_reg_0));
  FDSE #(
    .INIT(1'b1)) 
    \rout_reg[15] 
       (.C(CLK),
        .CE(en3),
        .D(add3[15]),
        .Q(\rout_reg[25]_0 [15]),
        .S(rmul1_reg_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \rout_reg[15]_i_1 
       (.CI(\rout_reg[11]_i_1_n_0 ),
        .CO({\rout_reg[15]_i_1_n_0 ,\NLW_rout_reg[15]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout[15]_i_2_n_0 ,\rout[15]_i_3_n_0 ,\rout[15]_i_4_n_0 ,\rout[15]_i_5_n_0 }),
        .O(add3[15:12]),
        .S({\rout[15]_i_6_n_0 ,\rout[15]_i_7_n_0 ,\rout[15]_i_8_n_0 ,\rout[15]_i_9_n_0 }));
  FDSE #(
    .INIT(1'b1)) 
    \rout_reg[16] 
       (.C(CLK),
        .CE(en3),
        .D(add3[16]),
        .Q(\rout_reg[25]_0 [16]),
        .S(rmul1_reg_0));
  FDSE #(
    .INIT(1'b1)) 
    \rout_reg[17] 
       (.C(CLK),
        .CE(en3),
        .D(add3[17]),
        .Q(\rout_reg[25]_0 [17]),
        .S(rmul1_reg_0));
  FDSE #(
    .INIT(1'b1)) 
    \rout_reg[18] 
       (.C(CLK),
        .CE(en3),
        .D(add3[18]),
        .Q(\rout_reg[25]_0 [18]),
        .S(rmul1_reg_0));
  FDSE #(
    .INIT(1'b1)) 
    \rout_reg[19] 
       (.C(CLK),
        .CE(en3),
        .D(add3[19]),
        .Q(\rout_reg[25]_0 [19]),
        .S(rmul1_reg_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \rout_reg[19]_i_1 
       (.CI(\rout_reg[15]_i_1_n_0 ),
        .CO({\rout_reg[19]_i_1_n_0 ,\NLW_rout_reg[19]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout[19]_i_2_n_0 ,\rout[19]_i_3_n_0 ,\rout[19]_i_4_n_0 ,\rout[19]_i_5_n_0 }),
        .O(add3[19:16]),
        .S({\rout[19]_i_6_n_0 ,\rout[19]_i_7_n_0 ,\rout[19]_i_8_n_0 ,\rout[19]_i_9_n_0 }));
  FDSE #(
    .INIT(1'b1)) 
    \rout_reg[1] 
       (.C(CLK),
        .CE(en3),
        .D(add3[1]),
        .Q(\rout_reg[25]_0 [1]),
        .S(rmul1_reg_0));
  FDSE #(
    .INIT(1'b1)) 
    \rout_reg[20] 
       (.C(CLK),
        .CE(en3),
        .D(add3[20]),
        .Q(\rout_reg[25]_0 [20]),
        .S(rmul1_reg_0));
  FDSE #(
    .INIT(1'b1)) 
    \rout_reg[21] 
       (.C(CLK),
        .CE(en3),
        .D(add3[21]),
        .Q(\rout_reg[25]_0 [21]),
        .S(rmul1_reg_0));
  FDSE #(
    .INIT(1'b1)) 
    \rout_reg[22] 
       (.C(CLK),
        .CE(en3),
        .D(add3[22]),
        .Q(\rout_reg[25]_0 [22]),
        .S(rmul1_reg_0));
  FDSE #(
    .INIT(1'b1)) 
    \rout_reg[23] 
       (.C(CLK),
        .CE(en3),
        .D(add3[23]),
        .Q(\rout_reg[25]_0 [23]),
        .S(rmul1_reg_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \rout_reg[23]_i_1 
       (.CI(\rout_reg[19]_i_1_n_0 ),
        .CO({\rout_reg[23]_i_1_n_0 ,\NLW_rout_reg[23]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout[23]_i_2_n_0 ,\rout[23]_i_3_n_0 ,\rout[23]_i_4_n_0 ,\rout[23]_i_5_n_0 }),
        .O(add3[23:20]),
        .S({\rout[23]_i_6_n_0 ,\rout[23]_i_7_n_0 ,\rout[23]_i_8_n_0 ,\rout[23]_i_9_n_0 }));
  FDSE #(
    .INIT(1'b1)) 
    \rout_reg[24] 
       (.C(CLK),
        .CE(en3),
        .D(add3[24]),
        .Q(\rout_reg[25]_0 [24]),
        .S(rmul1_reg_0));
  FDSE #(
    .INIT(1'b1)) 
    \rout_reg[25] 
       (.C(CLK),
        .CE(en3),
        .D(add3[25]),
        .Q(\rout_reg[25]_0 [25]),
        .S(rmul1_reg_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \rout_reg[25]_i_1 
       (.CI(\rout_reg[23]_i_1_n_0 ),
        .CO(\NLW_rout_reg[25]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\rout[25]_i_2_n_0 }),
        .O({\NLW_rout_reg[25]_i_1_O_UNCONNECTED [3:2],add3[25:24]}),
        .S({1'b0,1'b0,\rout[25]_i_3_n_0 ,\rout[25]_i_4_n_0 }));
  FDSE #(
    .INIT(1'b1)) 
    \rout_reg[2] 
       (.C(CLK),
        .CE(en3),
        .D(add3[2]),
        .Q(\rout_reg[25]_0 [2]),
        .S(rmul1_reg_0));
  FDSE #(
    .INIT(1'b1)) 
    \rout_reg[3] 
       (.C(CLK),
        .CE(en3),
        .D(add3[3]),
        .Q(\rout_reg[25]_0 [3]),
        .S(rmul1_reg_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \rout_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\rout_reg[3]_i_1_n_0 ,\NLW_rout_reg[3]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout[3]_i_2_n_0 ,\rout[3]_i_3_n_0 ,\rout[3]_i_4_n_0 ,rmul1_reg_n_105}),
        .O(add3[3:0]),
        .S({\rout[3]_i_5_n_0 ,\rout[3]_i_6_n_0 ,\rout[3]_i_7_n_0 ,\rout[3]_i_8_n_0 }));
  FDSE #(
    .INIT(1'b1)) 
    \rout_reg[4] 
       (.C(CLK),
        .CE(en3),
        .D(add3[4]),
        .Q(\rout_reg[25]_0 [4]),
        .S(rmul1_reg_0));
  FDSE #(
    .INIT(1'b1)) 
    \rout_reg[5] 
       (.C(CLK),
        .CE(en3),
        .D(add3[5]),
        .Q(\rout_reg[25]_0 [5]),
        .S(rmul1_reg_0));
  FDSE #(
    .INIT(1'b1)) 
    \rout_reg[6] 
       (.C(CLK),
        .CE(en3),
        .D(add3[6]),
        .Q(\rout_reg[25]_0 [6]),
        .S(rmul1_reg_0));
  FDSE #(
    .INIT(1'b1)) 
    \rout_reg[7] 
       (.C(CLK),
        .CE(en3),
        .D(add3[7]),
        .Q(\rout_reg[25]_0 [7]),
        .S(rmul1_reg_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \rout_reg[7]_i_1 
       (.CI(\rout_reg[3]_i_1_n_0 ),
        .CO({\rout_reg[7]_i_1_n_0 ,\NLW_rout_reg[7]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout[7]_i_2_n_0 ,\rout[7]_i_3_n_0 ,\rout[7]_i_4_n_0 ,\rout[7]_i_5_n_0 }),
        .O(add3[7:4]),
        .S({\rout[7]_i_6_n_0 ,\rout[7]_i_7_n_0 ,\rout[7]_i_8_n_0 ,\rout[7]_i_9_n_0 }));
  FDSE #(
    .INIT(1'b1)) 
    \rout_reg[8] 
       (.C(CLK),
        .CE(en3),
        .D(add3[8]),
        .Q(\rout_reg[25]_0 [8]),
        .S(rmul1_reg_0));
  FDSE #(
    .INIT(1'b1)) 
    \rout_reg[9] 
       (.C(CLK),
        .CE(en3),
        .D(add3[9]),
        .Q(\rout_reg[25]_0 [9]),
        .S(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rp1_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp1_reg[11]_0 [0]),
        .Q(rp1[0]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rp1_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp1_reg[11]_0 [10]),
        .Q(rp1[10]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rp1_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp1_reg[11]_0 [11]),
        .Q(rp1[11]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rp1_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp1_reg[11]_0 [1]),
        .Q(rp1[1]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rp1_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp1_reg[11]_0 [2]),
        .Q(rp1[2]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rp1_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp1_reg[11]_0 [3]),
        .Q(rp1[3]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rp1_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp1_reg[11]_0 [4]),
        .Q(rp1[4]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rp1_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp1_reg[11]_0 [5]),
        .Q(rp1[5]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rp1_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp1_reg[11]_0 [6]),
        .Q(rp1[6]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rp1_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp1_reg[11]_0 [7]),
        .Q(rp1[7]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rp1_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp1_reg[11]_0 [8]),
        .Q(rp1[8]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rp1_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp1_reg[11]_0 [9]),
        .Q(rp1[9]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rp2_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp2_reg[11]_0 [0]),
        .Q(rp2[0]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rp2_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp2_reg[11]_0 [10]),
        .Q(rp2[10]),
        .R(rmul1_reg_0));
  (* \PinAttr:D:HOLD_DETOUR  = "190" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rp2_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp2_reg[11]_0 [11]),
        .Q(rp2[11]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rp2_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp2_reg[11]_0 [1]),
        .Q(rp2[1]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rp2_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp2_reg[11]_0 [2]),
        .Q(rp2[2]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rp2_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp2_reg[11]_0 [3]),
        .Q(rp2[3]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rp2_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp2_reg[11]_0 [4]),
        .Q(rp2[4]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rp2_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp2_reg[11]_0 [5]),
        .Q(rp2[5]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rp2_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp2_reg[11]_0 [6]),
        .Q(rp2[6]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rp2_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp2_reg[11]_0 [7]),
        .Q(rp2[7]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rp2_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp2_reg[11]_0 [8]),
        .Q(rp2[8]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rp2_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp2_reg[11]_0 [9]),
        .Q(rp2[9]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rp3_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp3_reg[11]_0 [0]),
        .Q(rp3[0]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rp3_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp3_reg[11]_0 [10]),
        .Q(rp3[10]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rp3_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp3_reg[11]_0 [11]),
        .Q(rp3[11]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rp3_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp3_reg[11]_0 [1]),
        .Q(rp3[1]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rp3_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp3_reg[11]_0 [2]),
        .Q(rp3[2]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rp3_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp3_reg[11]_0 [3]),
        .Q(rp3[3]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rp3_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp3_reg[11]_0 [4]),
        .Q(rp3[4]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rp3_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp3_reg[11]_0 [5]),
        .Q(rp3[5]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rp3_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp3_reg[11]_0 [6]),
        .Q(rp3[6]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rp3_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp3_reg[11]_0 [7]),
        .Q(rp3[7]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rp3_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp3_reg[11]_0 [8]),
        .Q(rp3[8]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rp3_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp3_reg[11]_0 [9]),
        .Q(rp3[9]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rp4_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp4_reg[11]_0 [0]),
        .Q(rp4[0]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rp4_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp4_reg[11]_0 [10]),
        .Q(rp4[10]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rp4_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp4_reg[11]_0 [11]),
        .Q(rp4[11]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rp4_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp4_reg[11]_0 [1]),
        .Q(rp4[1]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rp4_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp4_reg[11]_0 [2]),
        .Q(rp4[2]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rp4_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp4_reg[11]_0 [3]),
        .Q(rp4[3]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rp4_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp4_reg[11]_0 [4]),
        .Q(rp4[4]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rp4_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp4_reg[11]_0 [5]),
        .Q(rp4[5]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rp4_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp4_reg[11]_0 [6]),
        .Q(rp4[6]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rp4_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp4_reg[11]_0 [7]),
        .Q(rp4[7]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rp4_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp4_reg[11]_0 [8]),
        .Q(rp4[8]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rp4_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rp4_reg[11]_0 [9]),
        .Q(rp4[9]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rq1_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rq1_reg[11]_0 [0]),
        .Q(rq1[0]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rq1_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rq1_reg[11]_0 [10]),
        .Q(rq1[10]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rq1_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rq1_reg[11]_0 [11]),
        .Q(rq1[11]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rq1_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rq1_reg[11]_0 [1]),
        .Q(rq1[1]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rq1_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rq1_reg[11]_0 [2]),
        .Q(rq1[2]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rq1_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rq1_reg[11]_0 [3]),
        .Q(rq1[3]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rq1_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rq1_reg[11]_0 [4]),
        .Q(rq1[4]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rq1_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rq1_reg[11]_0 [5]),
        .Q(rq1[5]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rq1_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rq1_reg[11]_0 [6]),
        .Q(rq1[6]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rq1_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rq1_reg[11]_0 [7]),
        .Q(rq1[7]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rq1_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rq1_reg[11]_0 [8]),
        .Q(rq1[8]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rq1_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rq1_reg[11]_0 [9]),
        .Q(rq1[9]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rq2_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rq2_reg[11]_0 [0]),
        .Q(rq2[0]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rq2_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rq2_reg[11]_0 [10]),
        .Q(rq2[10]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rq2_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rq2_reg[11]_0 [11]),
        .Q(rq2[11]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rq2_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rq2_reg[11]_0 [1]),
        .Q(rq2[1]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rq2_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rq2_reg[11]_0 [2]),
        .Q(rq2[2]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rq2_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rq2_reg[11]_0 [3]),
        .Q(rq2[3]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rq2_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rq2_reg[11]_0 [4]),
        .Q(rq2[4]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rq2_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rq2_reg[11]_0 [5]),
        .Q(rq2[5]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rq2_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rq2_reg[11]_0 [6]),
        .Q(rq2[6]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rq2_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rq2_reg[11]_0 [7]),
        .Q(rq2[7]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rq2_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rq2_reg[11]_0 [8]),
        .Q(rq2[8]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rq2_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rq2_reg[11]_0 [9]),
        .Q(rq2[9]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rq3_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rq3_reg[11]_0 [0]),
        .Q(rq3[0]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rq3_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rq3_reg[11]_0 [10]),
        .Q(rq3[10]),
        .R(rmul1_reg_0));
  (* \PinAttr:D:HOLD_DETOUR  = "190" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rq3_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rq3_reg[11]_0 [11]),
        .Q(rq3[11]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rq3_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rq3_reg[11]_0 [1]),
        .Q(rq3[1]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rq3_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rq3_reg[11]_0 [2]),
        .Q(rq3[2]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rq3_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rq3_reg[11]_0 [3]),
        .Q(rq3[3]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rq3_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rq3_reg[11]_0 [4]),
        .Q(rq3[4]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rq3_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rq3_reg[11]_0 [5]),
        .Q(rq3[5]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rq3_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rq3_reg[11]_0 [6]),
        .Q(rq3[6]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rq3_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rq3_reg[11]_0 [7]),
        .Q(rq3[7]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rq3_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rq3_reg[11]_0 [8]),
        .Q(rq3[8]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rq3_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rq3_reg[11]_0 [9]),
        .Q(rq3[9]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rq4_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(Q[0]),
        .Q(rq4[0]),
        .R(rmul1_reg_0));
  (* \PinAttr:D:HOLD_DETOUR  = "181" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rq4_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(Q[10]),
        .Q(rq4[10]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rq4_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(Q[11]),
        .Q(rq4[11]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rq4_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(Q[1]),
        .Q(rq4[1]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rq4_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(Q[2]),
        .Q(rq4[2]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rq4_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(Q[3]),
        .Q(rq4[3]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rq4_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(Q[4]),
        .Q(rq4[4]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rq4_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(Q[5]),
        .Q(rq4[5]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rq4_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(Q[6]),
        .Q(rq4[6]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rq4_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(Q[7]),
        .Q(rq4[7]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rq4_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(Q[8]),
        .Q(rq4[8]),
        .R(rmul1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rq4_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(Q[9]),
        .Q(rq4[9]),
        .R(rmul1_reg_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 sub1_carry
       (.CI(1'b0),
        .CO({sub1_carry_n_0,NLW_sub1_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI(rp1[3:0]),
        .O(A[3:0]),
        .S({sub1_carry_i_1_n_0,sub1_carry_i_2_n_0,sub1_carry_i_3_n_0,sub1_carry_i_4_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 sub1_carry__0
       (.CI(sub1_carry_n_0),
        .CO({sub1_carry__0_n_0,NLW_sub1_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(rp1[7:4]),
        .O(A[7:4]),
        .S({sub1_carry__0_i_1_n_0,sub1_carry__0_i_2_n_0,sub1_carry__0_i_3_n_0,sub1_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    sub1_carry__0_i_1
       (.I0(rp1[7]),
        .I1(rq1[7]),
        .O(sub1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub1_carry__0_i_2
       (.I0(rp1[6]),
        .I1(rq1[6]),
        .O(sub1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub1_carry__0_i_3
       (.I0(rp1[5]),
        .I1(rq1[5]),
        .O(sub1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub1_carry__0_i_4
       (.I0(rp1[4]),
        .I1(rq1[4]),
        .O(sub1_carry__0_i_4_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 sub1_carry__1
       (.CI(sub1_carry__0_n_0),
        .CO({sub1_carry__1_n_0,NLW_sub1_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(rp1[11:8]),
        .O(A[11:8]),
        .S({sub1_carry__1_i_1_n_0,sub1_carry__1_i_2_n_0,sub1_carry__1_i_3_n_0,sub1_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    sub1_carry__1_i_1
       (.I0(rp1[11]),
        .I1(rq1[11]),
        .O(sub1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub1_carry__1_i_2
       (.I0(rp1[10]),
        .I1(rq1[10]),
        .O(sub1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub1_carry__1_i_3
       (.I0(rp1[9]),
        .I1(rq1[9]),
        .O(sub1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub1_carry__1_i_4
       (.I0(rp1[8]),
        .I1(rq1[8]),
        .O(sub1_carry__1_i_4_n_0));
  CARRY4 sub1_carry__2
       (.CI(sub1_carry__1_n_0),
        .CO(NLW_sub1_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_sub1_carry__2_O_UNCONNECTED[3:1],A[12]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h9)) 
    sub1_carry_i_1
       (.I0(rp1[3]),
        .I1(rq1[3]),
        .O(sub1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub1_carry_i_2
       (.I0(rp1[2]),
        .I1(rq1[2]),
        .O(sub1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub1_carry_i_3
       (.I0(rp1[1]),
        .I1(rq1[1]),
        .O(sub1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub1_carry_i_4
       (.I0(rp1[0]),
        .I1(rq1[0]),
        .O(sub1_carry_i_4_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 sub2_carry
       (.CI(1'b0),
        .CO({sub2_carry_n_0,NLW_sub2_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI(rp2[3:0]),
        .O({sub2_carry_n_4,sub2_carry_n_5,sub2_carry_n_6,sub2_carry_n_7}),
        .S({sub2_carry_i_1_n_0,sub2_carry_i_2_n_0,sub2_carry_i_3_n_0,sub2_carry_i_4_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 sub2_carry__0
       (.CI(sub2_carry_n_0),
        .CO({sub2_carry__0_n_0,NLW_sub2_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(rp2[7:4]),
        .O({sub2_carry__0_n_4,sub2_carry__0_n_5,sub2_carry__0_n_6,sub2_carry__0_n_7}),
        .S({sub2_carry__0_i_1_n_0,sub2_carry__0_i_2_n_0,sub2_carry__0_i_3_n_0,sub2_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    sub2_carry__0_i_1
       (.I0(rp2[7]),
        .I1(rq2[7]),
        .O(sub2_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub2_carry__0_i_2
       (.I0(rp2[6]),
        .I1(rq2[6]),
        .O(sub2_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub2_carry__0_i_3
       (.I0(rp2[5]),
        .I1(rq2[5]),
        .O(sub2_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub2_carry__0_i_4
       (.I0(rp2[4]),
        .I1(rq2[4]),
        .O(sub2_carry__0_i_4_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 sub2_carry__1
       (.CI(sub2_carry__0_n_0),
        .CO({sub2_carry__1_n_0,NLW_sub2_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(rp2[11:8]),
        .O({sub2_carry__1_n_4,sub2_carry__1_n_5,sub2_carry__1_n_6,sub2_carry__1_n_7}),
        .S({sub2_carry__1_i_1_n_0,sub2_carry__1_i_2_n_0,sub2_carry__1_i_3_n_0,sub2_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    sub2_carry__1_i_1
       (.I0(rp2[11]),
        .I1(rq2[11]),
        .O(sub2_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub2_carry__1_i_2
       (.I0(rp2[10]),
        .I1(rq2[10]),
        .O(sub2_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub2_carry__1_i_3
       (.I0(rp2[9]),
        .I1(rq2[9]),
        .O(sub2_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub2_carry__1_i_4
       (.I0(rp2[8]),
        .I1(rq2[8]),
        .O(sub2_carry__1_i_4_n_0));
  CARRY4 sub2_carry__2
       (.CI(sub2_carry__1_n_0),
        .CO(NLW_sub2_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_sub2_carry__2_O_UNCONNECTED[3:1],sub2_carry__2_n_7}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h9)) 
    sub2_carry_i_1
       (.I0(rp2[3]),
        .I1(rq2[3]),
        .O(sub2_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub2_carry_i_2
       (.I0(rp2[2]),
        .I1(rq2[2]),
        .O(sub2_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub2_carry_i_3
       (.I0(rp2[1]),
        .I1(rq2[1]),
        .O(sub2_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub2_carry_i_4
       (.I0(rp2[0]),
        .I1(rq2[0]),
        .O(sub2_carry_i_4_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 sub3_carry
       (.CI(1'b0),
        .CO({sub3_carry_n_0,NLW_sub3_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI(rp3[3:0]),
        .O({sub3_carry_n_4,sub3_carry_n_5,sub3_carry_n_6,sub3_carry_n_7}),
        .S({sub3_carry_i_1_n_0,sub3_carry_i_2_n_0,sub3_carry_i_3_n_0,sub3_carry_i_4_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 sub3_carry__0
       (.CI(sub3_carry_n_0),
        .CO({sub3_carry__0_n_0,NLW_sub3_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(rp3[7:4]),
        .O({sub3_carry__0_n_4,sub3_carry__0_n_5,sub3_carry__0_n_6,sub3_carry__0_n_7}),
        .S({sub3_carry__0_i_1_n_0,sub3_carry__0_i_2_n_0,sub3_carry__0_i_3_n_0,sub3_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    sub3_carry__0_i_1
       (.I0(rp3[7]),
        .I1(rq3[7]),
        .O(sub3_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub3_carry__0_i_2
       (.I0(rp3[6]),
        .I1(rq3[6]),
        .O(sub3_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub3_carry__0_i_3
       (.I0(rp3[5]),
        .I1(rq3[5]),
        .O(sub3_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub3_carry__0_i_4
       (.I0(rp3[4]),
        .I1(rq3[4]),
        .O(sub3_carry__0_i_4_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 sub3_carry__1
       (.CI(sub3_carry__0_n_0),
        .CO({sub3_carry__1_n_0,NLW_sub3_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(rp3[11:8]),
        .O({sub3_carry__1_n_4,sub3_carry__1_n_5,sub3_carry__1_n_6,sub3_carry__1_n_7}),
        .S({sub3_carry__1_i_1_n_0,sub3_carry__1_i_2_n_0,sub3_carry__1_i_3_n_0,sub3_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    sub3_carry__1_i_1
       (.I0(rp3[11]),
        .I1(rq3[11]),
        .O(sub3_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub3_carry__1_i_2
       (.I0(rp3[10]),
        .I1(rq3[10]),
        .O(sub3_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub3_carry__1_i_3
       (.I0(rp3[9]),
        .I1(rq3[9]),
        .O(sub3_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub3_carry__1_i_4
       (.I0(rp3[8]),
        .I1(rq3[8]),
        .O(sub3_carry__1_i_4_n_0));
  CARRY4 sub3_carry__2
       (.CI(sub3_carry__1_n_0),
        .CO(NLW_sub3_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_sub3_carry__2_O_UNCONNECTED[3:1],sub3_carry__2_n_7}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h9)) 
    sub3_carry_i_1
       (.I0(rp3[3]),
        .I1(rq3[3]),
        .O(sub3_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub3_carry_i_2
       (.I0(rp3[2]),
        .I1(rq3[2]),
        .O(sub3_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub3_carry_i_3
       (.I0(rp3[1]),
        .I1(rq3[1]),
        .O(sub3_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub3_carry_i_4
       (.I0(rp3[0]),
        .I1(rq3[0]),
        .O(sub3_carry_i_4_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 sub4_carry
       (.CI(1'b0),
        .CO({sub4_carry_n_0,NLW_sub4_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI(rp4[3:0]),
        .O({sub4_carry_n_4,sub4_carry_n_5,sub4_carry_n_6,sub4_carry_n_7}),
        .S({sub4_carry_i_1_n_0,sub4_carry_i_2_n_0,sub4_carry_i_3_n_0,sub4_carry_i_4_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 sub4_carry__0
       (.CI(sub4_carry_n_0),
        .CO({sub4_carry__0_n_0,NLW_sub4_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(rp4[7:4]),
        .O({sub4_carry__0_n_4,sub4_carry__0_n_5,sub4_carry__0_n_6,sub4_carry__0_n_7}),
        .S({sub4_carry__0_i_1_n_0,sub4_carry__0_i_2_n_0,sub4_carry__0_i_3_n_0,sub4_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    sub4_carry__0_i_1
       (.I0(rp4[7]),
        .I1(rq4[7]),
        .O(sub4_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub4_carry__0_i_2
       (.I0(rp4[6]),
        .I1(rq4[6]),
        .O(sub4_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub4_carry__0_i_3
       (.I0(rp4[5]),
        .I1(rq4[5]),
        .O(sub4_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub4_carry__0_i_4
       (.I0(rp4[4]),
        .I1(rq4[4]),
        .O(sub4_carry__0_i_4_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 sub4_carry__1
       (.CI(sub4_carry__0_n_0),
        .CO({sub4_carry__1_n_0,NLW_sub4_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(rp4[11:8]),
        .O({sub4_carry__1_n_4,sub4_carry__1_n_5,sub4_carry__1_n_6,sub4_carry__1_n_7}),
        .S({sub4_carry__1_i_1_n_0,sub4_carry__1_i_2_n_0,sub4_carry__1_i_3_n_0,sub4_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    sub4_carry__1_i_1
       (.I0(rp4[11]),
        .I1(rq4[11]),
        .O(sub4_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub4_carry__1_i_2
       (.I0(rp4[10]),
        .I1(rq4[10]),
        .O(sub4_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub4_carry__1_i_3
       (.I0(rp4[9]),
        .I1(rq4[9]),
        .O(sub4_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub4_carry__1_i_4
       (.I0(rp4[8]),
        .I1(rq4[8]),
        .O(sub4_carry__1_i_4_n_0));
  CARRY4 sub4_carry__2
       (.CI(sub4_carry__1_n_0),
        .CO(NLW_sub4_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_sub4_carry__2_O_UNCONNECTED[3:1],sub4_carry__2_n_7}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h9)) 
    sub4_carry_i_1
       (.I0(rp4[3]),
        .I1(rq4[3]),
        .O(sub4_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub4_carry_i_2
       (.I0(rp4[2]),
        .I1(rq4[2]),
        .O(sub4_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub4_carry_i_3
       (.I0(rp4[1]),
        .I1(rq4[1]),
        .O(sub4_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub4_carry_i_4
       (.I0(rp4[0]),
        .I1(rq4[0]),
        .O(sub4_carry_i_4_n_0));
endmodule

(* ECO_CHECKSUM = "67732b64" *) (* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) 
(* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
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
  wire btnDreg;
  wire btnL;
  wire btnL_IBUF;
  wire btnLreg;
  wire btnR;
  wire btnR_IBUF;
  wire btnRreg;
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
  wire \input_reg_n_0_[0] ;
  wire \input_reg_n_0_[10] ;
  wire \input_reg_n_0_[11] ;
  wire \input_reg_n_0_[1] ;
  wire \input_reg_n_0_[2] ;
  wire \input_reg_n_0_[3] ;
  wire \input_reg_n_0_[4] ;
  wire \input_reg_n_0_[5] ;
  wire \input_reg_n_0_[6] ;
  wire \input_reg_n_0_[7] ;
  wire \input_reg_n_0_[8] ;
  wire \input_reg_n_0_[9] ;
  wire k3;
  wire [15:0]led;
  wire [15:0]led_OBUF;
  wire lopt;
  wire lopt_1;
  wire p_0_in;
  wire p_0_in2_in;
  wire [11:0]p_3_in;
  wire [11:0]p_4_in;
  wire [11:0]p_5_in;
  wire [11:0]rinput1;
  wire \rinput2[11]_i_1_n_0 ;
  wire \rinput2_reg_n_0_[0] ;
  wire \rinput2_reg_n_0_[10] ;
  wire \rinput2_reg_n_0_[11] ;
  wire \rinput2_reg_n_0_[1] ;
  wire \rinput2_reg_n_0_[2] ;
  wire \rinput2_reg_n_0_[3] ;
  wire \rinput2_reg_n_0_[4] ;
  wire \rinput2_reg_n_0_[5] ;
  wire \rinput2_reg_n_0_[6] ;
  wire \rinput2_reg_n_0_[7] ;
  wire \rinput2_reg_n_0_[8] ;
  wire \rinput2_reg_n_0_[9] ;
  wire \rinput3[11]_i_1_n_0 ;
  wire \rinput3_reg_n_0_[0] ;
  wire \rinput3_reg_n_0_[10] ;
  wire \rinput3_reg_n_0_[11] ;
  wire \rinput3_reg_n_0_[1] ;
  wire \rinput3_reg_n_0_[2] ;
  wire \rinput3_reg_n_0_[3] ;
  wire \rinput3_reg_n_0_[4] ;
  wire \rinput3_reg_n_0_[5] ;
  wire \rinput3_reg_n_0_[6] ;
  wire \rinput3_reg_n_0_[7] ;
  wire \rinput3_reg_n_0_[8] ;
  wire \rinput3_reg_n_0_[9] ;
  wire rinput4;
  wire \rinput4_reg_n_0_[0] ;
  wire \rinput4_reg_n_0_[10] ;
  wire \rinput4_reg_n_0_[11] ;
  wire \rinput4_reg_n_0_[1] ;
  wire \rinput4_reg_n_0_[2] ;
  wire \rinput4_reg_n_0_[3] ;
  wire \rinput4_reg_n_0_[4] ;
  wire \rinput4_reg_n_0_[5] ;
  wire \rinput4_reg_n_0_[6] ;
  wire \rinput4_reg_n_0_[7] ;
  wire \rinput4_reg_n_0_[8] ;
  wire \rinput4_reg_n_0_[9] ;
  wire rst;
  wire [6:0]seg;
  wire [6:0]seg_OBUF;
  wire \seg_OBUF[5]_inst_i_5_n_0 ;
  wire \seg_OBUF[6]_inst_i_10_n_0 ;
  wire \seg_OBUF[6]_inst_i_2_n_0 ;
  wire \seg_OBUF[6]_inst_i_3_n_0 ;
  wire \seg_OBUF[6]_inst_i_4_n_0 ;
  wire \seg_OBUF[6]_inst_i_7_n_0 ;
  wire \seg_OBUF[6]_inst_i_8_n_0 ;
  wire \seg_OBUF[6]_inst_i_9_n_0 ;
  wire [3:0]sel0;
  wire [15:0]sw;
  wire [15:0]sw_IBUF;
  wire \sw_reg_reg_n_0_[0] ;
  wire \sw_reg_reg_n_0_[10] ;
  wire \sw_reg_reg_n_0_[11] ;
  wire \sw_reg_reg_n_0_[1] ;
  wire \sw_reg_reg_n_0_[2] ;
  wire \sw_reg_reg_n_0_[3] ;
  wire \sw_reg_reg_n_0_[4] ;
  wire \sw_reg_reg_n_0_[5] ;
  wire \sw_reg_reg_n_0_[6] ;
  wire \sw_reg_reg_n_0_[7] ;
  wire \sw_reg_reg_n_0_[8] ;
  wire \sw_reg_reg_n_0_[9] ;
  wire [8:7]NLW_inst_circuito_led_OBUF_UNCONNECTED;

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
  IBUF btnD_IBUF_inst
       (.I(btnD),
        .O(btnD_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    btnDreg_reg
       (.C(clk10hz),
        .CE(1'b1),
        .D(btnD_IBUF),
        .Q(btnDreg),
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
        .Q(btnLreg),
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
        .Q(btnRreg),
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
  FDRE #(
    .INIT(1'b0)) 
    \input_reg[0] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(rinput1[0]),
        .Q(\input_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_reg[10] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(rinput1[10]),
        .Q(\input_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_reg[11] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(rinput1[11]),
        .Q(\input_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_reg[12] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(\rinput2_reg_n_0_[0] ),
        .Q(p_5_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_reg[13] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(\rinput2_reg_n_0_[1] ),
        .Q(p_5_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_reg[14] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(\rinput2_reg_n_0_[2] ),
        .Q(p_5_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_reg[15] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(\rinput2_reg_n_0_[3] ),
        .Q(p_5_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_reg[16] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(\rinput2_reg_n_0_[4] ),
        .Q(p_5_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_reg[17] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(\rinput2_reg_n_0_[5] ),
        .Q(p_5_in[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_reg[18] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(\rinput2_reg_n_0_[6] ),
        .Q(p_5_in[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_reg[19] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(\rinput2_reg_n_0_[7] ),
        .Q(p_5_in[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_reg[1] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(rinput1[1]),
        .Q(\input_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_reg[20] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(\rinput2_reg_n_0_[8] ),
        .Q(p_5_in[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_reg[21] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(\rinput2_reg_n_0_[9] ),
        .Q(p_5_in[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_reg[22] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(\rinput2_reg_n_0_[10] ),
        .Q(p_5_in[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_reg[23] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(\rinput2_reg_n_0_[11] ),
        .Q(p_5_in[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_reg[24] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(\rinput3_reg_n_0_[0] ),
        .Q(p_4_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_reg[25] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(\rinput3_reg_n_0_[1] ),
        .Q(p_4_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_reg[26] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(\rinput3_reg_n_0_[2] ),
        .Q(p_4_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_reg[27] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(\rinput3_reg_n_0_[3] ),
        .Q(p_4_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_reg[28] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(\rinput3_reg_n_0_[4] ),
        .Q(p_4_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_reg[29] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(\rinput3_reg_n_0_[5] ),
        .Q(p_4_in[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_reg[2] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(rinput1[2]),
        .Q(\input_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_reg[30] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(\rinput3_reg_n_0_[6] ),
        .Q(p_4_in[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_reg[31] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(\rinput3_reg_n_0_[7] ),
        .Q(p_4_in[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_reg[32] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(\rinput3_reg_n_0_[8] ),
        .Q(p_4_in[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_reg[33] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(\rinput3_reg_n_0_[9] ),
        .Q(p_4_in[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_reg[34] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(\rinput3_reg_n_0_[10] ),
        .Q(p_4_in[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_reg[35] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(\rinput3_reg_n_0_[11] ),
        .Q(p_4_in[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_reg[36] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(\rinput4_reg_n_0_[0] ),
        .Q(p_3_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_reg[37] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(\rinput4_reg_n_0_[1] ),
        .Q(p_3_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_reg[38] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(\rinput4_reg_n_0_[2] ),
        .Q(p_3_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_reg[39] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(\rinput4_reg_n_0_[3] ),
        .Q(p_3_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_reg[3] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(rinput1[3]),
        .Q(\input_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_reg[40] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(\rinput4_reg_n_0_[4] ),
        .Q(p_3_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_reg[41] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(\rinput4_reg_n_0_[5] ),
        .Q(p_3_in[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_reg[42] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(\rinput4_reg_n_0_[6] ),
        .Q(p_3_in[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_reg[43] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(\rinput4_reg_n_0_[7] ),
        .Q(p_3_in[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_reg[44] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(\rinput4_reg_n_0_[8] ),
        .Q(p_3_in[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_reg[45] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(\rinput4_reg_n_0_[9] ),
        .Q(p_3_in[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_reg[46] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(\rinput4_reg_n_0_[10] ),
        .Q(p_3_in[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_reg[47] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(\rinput4_reg_n_0_[11] ),
        .Q(p_3_in[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_reg[4] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(rinput1[4]),
        .Q(\input_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_reg[5] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(rinput1[5]),
        .Q(\input_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_reg[6] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(rinput1[6]),
        .Q(\input_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_reg[7] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(rinput1[7]),
        .Q(\input_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_reg[8] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(rinput1[8]),
        .Q(\input_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_reg[9] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(rinput1[9]),
        .Q(\input_reg_n_0_[9] ),
        .R(1'b0));
  circuito inst_circuito
       (.CLK(clk_IBUF_BUFG),
        .\FSM_sequential_currstate_reg[0] (led_OBUF[14]),
        .Q({rst,k3}),
        .\flower_rattr4_reg[11] ({p_3_in,p_4_in,p_5_in,\input_reg_n_0_[11] ,\input_reg_n_0_[10] ,\input_reg_n_0_[9] ,\input_reg_n_0_[8] ,\input_reg_n_0_[7] ,\input_reg_n_0_[6] ,\input_reg_n_0_[5] ,\input_reg_n_0_[4] ,\input_reg_n_0_[3] ,\input_reg_n_0_[2] ,\input_reg_n_0_[1] ,\input_reg_n_0_[0] }),
        .led_OBUF({led_OBUF[15],NLW_inst_circuito_led_OBUF_UNCONNECTED[8:7],led_OBUF[11:8],led_OBUF[2:0]}),
        .lopt(lopt),
        .lopt_1(lopt_1));
  clkdiv inst_clkdiv
       (.CLK(dclk),
        .clk10hz(clk10hz),
        .\cnt_reg[23]_0 (clk_IBUF_BUFG));
  disp7 inst_disp7
       (.CLK(dclk),
        .Q(\input_reg_n_0_[8] ),
        .an_OBUF(an_OBUF),
        .dp({rst,p_0_in,p_0_in2_in}),
        .dp_OBUF(dp_OBUF),
        .\seg[4] (\seg_OBUF[6]_inst_i_3_n_0 ),
        .\seg[4]_0 (\seg_OBUF[6]_inst_i_2_n_0 ),
        .\seg[4]_1 (\seg_OBUF[6]_inst_i_4_n_0 ),
        .seg_OBUF(seg_OBUF),
        .\seg_OBUF[4]_inst_i_1_0 (\seg_OBUF[5]_inst_i_5_n_0 ),
        .\seg_OBUF[6]_inst_i_1_0 (\seg_OBUF[6]_inst_i_8_n_0 ),
        .\seg_OBUF[6]_inst_i_1_1 (\seg_OBUF[6]_inst_i_7_n_0 ),
        .\seg_OBUF[6]_inst_i_1_2 (\seg_OBUF[6]_inst_i_9_n_0 ),
        .\seg_OBUF[6]_inst_i_1_3 (\seg_OBUF[6]_inst_i_10_n_0 ),
        .sel0(sel0));
  FDRE #(
    .INIT(1'b0)) 
    instr_reg
       (.C(clk10hz),
        .CE(1'b1),
        .D(btnC_IBUF),
        .Q(led_OBUF[14]),
        .R(rst));
  OBUF \led_OBUF[0]_inst 
       (.I(led_OBUF[0]),
        .O(led[0]));
  OBUF \led_OBUF[10]_inst 
       (.I(led_OBUF[10]),
        .O(led[10]));
  OBUF \led_OBUF[11]_inst 
       (.I(led_OBUF[11]),
        .O(led[11]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \led_OBUF[12]_inst 
       (.I(lopt),
        .O(led[12]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \led_OBUF[13]_inst 
       (.I(lopt_1),
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
       (.I(1'b0),
        .O(led[3]));
  OBUF \led_OBUF[4]_inst 
       (.I(1'b0),
        .O(led[4]));
  OBUF \led_OBUF[5]_inst 
       (.I(1'b0),
        .O(led[5]));
  OBUF \led_OBUF[6]_inst 
       (.I(1'b0),
        .O(led[6]));
  OBUF \led_OBUF[7]_inst 
       (.I(1'b0),
        .O(led[7]));
  OBUF \led_OBUF[8]_inst 
       (.I(led_OBUF[8]),
        .O(led[8]));
  OBUF \led_OBUF[9]_inst 
       (.I(led_OBUF[9]),
        .O(led[9]));
  FDRE #(
    .INIT(1'b0)) 
    \rinput1_reg[0] 
       (.C(clk10hz),
        .CE(btnRreg),
        .D(\sw_reg_reg_n_0_[0] ),
        .Q(rinput1[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rinput1_reg[10] 
       (.C(clk10hz),
        .CE(btnRreg),
        .D(\sw_reg_reg_n_0_[10] ),
        .Q(rinput1[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rinput1_reg[11] 
       (.C(clk10hz),
        .CE(btnRreg),
        .D(\sw_reg_reg_n_0_[11] ),
        .Q(rinput1[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rinput1_reg[1] 
       (.C(clk10hz),
        .CE(btnRreg),
        .D(\sw_reg_reg_n_0_[1] ),
        .Q(rinput1[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rinput1_reg[2] 
       (.C(clk10hz),
        .CE(btnRreg),
        .D(\sw_reg_reg_n_0_[2] ),
        .Q(rinput1[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rinput1_reg[3] 
       (.C(clk10hz),
        .CE(btnRreg),
        .D(\sw_reg_reg_n_0_[3] ),
        .Q(rinput1[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rinput1_reg[4] 
       (.C(clk10hz),
        .CE(btnRreg),
        .D(\sw_reg_reg_n_0_[4] ),
        .Q(rinput1[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rinput1_reg[5] 
       (.C(clk10hz),
        .CE(btnRreg),
        .D(\sw_reg_reg_n_0_[5] ),
        .Q(rinput1[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rinput1_reg[6] 
       (.C(clk10hz),
        .CE(btnRreg),
        .D(\sw_reg_reg_n_0_[6] ),
        .Q(rinput1[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rinput1_reg[7] 
       (.C(clk10hz),
        .CE(btnRreg),
        .D(\sw_reg_reg_n_0_[7] ),
        .Q(rinput1[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rinput1_reg[8] 
       (.C(clk10hz),
        .CE(btnRreg),
        .D(\sw_reg_reg_n_0_[8] ),
        .Q(rinput1[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rinput1_reg[9] 
       (.C(clk10hz),
        .CE(btnRreg),
        .D(\sw_reg_reg_n_0_[9] ),
        .Q(rinput1[9]),
        .R(rst));
  LUT2 #(
    .INIT(4'h2)) 
    \rinput2[11]_i_1 
       (.I0(btnDreg),
        .I1(btnRreg),
        .O(\rinput2[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rinput2_reg[0] 
       (.C(clk10hz),
        .CE(\rinput2[11]_i_1_n_0 ),
        .D(\sw_reg_reg_n_0_[0] ),
        .Q(\rinput2_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rinput2_reg[10] 
       (.C(clk10hz),
        .CE(\rinput2[11]_i_1_n_0 ),
        .D(\sw_reg_reg_n_0_[10] ),
        .Q(\rinput2_reg_n_0_[10] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rinput2_reg[11] 
       (.C(clk10hz),
        .CE(\rinput2[11]_i_1_n_0 ),
        .D(\sw_reg_reg_n_0_[11] ),
        .Q(\rinput2_reg_n_0_[11] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rinput2_reg[1] 
       (.C(clk10hz),
        .CE(\rinput2[11]_i_1_n_0 ),
        .D(\sw_reg_reg_n_0_[1] ),
        .Q(\rinput2_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rinput2_reg[2] 
       (.C(clk10hz),
        .CE(\rinput2[11]_i_1_n_0 ),
        .D(\sw_reg_reg_n_0_[2] ),
        .Q(\rinput2_reg_n_0_[2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rinput2_reg[3] 
       (.C(clk10hz),
        .CE(\rinput2[11]_i_1_n_0 ),
        .D(\sw_reg_reg_n_0_[3] ),
        .Q(\rinput2_reg_n_0_[3] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rinput2_reg[4] 
       (.C(clk10hz),
        .CE(\rinput2[11]_i_1_n_0 ),
        .D(\sw_reg_reg_n_0_[4] ),
        .Q(\rinput2_reg_n_0_[4] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rinput2_reg[5] 
       (.C(clk10hz),
        .CE(\rinput2[11]_i_1_n_0 ),
        .D(\sw_reg_reg_n_0_[5] ),
        .Q(\rinput2_reg_n_0_[5] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rinput2_reg[6] 
       (.C(clk10hz),
        .CE(\rinput2[11]_i_1_n_0 ),
        .D(\sw_reg_reg_n_0_[6] ),
        .Q(\rinput2_reg_n_0_[6] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rinput2_reg[7] 
       (.C(clk10hz),
        .CE(\rinput2[11]_i_1_n_0 ),
        .D(\sw_reg_reg_n_0_[7] ),
        .Q(\rinput2_reg_n_0_[7] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rinput2_reg[8] 
       (.C(clk10hz),
        .CE(\rinput2[11]_i_1_n_0 ),
        .D(\sw_reg_reg_n_0_[8] ),
        .Q(\rinput2_reg_n_0_[8] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rinput2_reg[9] 
       (.C(clk10hz),
        .CE(\rinput2[11]_i_1_n_0 ),
        .D(\sw_reg_reg_n_0_[9] ),
        .Q(\rinput2_reg_n_0_[9] ),
        .R(rst));
  LUT3 #(
    .INIT(8'h04)) 
    \rinput3[11]_i_1 
       (.I0(btnDreg),
        .I1(btnUreg),
        .I2(btnRreg),
        .O(\rinput3[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rinput3_reg[0] 
       (.C(clk10hz),
        .CE(\rinput3[11]_i_1_n_0 ),
        .D(\sw_reg_reg_n_0_[0] ),
        .Q(\rinput3_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rinput3_reg[10] 
       (.C(clk10hz),
        .CE(\rinput3[11]_i_1_n_0 ),
        .D(\sw_reg_reg_n_0_[10] ),
        .Q(\rinput3_reg_n_0_[10] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rinput3_reg[11] 
       (.C(clk10hz),
        .CE(\rinput3[11]_i_1_n_0 ),
        .D(\sw_reg_reg_n_0_[11] ),
        .Q(\rinput3_reg_n_0_[11] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rinput3_reg[1] 
       (.C(clk10hz),
        .CE(\rinput3[11]_i_1_n_0 ),
        .D(\sw_reg_reg_n_0_[1] ),
        .Q(\rinput3_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rinput3_reg[2] 
       (.C(clk10hz),
        .CE(\rinput3[11]_i_1_n_0 ),
        .D(\sw_reg_reg_n_0_[2] ),
        .Q(\rinput3_reg_n_0_[2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rinput3_reg[3] 
       (.C(clk10hz),
        .CE(\rinput3[11]_i_1_n_0 ),
        .D(\sw_reg_reg_n_0_[3] ),
        .Q(\rinput3_reg_n_0_[3] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rinput3_reg[4] 
       (.C(clk10hz),
        .CE(\rinput3[11]_i_1_n_0 ),
        .D(\sw_reg_reg_n_0_[4] ),
        .Q(\rinput3_reg_n_0_[4] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rinput3_reg[5] 
       (.C(clk10hz),
        .CE(\rinput3[11]_i_1_n_0 ),
        .D(\sw_reg_reg_n_0_[5] ),
        .Q(\rinput3_reg_n_0_[5] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rinput3_reg[6] 
       (.C(clk10hz),
        .CE(\rinput3[11]_i_1_n_0 ),
        .D(\sw_reg_reg_n_0_[6] ),
        .Q(\rinput3_reg_n_0_[6] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rinput3_reg[7] 
       (.C(clk10hz),
        .CE(\rinput3[11]_i_1_n_0 ),
        .D(\sw_reg_reg_n_0_[7] ),
        .Q(\rinput3_reg_n_0_[7] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rinput3_reg[8] 
       (.C(clk10hz),
        .CE(\rinput3[11]_i_1_n_0 ),
        .D(\sw_reg_reg_n_0_[8] ),
        .Q(\rinput3_reg_n_0_[8] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rinput3_reg[9] 
       (.C(clk10hz),
        .CE(\rinput3[11]_i_1_n_0 ),
        .D(\sw_reg_reg_n_0_[9] ),
        .Q(\rinput3_reg_n_0_[9] ),
        .R(rst));
  LUT4 #(
    .INIT(16'h0010)) 
    \rinput4[11]_i_1 
       (.I0(btnDreg),
        .I1(btnRreg),
        .I2(btnLreg),
        .I3(btnUreg),
        .O(rinput4));
  FDRE #(
    .INIT(1'b0)) 
    \rinput4_reg[0] 
       (.C(clk10hz),
        .CE(rinput4),
        .D(\sw_reg_reg_n_0_[0] ),
        .Q(\rinput4_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rinput4_reg[10] 
       (.C(clk10hz),
        .CE(rinput4),
        .D(\sw_reg_reg_n_0_[10] ),
        .Q(\rinput4_reg_n_0_[10] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rinput4_reg[11] 
       (.C(clk10hz),
        .CE(rinput4),
        .D(\sw_reg_reg_n_0_[11] ),
        .Q(\rinput4_reg_n_0_[11] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rinput4_reg[1] 
       (.C(clk10hz),
        .CE(rinput4),
        .D(\sw_reg_reg_n_0_[1] ),
        .Q(\rinput4_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rinput4_reg[2] 
       (.C(clk10hz),
        .CE(rinput4),
        .D(\sw_reg_reg_n_0_[2] ),
        .Q(\rinput4_reg_n_0_[2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rinput4_reg[3] 
       (.C(clk10hz),
        .CE(rinput4),
        .D(\sw_reg_reg_n_0_[3] ),
        .Q(\rinput4_reg_n_0_[3] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rinput4_reg[4] 
       (.C(clk10hz),
        .CE(rinput4),
        .D(\sw_reg_reg_n_0_[4] ),
        .Q(\rinput4_reg_n_0_[4] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rinput4_reg[5] 
       (.C(clk10hz),
        .CE(rinput4),
        .D(\sw_reg_reg_n_0_[5] ),
        .Q(\rinput4_reg_n_0_[5] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rinput4_reg[6] 
       (.C(clk10hz),
        .CE(rinput4),
        .D(\sw_reg_reg_n_0_[6] ),
        .Q(\rinput4_reg_n_0_[6] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rinput4_reg[7] 
       (.C(clk10hz),
        .CE(rinput4),
        .D(\sw_reg_reg_n_0_[7] ),
        .Q(\rinput4_reg_n_0_[7] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rinput4_reg[8] 
       (.C(clk10hz),
        .CE(rinput4),
        .D(\sw_reg_reg_n_0_[8] ),
        .Q(\rinput4_reg_n_0_[8] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rinput4_reg[9] 
       (.C(clk10hz),
        .CE(rinput4),
        .D(\sw_reg_reg_n_0_[9] ),
        .Q(\rinput4_reg_n_0_[9] ),
        .R(rst));
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
  LUT5 #(
    .INIT(32'hACFAAC0A)) 
    \seg_OBUF[5]_inst_i_5 
       (.I0(p_3_in[8]),
        .I1(p_4_in[8]),
        .I2(p_0_in2_in),
        .I3(p_0_in),
        .I4(p_5_in[8]),
        .O(\seg_OBUF[5]_inst_i_5_n_0 ));
  OBUF \seg_OBUF[6]_inst 
       (.I(seg_OBUF[6]),
        .O(seg[6]));
  LUT6 #(
    .INIT(64'hFE3ECE0EF232C202)) 
    \seg_OBUF[6]_inst_i_10 
       (.I0(\input_reg_n_0_[1] ),
        .I1(p_0_in2_in),
        .I2(p_0_in),
        .I3(p_3_in[1]),
        .I4(p_4_in[1]),
        .I5(p_5_in[1]),
        .O(\seg_OBUF[6]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFE3ECE0EF232C202)) 
    \seg_OBUF[6]_inst_i_11 
       (.I0(\input_reg_n_0_[5] ),
        .I1(p_0_in2_in),
        .I2(p_0_in),
        .I3(p_3_in[5]),
        .I4(p_4_in[5]),
        .I5(p_5_in[5]),
        .O(sel0[1]));
  LUT6 #(
    .INIT(64'hFE3ECE0EF232C202)) 
    \seg_OBUF[6]_inst_i_12 
       (.I0(\input_reg_n_0_[4] ),
        .I1(p_0_in2_in),
        .I2(p_0_in),
        .I3(p_3_in[4]),
        .I4(p_4_in[4]),
        .I5(p_5_in[4]),
        .O(sel0[0]));
  LUT6 #(
    .INIT(64'hFE3ECE0EF232C202)) 
    \seg_OBUF[6]_inst_i_13 
       (.I0(\input_reg_n_0_[6] ),
        .I1(p_0_in2_in),
        .I2(p_0_in),
        .I3(p_3_in[6]),
        .I4(p_4_in[6]),
        .I5(p_5_in[6]),
        .O(sel0[2]));
  LUT6 #(
    .INIT(64'hFE3ECE0EF232C202)) 
    \seg_OBUF[6]_inst_i_14 
       (.I0(\input_reg_n_0_[7] ),
        .I1(p_0_in2_in),
        .I2(p_0_in),
        .I3(p_3_in[7]),
        .I4(p_4_in[7]),
        .I5(p_5_in[7]),
        .O(sel0[3]));
  LUT6 #(
    .INIT(64'hFE3ECE0EF232C202)) 
    \seg_OBUF[6]_inst_i_2 
       (.I0(\input_reg_n_0_[10] ),
        .I1(p_0_in2_in),
        .I2(p_0_in),
        .I3(p_3_in[10]),
        .I4(p_4_in[10]),
        .I5(p_5_in[10]),
        .O(\seg_OBUF[6]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFE3ECE0EF232C202)) 
    \seg_OBUF[6]_inst_i_3 
       (.I0(\input_reg_n_0_[11] ),
        .I1(p_0_in2_in),
        .I2(p_0_in),
        .I3(p_3_in[11]),
        .I4(p_4_in[11]),
        .I5(p_5_in[11]),
        .O(\seg_OBUF[6]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFE3ECE0EF232C202)) 
    \seg_OBUF[6]_inst_i_4 
       (.I0(\input_reg_n_0_[9] ),
        .I1(p_0_in2_in),
        .I2(p_0_in),
        .I3(p_3_in[9]),
        .I4(p_4_in[9]),
        .I5(p_5_in[9]),
        .O(\seg_OBUF[6]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFE3ECE0EF232C202)) 
    \seg_OBUF[6]_inst_i_7 
       (.I0(\input_reg_n_0_[3] ),
        .I1(p_0_in2_in),
        .I2(p_0_in),
        .I3(p_3_in[3]),
        .I4(p_4_in[3]),
        .I5(p_5_in[3]),
        .O(\seg_OBUF[6]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFE3ECE0EF232C202)) 
    \seg_OBUF[6]_inst_i_8 
       (.I0(\input_reg_n_0_[2] ),
        .I1(p_0_in2_in),
        .I2(p_0_in),
        .I3(p_3_in[2]),
        .I4(p_4_in[2]),
        .I5(p_5_in[2]),
        .O(\seg_OBUF[6]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFE3ECE0EF232C202)) 
    \seg_OBUF[6]_inst_i_9 
       (.I0(\input_reg_n_0_[0] ),
        .I1(p_0_in2_in),
        .I2(p_0_in),
        .I3(p_3_in[0]),
        .I4(p_4_in[0]),
        .I5(p_5_in[0]),
        .O(\seg_OBUF[6]_inst_i_9_n_0 ));
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
        .Q(\sw_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_reg_reg[10] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(sw_IBUF[10]),
        .Q(\sw_reg_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_reg_reg[11] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(sw_IBUF[11]),
        .Q(\sw_reg_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_reg_reg[12] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(sw_IBUF[12]),
        .Q(p_0_in2_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_reg_reg[13] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(sw_IBUF[13]),
        .Q(p_0_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_reg_reg[14] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(sw_IBUF[14]),
        .Q(k3),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_reg_reg[15] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(sw_IBUF[15]),
        .Q(rst),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_reg_reg[1] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(sw_IBUF[1]),
        .Q(\sw_reg_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_reg_reg[2] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(sw_IBUF[2]),
        .Q(\sw_reg_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_reg_reg[3] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(sw_IBUF[3]),
        .Q(\sw_reg_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_reg_reg[4] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(sw_IBUF[4]),
        .Q(\sw_reg_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_reg_reg[5] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(sw_IBUF[5]),
        .Q(\sw_reg_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_reg_reg[6] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(sw_IBUF[6]),
        .Q(\sw_reg_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_reg_reg[7] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(sw_IBUF[7]),
        .Q(\sw_reg_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_reg_reg[8] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(sw_IBUF[8]),
        .Q(\sw_reg_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_reg_reg[9] 
       (.C(clk10hz),
        .CE(1'b1),
        .D(sw_IBUF[9]),
        .Q(\sw_reg_reg_n_0_[9] ),
        .R(1'b0));
endmodule

module insert_push_cell
   (\local_reg_class_reg[1]_0 ,
    Q,
    \local_reg_class_reg[0]_0 ,
    \local_reg_class_reg[0]_1 ,
    D,
    \rclass_reg[1] ,
    \local_reg_distance_reg[25]_0 ,
    \local_reg_class_reg[1]_1 ,
    SR,
    CLK,
    lopt,
    lopt_1);
  output \local_reg_class_reg[1]_0 ;
  output [1:0]Q;
  output \local_reg_class_reg[0]_0 ;
  output \local_reg_class_reg[0]_1 ;
  output [25:0]D;
  output [1:0]\rclass_reg[1] ;
  input [25:0]\local_reg_distance_reg[25]_0 ;
  input [1:0]\local_reg_class_reg[1]_1 ;
  input [0:0]SR;
  input CLK;
  output lopt;
  output lopt_1;

  wire CLK;
  wire [25:0]D;
  wire [1:0]Q;
  wire [0:0]SR;
  wire compared_1;
  wire insert0_carry__0_i_1_n_0;
  wire insert0_carry__0_i_2_n_0;
  wire insert0_carry__0_i_3_n_0;
  wire insert0_carry__0_i_4_n_0;
  wire insert0_carry__0_i_5_n_0;
  wire insert0_carry__0_i_6_n_0;
  wire insert0_carry__0_i_7_n_0;
  wire insert0_carry__0_i_8_n_0;
  wire insert0_carry__0_n_0;
  wire insert0_carry__1_i_1_n_0;
  wire insert0_carry__1_i_2_n_0;
  wire insert0_carry__1_i_3_n_0;
  wire insert0_carry__1_i_4_n_0;
  wire insert0_carry__1_i_5_n_0;
  wire insert0_carry__1_i_6_n_0;
  wire insert0_carry__1_i_7_n_0;
  wire insert0_carry__1_i_8_n_0;
  wire insert0_carry__1_n_0;
  wire insert0_carry__2_i_1_n_0;
  wire insert0_carry__2_i_2_n_0;
  wire insert0_carry_i_1_n_0;
  wire insert0_carry_i_2_n_0;
  wire insert0_carry_i_3_n_0;
  wire insert0_carry_i_4_n_0;
  wire insert0_carry_i_5_n_0;
  wire insert0_carry_i_6_n_0;
  wire insert0_carry_i_7_n_0;
  wire insert0_carry_i_8_n_0;
  wire insert0_carry_n_0;
  wire \local_reg_class_reg[0]_0 ;
  wire \local_reg_class_reg[0]_1 ;
  wire \local_reg_class_reg[0]_lopt_replica_1 ;
  wire \local_reg_class_reg[1]_0 ;
  wire [1:0]\local_reg_class_reg[1]_1 ;
  wire \local_reg_class_reg[1]_lopt_replica_1 ;
  wire [25:0]local_reg_distance;
  wire [25:0]\local_reg_distance_reg[25]_0 ;
  wire [1:0]\rclass_reg[1] ;
  wire [2:0]NLW_insert0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_insert0_carry_O_UNCONNECTED;
  wire [2:0]NLW_insert0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_insert0_carry__0_O_UNCONNECTED;
  wire [2:0]NLW_insert0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_insert0_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_insert0_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_insert0_carry__2_O_UNCONNECTED;

  assign lopt = \local_reg_class_reg[0]_lopt_replica_1 ;
  assign lopt_1 = \local_reg_class_reg[1]_lopt_replica_1 ;
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 insert0_carry
       (.CI(1'b0),
        .CO({insert0_carry_n_0,NLW_insert0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({insert0_carry_i_1_n_0,insert0_carry_i_2_n_0,insert0_carry_i_3_n_0,insert0_carry_i_4_n_0}),
        .O(NLW_insert0_carry_O_UNCONNECTED[3:0]),
        .S({insert0_carry_i_5_n_0,insert0_carry_i_6_n_0,insert0_carry_i_7_n_0,insert0_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 insert0_carry__0
       (.CI(insert0_carry_n_0),
        .CO({insert0_carry__0_n_0,NLW_insert0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({insert0_carry__0_i_1_n_0,insert0_carry__0_i_2_n_0,insert0_carry__0_i_3_n_0,insert0_carry__0_i_4_n_0}),
        .O(NLW_insert0_carry__0_O_UNCONNECTED[3:0]),
        .S({insert0_carry__0_i_5_n_0,insert0_carry__0_i_6_n_0,insert0_carry__0_i_7_n_0,insert0_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    insert0_carry__0_i_1
       (.I0(local_reg_distance[14]),
        .I1(\local_reg_distance_reg[25]_0 [14]),
        .I2(\local_reg_distance_reg[25]_0 [15]),
        .I3(local_reg_distance[15]),
        .O(insert0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    insert0_carry__0_i_2
       (.I0(local_reg_distance[12]),
        .I1(\local_reg_distance_reg[25]_0 [12]),
        .I2(\local_reg_distance_reg[25]_0 [13]),
        .I3(local_reg_distance[13]),
        .O(insert0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    insert0_carry__0_i_3
       (.I0(local_reg_distance[10]),
        .I1(\local_reg_distance_reg[25]_0 [10]),
        .I2(\local_reg_distance_reg[25]_0 [11]),
        .I3(local_reg_distance[11]),
        .O(insert0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    insert0_carry__0_i_4
       (.I0(local_reg_distance[8]),
        .I1(\local_reg_distance_reg[25]_0 [8]),
        .I2(\local_reg_distance_reg[25]_0 [9]),
        .I3(local_reg_distance[9]),
        .O(insert0_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    insert0_carry__0_i_5
       (.I0(\local_reg_distance_reg[25]_0 [15]),
        .I1(local_reg_distance[15]),
        .I2(\local_reg_distance_reg[25]_0 [14]),
        .I3(local_reg_distance[14]),
        .O(insert0_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    insert0_carry__0_i_6
       (.I0(\local_reg_distance_reg[25]_0 [13]),
        .I1(local_reg_distance[13]),
        .I2(\local_reg_distance_reg[25]_0 [12]),
        .I3(local_reg_distance[12]),
        .O(insert0_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    insert0_carry__0_i_7
       (.I0(\local_reg_distance_reg[25]_0 [11]),
        .I1(local_reg_distance[11]),
        .I2(\local_reg_distance_reg[25]_0 [10]),
        .I3(local_reg_distance[10]),
        .O(insert0_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    insert0_carry__0_i_8
       (.I0(\local_reg_distance_reg[25]_0 [9]),
        .I1(local_reg_distance[9]),
        .I2(\local_reg_distance_reg[25]_0 [8]),
        .I3(local_reg_distance[8]),
        .O(insert0_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 insert0_carry__1
       (.CI(insert0_carry__0_n_0),
        .CO({insert0_carry__1_n_0,NLW_insert0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({insert0_carry__1_i_1_n_0,insert0_carry__1_i_2_n_0,insert0_carry__1_i_3_n_0,insert0_carry__1_i_4_n_0}),
        .O(NLW_insert0_carry__1_O_UNCONNECTED[3:0]),
        .S({insert0_carry__1_i_5_n_0,insert0_carry__1_i_6_n_0,insert0_carry__1_i_7_n_0,insert0_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    insert0_carry__1_i_1
       (.I0(local_reg_distance[22]),
        .I1(\local_reg_distance_reg[25]_0 [22]),
        .I2(\local_reg_distance_reg[25]_0 [23]),
        .I3(local_reg_distance[23]),
        .O(insert0_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    insert0_carry__1_i_2
       (.I0(local_reg_distance[20]),
        .I1(\local_reg_distance_reg[25]_0 [20]),
        .I2(\local_reg_distance_reg[25]_0 [21]),
        .I3(local_reg_distance[21]),
        .O(insert0_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    insert0_carry__1_i_3
       (.I0(local_reg_distance[18]),
        .I1(\local_reg_distance_reg[25]_0 [18]),
        .I2(\local_reg_distance_reg[25]_0 [19]),
        .I3(local_reg_distance[19]),
        .O(insert0_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    insert0_carry__1_i_4
       (.I0(local_reg_distance[16]),
        .I1(\local_reg_distance_reg[25]_0 [16]),
        .I2(\local_reg_distance_reg[25]_0 [17]),
        .I3(local_reg_distance[17]),
        .O(insert0_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    insert0_carry__1_i_5
       (.I0(\local_reg_distance_reg[25]_0 [23]),
        .I1(local_reg_distance[23]),
        .I2(\local_reg_distance_reg[25]_0 [22]),
        .I3(local_reg_distance[22]),
        .O(insert0_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    insert0_carry__1_i_6
       (.I0(\local_reg_distance_reg[25]_0 [21]),
        .I1(local_reg_distance[21]),
        .I2(\local_reg_distance_reg[25]_0 [20]),
        .I3(local_reg_distance[20]),
        .O(insert0_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    insert0_carry__1_i_7
       (.I0(\local_reg_distance_reg[25]_0 [19]),
        .I1(local_reg_distance[19]),
        .I2(\local_reg_distance_reg[25]_0 [18]),
        .I3(local_reg_distance[18]),
        .O(insert0_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    insert0_carry__1_i_8
       (.I0(\local_reg_distance_reg[25]_0 [17]),
        .I1(local_reg_distance[17]),
        .I2(\local_reg_distance_reg[25]_0 [16]),
        .I3(local_reg_distance[16]),
        .O(insert0_carry__1_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 insert0_carry__2
       (.CI(insert0_carry__1_n_0),
        .CO({NLW_insert0_carry__2_CO_UNCONNECTED[3:1],compared_1}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,insert0_carry__2_i_1_n_0}),
        .O(NLW_insert0_carry__2_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,insert0_carry__2_i_2_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    insert0_carry__2_i_1
       (.I0(local_reg_distance[24]),
        .I1(\local_reg_distance_reg[25]_0 [24]),
        .I2(\local_reg_distance_reg[25]_0 [25]),
        .I3(local_reg_distance[25]),
        .O(insert0_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    insert0_carry__2_i_2
       (.I0(\local_reg_distance_reg[25]_0 [25]),
        .I1(local_reg_distance[25]),
        .I2(\local_reg_distance_reg[25]_0 [24]),
        .I3(local_reg_distance[24]),
        .O(insert0_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    insert0_carry_i_1
       (.I0(local_reg_distance[6]),
        .I1(\local_reg_distance_reg[25]_0 [6]),
        .I2(\local_reg_distance_reg[25]_0 [7]),
        .I3(local_reg_distance[7]),
        .O(insert0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    insert0_carry_i_2
       (.I0(local_reg_distance[4]),
        .I1(\local_reg_distance_reg[25]_0 [4]),
        .I2(\local_reg_distance_reg[25]_0 [5]),
        .I3(local_reg_distance[5]),
        .O(insert0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    insert0_carry_i_3
       (.I0(local_reg_distance[2]),
        .I1(\local_reg_distance_reg[25]_0 [2]),
        .I2(\local_reg_distance_reg[25]_0 [3]),
        .I3(local_reg_distance[3]),
        .O(insert0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    insert0_carry_i_4
       (.I0(local_reg_distance[0]),
        .I1(\local_reg_distance_reg[25]_0 [0]),
        .I2(\local_reg_distance_reg[25]_0 [1]),
        .I3(local_reg_distance[1]),
        .O(insert0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    insert0_carry_i_5
       (.I0(\local_reg_distance_reg[25]_0 [7]),
        .I1(local_reg_distance[7]),
        .I2(\local_reg_distance_reg[25]_0 [6]),
        .I3(local_reg_distance[6]),
        .O(insert0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    insert0_carry_i_6
       (.I0(\local_reg_distance_reg[25]_0 [5]),
        .I1(local_reg_distance[5]),
        .I2(\local_reg_distance_reg[25]_0 [4]),
        .I3(local_reg_distance[4]),
        .O(insert0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    insert0_carry_i_7
       (.I0(\local_reg_distance_reg[25]_0 [3]),
        .I1(local_reg_distance[3]),
        .I2(\local_reg_distance_reg[25]_0 [2]),
        .I3(local_reg_distance[2]),
        .O(insert0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    insert0_carry_i_8
       (.I0(\local_reg_distance_reg[25]_0 [1]),
        .I1(local_reg_distance[1]),
        .I2(\local_reg_distance_reg[25]_0 [0]),
        .I3(local_reg_distance[0]),
        .O(insert0_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \led_OBUF[1]_inst_i_5 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\local_reg_class_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \led_OBUF[1]_inst_i_6 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\local_reg_class_reg[1]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \led_OBUF[1]_inst_i_7 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\local_reg_class_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \local_reg_class[0]_i_1 
       (.I0(\local_reg_class_reg[1]_1 [0]),
        .I1(compared_1),
        .I2(Q[0]),
        .O(\rclass_reg[1] [0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \local_reg_class[1]_i_1 
       (.I0(\local_reg_class_reg[1]_1 [1]),
        .I1(compared_1),
        .I2(Q[1]),
        .O(\rclass_reg[1] [1]));
  FDRE #(
    .INIT(1'b0)) 
    \local_reg_class_reg[0] 
       (.C(CLK),
        .CE(compared_1),
        .D(\local_reg_class_reg[1]_1 [0]),
        .Q(Q[0]),
        .R(SR));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \local_reg_class_reg[0]_lopt_replica 
       (.C(CLK),
        .CE(compared_1),
        .D(\local_reg_class_reg[1]_1 [0]),
        .Q(\local_reg_class_reg[0]_lopt_replica_1 ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \local_reg_class_reg[1] 
       (.C(CLK),
        .CE(compared_1),
        .D(\local_reg_class_reg[1]_1 [1]),
        .Q(Q[1]),
        .R(SR));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \local_reg_class_reg[1]_lopt_replica 
       (.C(CLK),
        .CE(compared_1),
        .D(\local_reg_class_reg[1]_1 [1]),
        .Q(\local_reg_class_reg[1]_lopt_replica_1 ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \local_reg_distance[0]_i_1 
       (.I0(\local_reg_distance_reg[25]_0 [0]),
        .I1(compared_1),
        .I2(local_reg_distance[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \local_reg_distance[10]_i_1 
       (.I0(\local_reg_distance_reg[25]_0 [10]),
        .I1(compared_1),
        .I2(local_reg_distance[10]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \local_reg_distance[11]_i_1 
       (.I0(\local_reg_distance_reg[25]_0 [11]),
        .I1(compared_1),
        .I2(local_reg_distance[11]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \local_reg_distance[12]_i_1 
       (.I0(\local_reg_distance_reg[25]_0 [12]),
        .I1(compared_1),
        .I2(local_reg_distance[12]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \local_reg_distance[13]_i_1 
       (.I0(\local_reg_distance_reg[25]_0 [13]),
        .I1(compared_1),
        .I2(local_reg_distance[13]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \local_reg_distance[14]_i_1 
       (.I0(\local_reg_distance_reg[25]_0 [14]),
        .I1(compared_1),
        .I2(local_reg_distance[14]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \local_reg_distance[15]_i_1 
       (.I0(\local_reg_distance_reg[25]_0 [15]),
        .I1(compared_1),
        .I2(local_reg_distance[15]),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \local_reg_distance[16]_i_1 
       (.I0(\local_reg_distance_reg[25]_0 [16]),
        .I1(compared_1),
        .I2(local_reg_distance[16]),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \local_reg_distance[17]_i_1 
       (.I0(\local_reg_distance_reg[25]_0 [17]),
        .I1(compared_1),
        .I2(local_reg_distance[17]),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \local_reg_distance[18]_i_1 
       (.I0(\local_reg_distance_reg[25]_0 [18]),
        .I1(compared_1),
        .I2(local_reg_distance[18]),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \local_reg_distance[19]_i_1 
       (.I0(\local_reg_distance_reg[25]_0 [19]),
        .I1(compared_1),
        .I2(local_reg_distance[19]),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \local_reg_distance[1]_i_1 
       (.I0(\local_reg_distance_reg[25]_0 [1]),
        .I1(compared_1),
        .I2(local_reg_distance[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \local_reg_distance[20]_i_1 
       (.I0(\local_reg_distance_reg[25]_0 [20]),
        .I1(compared_1),
        .I2(local_reg_distance[20]),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \local_reg_distance[21]_i_1 
       (.I0(\local_reg_distance_reg[25]_0 [21]),
        .I1(compared_1),
        .I2(local_reg_distance[21]),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \local_reg_distance[22]_i_1 
       (.I0(\local_reg_distance_reg[25]_0 [22]),
        .I1(compared_1),
        .I2(local_reg_distance[22]),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \local_reg_distance[23]_i_1 
       (.I0(\local_reg_distance_reg[25]_0 [23]),
        .I1(compared_1),
        .I2(local_reg_distance[23]),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \local_reg_distance[24]_i_1 
       (.I0(\local_reg_distance_reg[25]_0 [24]),
        .I1(compared_1),
        .I2(local_reg_distance[24]),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \local_reg_distance[25]_i_1 
       (.I0(\local_reg_distance_reg[25]_0 [25]),
        .I1(compared_1),
        .I2(local_reg_distance[25]),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \local_reg_distance[2]_i_1 
       (.I0(\local_reg_distance_reg[25]_0 [2]),
        .I1(compared_1),
        .I2(local_reg_distance[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \local_reg_distance[3]_i_1 
       (.I0(\local_reg_distance_reg[25]_0 [3]),
        .I1(compared_1),
        .I2(local_reg_distance[3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \local_reg_distance[4]_i_1 
       (.I0(\local_reg_distance_reg[25]_0 [4]),
        .I1(compared_1),
        .I2(local_reg_distance[4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \local_reg_distance[5]_i_1 
       (.I0(\local_reg_distance_reg[25]_0 [5]),
        .I1(compared_1),
        .I2(local_reg_distance[5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \local_reg_distance[6]_i_1 
       (.I0(\local_reg_distance_reg[25]_0 [6]),
        .I1(compared_1),
        .I2(local_reg_distance[6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \local_reg_distance[7]_i_1 
       (.I0(\local_reg_distance_reg[25]_0 [7]),
        .I1(compared_1),
        .I2(local_reg_distance[7]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \local_reg_distance[8]_i_1 
       (.I0(\local_reg_distance_reg[25]_0 [8]),
        .I1(compared_1),
        .I2(local_reg_distance[8]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \local_reg_distance[9]_i_1 
       (.I0(\local_reg_distance_reg[25]_0 [9]),
        .I1(compared_1),
        .I2(local_reg_distance[9]),
        .O(D[9]));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[0] 
       (.C(CLK),
        .CE(compared_1),
        .D(\local_reg_distance_reg[25]_0 [0]),
        .Q(local_reg_distance[0]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[10] 
       (.C(CLK),
        .CE(compared_1),
        .D(\local_reg_distance_reg[25]_0 [10]),
        .Q(local_reg_distance[10]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[11] 
       (.C(CLK),
        .CE(compared_1),
        .D(\local_reg_distance_reg[25]_0 [11]),
        .Q(local_reg_distance[11]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[12] 
       (.C(CLK),
        .CE(compared_1),
        .D(\local_reg_distance_reg[25]_0 [12]),
        .Q(local_reg_distance[12]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[13] 
       (.C(CLK),
        .CE(compared_1),
        .D(\local_reg_distance_reg[25]_0 [13]),
        .Q(local_reg_distance[13]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[14] 
       (.C(CLK),
        .CE(compared_1),
        .D(\local_reg_distance_reg[25]_0 [14]),
        .Q(local_reg_distance[14]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[15] 
       (.C(CLK),
        .CE(compared_1),
        .D(\local_reg_distance_reg[25]_0 [15]),
        .Q(local_reg_distance[15]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[16] 
       (.C(CLK),
        .CE(compared_1),
        .D(\local_reg_distance_reg[25]_0 [16]),
        .Q(local_reg_distance[16]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[17] 
       (.C(CLK),
        .CE(compared_1),
        .D(\local_reg_distance_reg[25]_0 [17]),
        .Q(local_reg_distance[17]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[18] 
       (.C(CLK),
        .CE(compared_1),
        .D(\local_reg_distance_reg[25]_0 [18]),
        .Q(local_reg_distance[18]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[19] 
       (.C(CLK),
        .CE(compared_1),
        .D(\local_reg_distance_reg[25]_0 [19]),
        .Q(local_reg_distance[19]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[1] 
       (.C(CLK),
        .CE(compared_1),
        .D(\local_reg_distance_reg[25]_0 [1]),
        .Q(local_reg_distance[1]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[20] 
       (.C(CLK),
        .CE(compared_1),
        .D(\local_reg_distance_reg[25]_0 [20]),
        .Q(local_reg_distance[20]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[21] 
       (.C(CLK),
        .CE(compared_1),
        .D(\local_reg_distance_reg[25]_0 [21]),
        .Q(local_reg_distance[21]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[22] 
       (.C(CLK),
        .CE(compared_1),
        .D(\local_reg_distance_reg[25]_0 [22]),
        .Q(local_reg_distance[22]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[23] 
       (.C(CLK),
        .CE(compared_1),
        .D(\local_reg_distance_reg[25]_0 [23]),
        .Q(local_reg_distance[23]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[24] 
       (.C(CLK),
        .CE(compared_1),
        .D(\local_reg_distance_reg[25]_0 [24]),
        .Q(local_reg_distance[24]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[25] 
       (.C(CLK),
        .CE(compared_1),
        .D(\local_reg_distance_reg[25]_0 [25]),
        .Q(local_reg_distance[25]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[2] 
       (.C(CLK),
        .CE(compared_1),
        .D(\local_reg_distance_reg[25]_0 [2]),
        .Q(local_reg_distance[2]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[3] 
       (.C(CLK),
        .CE(compared_1),
        .D(\local_reg_distance_reg[25]_0 [3]),
        .Q(local_reg_distance[3]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[4] 
       (.C(CLK),
        .CE(compared_1),
        .D(\local_reg_distance_reg[25]_0 [4]),
        .Q(local_reg_distance[4]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[5] 
       (.C(CLK),
        .CE(compared_1),
        .D(\local_reg_distance_reg[25]_0 [5]),
        .Q(local_reg_distance[5]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[6] 
       (.C(CLK),
        .CE(compared_1),
        .D(\local_reg_distance_reg[25]_0 [6]),
        .Q(local_reg_distance[6]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[7] 
       (.C(CLK),
        .CE(compared_1),
        .D(\local_reg_distance_reg[25]_0 [7]),
        .Q(local_reg_distance[7]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[8] 
       (.C(CLK),
        .CE(compared_1),
        .D(\local_reg_distance_reg[25]_0 [8]),
        .Q(local_reg_distance[8]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[9] 
       (.C(CLK),
        .CE(compared_1),
        .D(\local_reg_distance_reg[25]_0 [9]),
        .Q(local_reg_distance[9]),
        .S(SR));
endmodule

(* ORIG_REF_NAME = "insert_push_cell" *) 
module insert_push_cell_0
   (led_OBUF,
    Q,
    D,
    \rclass_reg[1] ,
    \led[10] ,
    \local_reg_distance_reg[25]_0 ,
    \local_reg_class_reg[1]_0 ,
    SR,
    \local_reg_distance_reg[25]_1 ,
    CLK,
    \local_reg_class_reg[1]_1 );
  output [1:0]led_OBUF;
  output [1:0]Q;
  output [25:0]D;
  output [1:0]\rclass_reg[1] ;
  input [0:0]\led[10] ;
  input [25:0]\local_reg_distance_reg[25]_0 ;
  input [1:0]\local_reg_class_reg[1]_0 ;
  input [0:0]SR;
  input [25:0]\local_reg_distance_reg[25]_1 ;
  input CLK;
  input [1:0]\local_reg_class_reg[1]_1 ;

  wire CLK;
  wire [25:0]D;
  wire [1:0]Q;
  wire [0:0]SR;
  wire compared_2;
  wire insert0_carry__0_i_1__0_n_0;
  wire insert0_carry__0_i_2__0_n_0;
  wire insert0_carry__0_i_3__0_n_0;
  wire insert0_carry__0_i_4__0_n_0;
  wire insert0_carry__0_i_5__0_n_0;
  wire insert0_carry__0_i_6__0_n_0;
  wire insert0_carry__0_i_7__0_n_0;
  wire insert0_carry__0_i_8__0_n_0;
  wire insert0_carry__0_n_0;
  wire insert0_carry__1_i_1__0_n_0;
  wire insert0_carry__1_i_2__0_n_0;
  wire insert0_carry__1_i_3__0_n_0;
  wire insert0_carry__1_i_4__0_n_0;
  wire insert0_carry__1_i_5__0_n_0;
  wire insert0_carry__1_i_6__0_n_0;
  wire insert0_carry__1_i_7__0_n_0;
  wire insert0_carry__1_i_8__0_n_0;
  wire insert0_carry__1_n_0;
  wire insert0_carry__2_i_1__0_n_0;
  wire insert0_carry__2_i_2__0_n_0;
  wire insert0_carry_i_1__0_n_0;
  wire insert0_carry_i_2__0_n_0;
  wire insert0_carry_i_3__0_n_0;
  wire insert0_carry_i_4__0_n_0;
  wire insert0_carry_i_5__0_n_0;
  wire insert0_carry_i_6__0_n_0;
  wire insert0_carry_i_7__0_n_0;
  wire insert0_carry_i_8__0_n_0;
  wire insert0_carry_n_0;
  wire [0:0]\led[10] ;
  wire [1:0]led_OBUF;
  wire [1:0]\local_reg_class_reg[1]_0 ;
  wire [1:0]\local_reg_class_reg[1]_1 ;
  wire [25:0]\local_reg_distance_reg[25]_0 ;
  wire [25:0]\local_reg_distance_reg[25]_1 ;
  wire \local_reg_distance_reg_n_0_[0] ;
  wire \local_reg_distance_reg_n_0_[10] ;
  wire \local_reg_distance_reg_n_0_[11] ;
  wire \local_reg_distance_reg_n_0_[12] ;
  wire \local_reg_distance_reg_n_0_[13] ;
  wire \local_reg_distance_reg_n_0_[14] ;
  wire \local_reg_distance_reg_n_0_[15] ;
  wire \local_reg_distance_reg_n_0_[16] ;
  wire \local_reg_distance_reg_n_0_[17] ;
  wire \local_reg_distance_reg_n_0_[18] ;
  wire \local_reg_distance_reg_n_0_[19] ;
  wire \local_reg_distance_reg_n_0_[1] ;
  wire \local_reg_distance_reg_n_0_[20] ;
  wire \local_reg_distance_reg_n_0_[21] ;
  wire \local_reg_distance_reg_n_0_[22] ;
  wire \local_reg_distance_reg_n_0_[23] ;
  wire \local_reg_distance_reg_n_0_[24] ;
  wire \local_reg_distance_reg_n_0_[25] ;
  wire \local_reg_distance_reg_n_0_[2] ;
  wire \local_reg_distance_reg_n_0_[3] ;
  wire \local_reg_distance_reg_n_0_[4] ;
  wire \local_reg_distance_reg_n_0_[5] ;
  wire \local_reg_distance_reg_n_0_[6] ;
  wire \local_reg_distance_reg_n_0_[7] ;
  wire \local_reg_distance_reg_n_0_[8] ;
  wire \local_reg_distance_reg_n_0_[9] ;
  wire [1:0]\rclass_reg[1] ;
  wire [2:0]NLW_insert0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_insert0_carry_O_UNCONNECTED;
  wire [2:0]NLW_insert0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_insert0_carry__0_O_UNCONNECTED;
  wire [2:0]NLW_insert0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_insert0_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_insert0_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_insert0_carry__2_O_UNCONNECTED;

  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 insert0_carry
       (.CI(1'b0),
        .CO({insert0_carry_n_0,NLW_insert0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({insert0_carry_i_1__0_n_0,insert0_carry_i_2__0_n_0,insert0_carry_i_3__0_n_0,insert0_carry_i_4__0_n_0}),
        .O(NLW_insert0_carry_O_UNCONNECTED[3:0]),
        .S({insert0_carry_i_5__0_n_0,insert0_carry_i_6__0_n_0,insert0_carry_i_7__0_n_0,insert0_carry_i_8__0_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 insert0_carry__0
       (.CI(insert0_carry_n_0),
        .CO({insert0_carry__0_n_0,NLW_insert0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({insert0_carry__0_i_1__0_n_0,insert0_carry__0_i_2__0_n_0,insert0_carry__0_i_3__0_n_0,insert0_carry__0_i_4__0_n_0}),
        .O(NLW_insert0_carry__0_O_UNCONNECTED[3:0]),
        .S({insert0_carry__0_i_5__0_n_0,insert0_carry__0_i_6__0_n_0,insert0_carry__0_i_7__0_n_0,insert0_carry__0_i_8__0_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    insert0_carry__0_i_1__0
       (.I0(\local_reg_distance_reg_n_0_[14] ),
        .I1(\local_reg_distance_reg[25]_0 [14]),
        .I2(\local_reg_distance_reg[25]_0 [15]),
        .I3(\local_reg_distance_reg_n_0_[15] ),
        .O(insert0_carry__0_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    insert0_carry__0_i_2__0
       (.I0(\local_reg_distance_reg_n_0_[12] ),
        .I1(\local_reg_distance_reg[25]_0 [12]),
        .I2(\local_reg_distance_reg[25]_0 [13]),
        .I3(\local_reg_distance_reg_n_0_[13] ),
        .O(insert0_carry__0_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    insert0_carry__0_i_3__0
       (.I0(\local_reg_distance_reg_n_0_[10] ),
        .I1(\local_reg_distance_reg[25]_0 [10]),
        .I2(\local_reg_distance_reg[25]_0 [11]),
        .I3(\local_reg_distance_reg_n_0_[11] ),
        .O(insert0_carry__0_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    insert0_carry__0_i_4__0
       (.I0(\local_reg_distance_reg_n_0_[8] ),
        .I1(\local_reg_distance_reg[25]_0 [8]),
        .I2(\local_reg_distance_reg[25]_0 [9]),
        .I3(\local_reg_distance_reg_n_0_[9] ),
        .O(insert0_carry__0_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    insert0_carry__0_i_5__0
       (.I0(\local_reg_distance_reg[25]_0 [15]),
        .I1(\local_reg_distance_reg_n_0_[15] ),
        .I2(\local_reg_distance_reg_n_0_[14] ),
        .I3(\local_reg_distance_reg[25]_0 [14]),
        .O(insert0_carry__0_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    insert0_carry__0_i_6__0
       (.I0(\local_reg_distance_reg[25]_0 [13]),
        .I1(\local_reg_distance_reg_n_0_[13] ),
        .I2(\local_reg_distance_reg_n_0_[12] ),
        .I3(\local_reg_distance_reg[25]_0 [12]),
        .O(insert0_carry__0_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    insert0_carry__0_i_7__0
       (.I0(\local_reg_distance_reg[25]_0 [11]),
        .I1(\local_reg_distance_reg_n_0_[11] ),
        .I2(\local_reg_distance_reg_n_0_[10] ),
        .I3(\local_reg_distance_reg[25]_0 [10]),
        .O(insert0_carry__0_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    insert0_carry__0_i_8__0
       (.I0(\local_reg_distance_reg[25]_0 [9]),
        .I1(\local_reg_distance_reg_n_0_[9] ),
        .I2(\local_reg_distance_reg_n_0_[8] ),
        .I3(\local_reg_distance_reg[25]_0 [8]),
        .O(insert0_carry__0_i_8__0_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 insert0_carry__1
       (.CI(insert0_carry__0_n_0),
        .CO({insert0_carry__1_n_0,NLW_insert0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({insert0_carry__1_i_1__0_n_0,insert0_carry__1_i_2__0_n_0,insert0_carry__1_i_3__0_n_0,insert0_carry__1_i_4__0_n_0}),
        .O(NLW_insert0_carry__1_O_UNCONNECTED[3:0]),
        .S({insert0_carry__1_i_5__0_n_0,insert0_carry__1_i_6__0_n_0,insert0_carry__1_i_7__0_n_0,insert0_carry__1_i_8__0_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    insert0_carry__1_i_1__0
       (.I0(\local_reg_distance_reg_n_0_[22] ),
        .I1(\local_reg_distance_reg[25]_0 [22]),
        .I2(\local_reg_distance_reg[25]_0 [23]),
        .I3(\local_reg_distance_reg_n_0_[23] ),
        .O(insert0_carry__1_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    insert0_carry__1_i_2__0
       (.I0(\local_reg_distance_reg_n_0_[20] ),
        .I1(\local_reg_distance_reg[25]_0 [20]),
        .I2(\local_reg_distance_reg[25]_0 [21]),
        .I3(\local_reg_distance_reg_n_0_[21] ),
        .O(insert0_carry__1_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    insert0_carry__1_i_3__0
       (.I0(\local_reg_distance_reg_n_0_[18] ),
        .I1(\local_reg_distance_reg[25]_0 [18]),
        .I2(\local_reg_distance_reg[25]_0 [19]),
        .I3(\local_reg_distance_reg_n_0_[19] ),
        .O(insert0_carry__1_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    insert0_carry__1_i_4__0
       (.I0(\local_reg_distance_reg_n_0_[16] ),
        .I1(\local_reg_distance_reg[25]_0 [16]),
        .I2(\local_reg_distance_reg[25]_0 [17]),
        .I3(\local_reg_distance_reg_n_0_[17] ),
        .O(insert0_carry__1_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    insert0_carry__1_i_5__0
       (.I0(\local_reg_distance_reg[25]_0 [23]),
        .I1(\local_reg_distance_reg_n_0_[23] ),
        .I2(\local_reg_distance_reg_n_0_[22] ),
        .I3(\local_reg_distance_reg[25]_0 [22]),
        .O(insert0_carry__1_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    insert0_carry__1_i_6__0
       (.I0(\local_reg_distance_reg[25]_0 [21]),
        .I1(\local_reg_distance_reg_n_0_[21] ),
        .I2(\local_reg_distance_reg_n_0_[20] ),
        .I3(\local_reg_distance_reg[25]_0 [20]),
        .O(insert0_carry__1_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    insert0_carry__1_i_7__0
       (.I0(\local_reg_distance_reg[25]_0 [19]),
        .I1(\local_reg_distance_reg_n_0_[19] ),
        .I2(\local_reg_distance_reg_n_0_[18] ),
        .I3(\local_reg_distance_reg[25]_0 [18]),
        .O(insert0_carry__1_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    insert0_carry__1_i_8__0
       (.I0(\local_reg_distance_reg[25]_0 [17]),
        .I1(\local_reg_distance_reg_n_0_[17] ),
        .I2(\local_reg_distance_reg_n_0_[16] ),
        .I3(\local_reg_distance_reg[25]_0 [16]),
        .O(insert0_carry__1_i_8__0_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 insert0_carry__2
       (.CI(insert0_carry__1_n_0),
        .CO({NLW_insert0_carry__2_CO_UNCONNECTED[3:1],compared_2}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,insert0_carry__2_i_1__0_n_0}),
        .O(NLW_insert0_carry__2_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,insert0_carry__2_i_2__0_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    insert0_carry__2_i_1__0
       (.I0(\local_reg_distance_reg_n_0_[24] ),
        .I1(\local_reg_distance_reg[25]_0 [24]),
        .I2(\local_reg_distance_reg[25]_0 [25]),
        .I3(\local_reg_distance_reg_n_0_[25] ),
        .O(insert0_carry__2_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    insert0_carry__2_i_2__0
       (.I0(\local_reg_distance_reg[25]_0 [25]),
        .I1(\local_reg_distance_reg_n_0_[25] ),
        .I2(\local_reg_distance_reg_n_0_[24] ),
        .I3(\local_reg_distance_reg[25]_0 [24]),
        .O(insert0_carry__2_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    insert0_carry_i_1__0
       (.I0(\local_reg_distance_reg_n_0_[6] ),
        .I1(\local_reg_distance_reg[25]_0 [6]),
        .I2(\local_reg_distance_reg[25]_0 [7]),
        .I3(\local_reg_distance_reg_n_0_[7] ),
        .O(insert0_carry_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    insert0_carry_i_2__0
       (.I0(\local_reg_distance_reg_n_0_[4] ),
        .I1(\local_reg_distance_reg[25]_0 [4]),
        .I2(\local_reg_distance_reg[25]_0 [5]),
        .I3(\local_reg_distance_reg_n_0_[5] ),
        .O(insert0_carry_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    insert0_carry_i_3__0
       (.I0(\local_reg_distance_reg_n_0_[2] ),
        .I1(\local_reg_distance_reg[25]_0 [2]),
        .I2(\local_reg_distance_reg[25]_0 [3]),
        .I3(\local_reg_distance_reg_n_0_[3] ),
        .O(insert0_carry_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    insert0_carry_i_4__0
       (.I0(\local_reg_distance_reg_n_0_[0] ),
        .I1(\local_reg_distance_reg[25]_0 [0]),
        .I2(\local_reg_distance_reg[25]_0 [1]),
        .I3(\local_reg_distance_reg_n_0_[1] ),
        .O(insert0_carry_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    insert0_carry_i_5__0
       (.I0(\local_reg_distance_reg[25]_0 [7]),
        .I1(\local_reg_distance_reg_n_0_[7] ),
        .I2(\local_reg_distance_reg_n_0_[6] ),
        .I3(\local_reg_distance_reg[25]_0 [6]),
        .O(insert0_carry_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    insert0_carry_i_6__0
       (.I0(\local_reg_distance_reg[25]_0 [5]),
        .I1(\local_reg_distance_reg_n_0_[5] ),
        .I2(\local_reg_distance_reg_n_0_[4] ),
        .I3(\local_reg_distance_reg[25]_0 [4]),
        .O(insert0_carry_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    insert0_carry_i_7__0
       (.I0(\local_reg_distance_reg[25]_0 [3]),
        .I1(\local_reg_distance_reg_n_0_[3] ),
        .I2(\local_reg_distance_reg_n_0_[2] ),
        .I3(\local_reg_distance_reg[25]_0 [2]),
        .O(insert0_carry_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    insert0_carry_i_8__0
       (.I0(\local_reg_distance_reg[25]_0 [1]),
        .I1(\local_reg_distance_reg_n_0_[1] ),
        .I2(\local_reg_distance_reg_n_0_[0] ),
        .I3(\local_reg_distance_reg[25]_0 [0]),
        .O(insert0_carry_i_8__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \led_OBUF[10]_inst_i_1 
       (.I0(\led[10] ),
        .I1(Q[0]),
        .O(led_OBUF[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \led_OBUF[11]_inst_i_1 
       (.I0(\led[10] ),
        .I1(Q[1]),
        .O(led_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \local_reg_class[0]_i_1__0 
       (.I0(\local_reg_class_reg[1]_0 [0]),
        .I1(compared_2),
        .I2(Q[0]),
        .O(\rclass_reg[1] [0]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \local_reg_class[1]_i_1__0 
       (.I0(\local_reg_class_reg[1]_0 [1]),
        .I1(compared_2),
        .I2(Q[1]),
        .O(\rclass_reg[1] [1]));
  FDRE #(
    .INIT(1'b0)) 
    \local_reg_class_reg[0] 
       (.C(CLK),
        .CE(compared_2),
        .D(\local_reg_class_reg[1]_1 [0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \local_reg_class_reg[1] 
       (.C(CLK),
        .CE(compared_2),
        .D(\local_reg_class_reg[1]_1 [1]),
        .Q(Q[1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \local_reg_distance[0]_i_1__0 
       (.I0(\local_reg_distance_reg[25]_0 [0]),
        .I1(compared_2),
        .I2(\local_reg_distance_reg_n_0_[0] ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \local_reg_distance[10]_i_1__0 
       (.I0(\local_reg_distance_reg[25]_0 [10]),
        .I1(compared_2),
        .I2(\local_reg_distance_reg_n_0_[10] ),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \local_reg_distance[11]_i_1__0 
       (.I0(\local_reg_distance_reg[25]_0 [11]),
        .I1(compared_2),
        .I2(\local_reg_distance_reg_n_0_[11] ),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \local_reg_distance[12]_i_1__0 
       (.I0(\local_reg_distance_reg[25]_0 [12]),
        .I1(compared_2),
        .I2(\local_reg_distance_reg_n_0_[12] ),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \local_reg_distance[13]_i_1__0 
       (.I0(\local_reg_distance_reg[25]_0 [13]),
        .I1(compared_2),
        .I2(\local_reg_distance_reg_n_0_[13] ),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \local_reg_distance[14]_i_1__0 
       (.I0(\local_reg_distance_reg[25]_0 [14]),
        .I1(compared_2),
        .I2(\local_reg_distance_reg_n_0_[14] ),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \local_reg_distance[15]_i_1__0 
       (.I0(\local_reg_distance_reg[25]_0 [15]),
        .I1(compared_2),
        .I2(\local_reg_distance_reg_n_0_[15] ),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \local_reg_distance[16]_i_1__0 
       (.I0(\local_reg_distance_reg[25]_0 [16]),
        .I1(compared_2),
        .I2(\local_reg_distance_reg_n_0_[16] ),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \local_reg_distance[17]_i_1__0 
       (.I0(\local_reg_distance_reg[25]_0 [17]),
        .I1(compared_2),
        .I2(\local_reg_distance_reg_n_0_[17] ),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \local_reg_distance[18]_i_1__0 
       (.I0(\local_reg_distance_reg[25]_0 [18]),
        .I1(compared_2),
        .I2(\local_reg_distance_reg_n_0_[18] ),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \local_reg_distance[19]_i_1__0 
       (.I0(\local_reg_distance_reg[25]_0 [19]),
        .I1(compared_2),
        .I2(\local_reg_distance_reg_n_0_[19] ),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \local_reg_distance[1]_i_1__0 
       (.I0(\local_reg_distance_reg[25]_0 [1]),
        .I1(compared_2),
        .I2(\local_reg_distance_reg_n_0_[1] ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \local_reg_distance[20]_i_1__0 
       (.I0(\local_reg_distance_reg[25]_0 [20]),
        .I1(compared_2),
        .I2(\local_reg_distance_reg_n_0_[20] ),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \local_reg_distance[21]_i_1__0 
       (.I0(\local_reg_distance_reg[25]_0 [21]),
        .I1(compared_2),
        .I2(\local_reg_distance_reg_n_0_[21] ),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \local_reg_distance[22]_i_1__0 
       (.I0(\local_reg_distance_reg[25]_0 [22]),
        .I1(compared_2),
        .I2(\local_reg_distance_reg_n_0_[22] ),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \local_reg_distance[23]_i_1__0 
       (.I0(\local_reg_distance_reg[25]_0 [23]),
        .I1(compared_2),
        .I2(\local_reg_distance_reg_n_0_[23] ),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \local_reg_distance[24]_i_1__0 
       (.I0(\local_reg_distance_reg[25]_0 [24]),
        .I1(compared_2),
        .I2(\local_reg_distance_reg_n_0_[24] ),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \local_reg_distance[25]_i_1__0 
       (.I0(\local_reg_distance_reg[25]_0 [25]),
        .I1(compared_2),
        .I2(\local_reg_distance_reg_n_0_[25] ),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \local_reg_distance[2]_i_1__0 
       (.I0(\local_reg_distance_reg[25]_0 [2]),
        .I1(compared_2),
        .I2(\local_reg_distance_reg_n_0_[2] ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \local_reg_distance[3]_i_1__0 
       (.I0(\local_reg_distance_reg[25]_0 [3]),
        .I1(compared_2),
        .I2(\local_reg_distance_reg_n_0_[3] ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \local_reg_distance[4]_i_1__0 
       (.I0(\local_reg_distance_reg[25]_0 [4]),
        .I1(compared_2),
        .I2(\local_reg_distance_reg_n_0_[4] ),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \local_reg_distance[5]_i_1__0 
       (.I0(\local_reg_distance_reg[25]_0 [5]),
        .I1(compared_2),
        .I2(\local_reg_distance_reg_n_0_[5] ),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \local_reg_distance[6]_i_1__0 
       (.I0(\local_reg_distance_reg[25]_0 [6]),
        .I1(compared_2),
        .I2(\local_reg_distance_reg_n_0_[6] ),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \local_reg_distance[7]_i_1__0 
       (.I0(\local_reg_distance_reg[25]_0 [7]),
        .I1(compared_2),
        .I2(\local_reg_distance_reg_n_0_[7] ),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \local_reg_distance[8]_i_1__0 
       (.I0(\local_reg_distance_reg[25]_0 [8]),
        .I1(compared_2),
        .I2(\local_reg_distance_reg_n_0_[8] ),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \local_reg_distance[9]_i_1__0 
       (.I0(\local_reg_distance_reg[25]_0 [9]),
        .I1(compared_2),
        .I2(\local_reg_distance_reg_n_0_[9] ),
        .O(D[9]));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[0] 
       (.C(CLK),
        .CE(compared_2),
        .D(\local_reg_distance_reg[25]_1 [0]),
        .Q(\local_reg_distance_reg_n_0_[0] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[10] 
       (.C(CLK),
        .CE(compared_2),
        .D(\local_reg_distance_reg[25]_1 [10]),
        .Q(\local_reg_distance_reg_n_0_[10] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[11] 
       (.C(CLK),
        .CE(compared_2),
        .D(\local_reg_distance_reg[25]_1 [11]),
        .Q(\local_reg_distance_reg_n_0_[11] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[12] 
       (.C(CLK),
        .CE(compared_2),
        .D(\local_reg_distance_reg[25]_1 [12]),
        .Q(\local_reg_distance_reg_n_0_[12] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[13] 
       (.C(CLK),
        .CE(compared_2),
        .D(\local_reg_distance_reg[25]_1 [13]),
        .Q(\local_reg_distance_reg_n_0_[13] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[14] 
       (.C(CLK),
        .CE(compared_2),
        .D(\local_reg_distance_reg[25]_1 [14]),
        .Q(\local_reg_distance_reg_n_0_[14] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[15] 
       (.C(CLK),
        .CE(compared_2),
        .D(\local_reg_distance_reg[25]_1 [15]),
        .Q(\local_reg_distance_reg_n_0_[15] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[16] 
       (.C(CLK),
        .CE(compared_2),
        .D(\local_reg_distance_reg[25]_1 [16]),
        .Q(\local_reg_distance_reg_n_0_[16] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[17] 
       (.C(CLK),
        .CE(compared_2),
        .D(\local_reg_distance_reg[25]_1 [17]),
        .Q(\local_reg_distance_reg_n_0_[17] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[18] 
       (.C(CLK),
        .CE(compared_2),
        .D(\local_reg_distance_reg[25]_1 [18]),
        .Q(\local_reg_distance_reg_n_0_[18] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[19] 
       (.C(CLK),
        .CE(compared_2),
        .D(\local_reg_distance_reg[25]_1 [19]),
        .Q(\local_reg_distance_reg_n_0_[19] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[1] 
       (.C(CLK),
        .CE(compared_2),
        .D(\local_reg_distance_reg[25]_1 [1]),
        .Q(\local_reg_distance_reg_n_0_[1] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[20] 
       (.C(CLK),
        .CE(compared_2),
        .D(\local_reg_distance_reg[25]_1 [20]),
        .Q(\local_reg_distance_reg_n_0_[20] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[21] 
       (.C(CLK),
        .CE(compared_2),
        .D(\local_reg_distance_reg[25]_1 [21]),
        .Q(\local_reg_distance_reg_n_0_[21] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[22] 
       (.C(CLK),
        .CE(compared_2),
        .D(\local_reg_distance_reg[25]_1 [22]),
        .Q(\local_reg_distance_reg_n_0_[22] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[23] 
       (.C(CLK),
        .CE(compared_2),
        .D(\local_reg_distance_reg[25]_1 [23]),
        .Q(\local_reg_distance_reg_n_0_[23] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[24] 
       (.C(CLK),
        .CE(compared_2),
        .D(\local_reg_distance_reg[25]_1 [24]),
        .Q(\local_reg_distance_reg_n_0_[24] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[25] 
       (.C(CLK),
        .CE(compared_2),
        .D(\local_reg_distance_reg[25]_1 [25]),
        .Q(\local_reg_distance_reg_n_0_[25] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[2] 
       (.C(CLK),
        .CE(compared_2),
        .D(\local_reg_distance_reg[25]_1 [2]),
        .Q(\local_reg_distance_reg_n_0_[2] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[3] 
       (.C(CLK),
        .CE(compared_2),
        .D(\local_reg_distance_reg[25]_1 [3]),
        .Q(\local_reg_distance_reg_n_0_[3] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[4] 
       (.C(CLK),
        .CE(compared_2),
        .D(\local_reg_distance_reg[25]_1 [4]),
        .Q(\local_reg_distance_reg_n_0_[4] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[5] 
       (.C(CLK),
        .CE(compared_2),
        .D(\local_reg_distance_reg[25]_1 [5]),
        .Q(\local_reg_distance_reg_n_0_[5] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[6] 
       (.C(CLK),
        .CE(compared_2),
        .D(\local_reg_distance_reg[25]_1 [6]),
        .Q(\local_reg_distance_reg_n_0_[6] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[7] 
       (.C(CLK),
        .CE(compared_2),
        .D(\local_reg_distance_reg[25]_1 [7]),
        .Q(\local_reg_distance_reg_n_0_[7] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[8] 
       (.C(CLK),
        .CE(compared_2),
        .D(\local_reg_distance_reg[25]_1 [8]),
        .Q(\local_reg_distance_reg_n_0_[8] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[9] 
       (.C(CLK),
        .CE(compared_2),
        .D(\local_reg_distance_reg[25]_1 [9]),
        .Q(\local_reg_distance_reg_n_0_[9] ),
        .S(SR));
endmodule

(* ORIG_REF_NAME = "insert_push_cell" *) 
module insert_push_cell_1
   (\FSM_sequential_currstate_reg[1] ,
    led_OBUF,
    oper,
    Q,
    \led[0] ,
    \led_OBUF[2]_inst_i_1_0 ,
    \led_OBUF[1]_inst_i_1_0 ,
    \led_OBUF[1]_inst_i_1_1 ,
    \led_OBUF[1]_inst_i_1_2 ,
    \local_reg_class_reg[0]_0 ,
    SR,
    D,
    CLK,
    \local_reg_class_reg[1]_0 );
  output \FSM_sequential_currstate_reg[1] ;
  output [4:0]led_OBUF;
  input oper;
  input [1:0]Q;
  input [0:0]\led[0] ;
  input [1:0]\led_OBUF[2]_inst_i_1_0 ;
  input \led_OBUF[1]_inst_i_1_0 ;
  input \led_OBUF[1]_inst_i_1_1 ;
  input \led_OBUF[1]_inst_i_1_2 ;
  input [25:0]\local_reg_class_reg[0]_0 ;
  input [0:0]SR;
  input [25:0]D;
  input CLK;
  input [1:0]\local_reg_class_reg[1]_0 ;

  wire CLK;
  wire [25:0]D;
  wire \FSM_sequential_currstate_reg[1] ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [0:0]flower_class3;
  wire flower_class314_out;
  wire flower_class318_out;
  wire flower_class31__10;
  wire insert0_carry__0_i_1__1_n_0;
  wire insert0_carry__0_i_2__1_n_0;
  wire insert0_carry__0_i_3__1_n_0;
  wire insert0_carry__0_i_4__1_n_0;
  wire insert0_carry__0_i_5__1_n_0;
  wire insert0_carry__0_i_6__1_n_0;
  wire insert0_carry__0_i_7__1_n_0;
  wire insert0_carry__0_i_8__1_n_0;
  wire insert0_carry__0_n_0;
  wire insert0_carry__1_i_1__1_n_0;
  wire insert0_carry__1_i_2__1_n_0;
  wire insert0_carry__1_i_3__1_n_0;
  wire insert0_carry__1_i_4__1_n_0;
  wire insert0_carry__1_i_5__1_n_0;
  wire insert0_carry__1_i_6__1_n_0;
  wire insert0_carry__1_i_7__1_n_0;
  wire insert0_carry__1_i_8__1_n_0;
  wire insert0_carry__1_n_0;
  wire insert0_carry__2_i_1__1_n_0;
  wire insert0_carry__2_i_2__1_n_0;
  wire insert0_carry__2_n_3;
  wire insert0_carry_i_1__1_n_0;
  wire insert0_carry_i_2__1_n_0;
  wire insert0_carry_i_3__1_n_0;
  wire insert0_carry_i_4__1_n_0;
  wire insert0_carry_i_5__1_n_0;
  wire insert0_carry_i_6__1_n_0;
  wire insert0_carry_i_7__1_n_0;
  wire insert0_carry_i_8__1_n_0;
  wire insert0_carry_n_0;
  wire [0:0]\led[0] ;
  wire [4:0]led_OBUF;
  wire \led_OBUF[1]_inst_i_1_0 ;
  wire \led_OBUF[1]_inst_i_1_1 ;
  wire \led_OBUF[1]_inst_i_1_2 ;
  wire [1:0]\led_OBUF[2]_inst_i_1_0 ;
  wire [25:0]\local_reg_class_reg[0]_0 ;
  wire [1:0]\local_reg_class_reg[1]_0 ;
  wire \local_reg_distance_reg_n_0_[0] ;
  wire \local_reg_distance_reg_n_0_[10] ;
  wire \local_reg_distance_reg_n_0_[11] ;
  wire \local_reg_distance_reg_n_0_[12] ;
  wire \local_reg_distance_reg_n_0_[13] ;
  wire \local_reg_distance_reg_n_0_[14] ;
  wire \local_reg_distance_reg_n_0_[15] ;
  wire \local_reg_distance_reg_n_0_[16] ;
  wire \local_reg_distance_reg_n_0_[17] ;
  wire \local_reg_distance_reg_n_0_[18] ;
  wire \local_reg_distance_reg_n_0_[19] ;
  wire \local_reg_distance_reg_n_0_[1] ;
  wire \local_reg_distance_reg_n_0_[20] ;
  wire \local_reg_distance_reg_n_0_[21] ;
  wire \local_reg_distance_reg_n_0_[22] ;
  wire \local_reg_distance_reg_n_0_[23] ;
  wire \local_reg_distance_reg_n_0_[24] ;
  wire \local_reg_distance_reg_n_0_[25] ;
  wire \local_reg_distance_reg_n_0_[2] ;
  wire \local_reg_distance_reg_n_0_[3] ;
  wire \local_reg_distance_reg_n_0_[4] ;
  wire \local_reg_distance_reg_n_0_[5] ;
  wire \local_reg_distance_reg_n_0_[6] ;
  wire \local_reg_distance_reg_n_0_[7] ;
  wire \local_reg_distance_reg_n_0_[8] ;
  wire \local_reg_distance_reg_n_0_[9] ;
  wire oper;
  wire [1:0]\wires_classes[3]_1 ;
  wire [2:0]NLW_insert0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_insert0_carry_O_UNCONNECTED;
  wire [2:0]NLW_insert0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_insert0_carry__0_O_UNCONNECTED;
  wire [2:0]NLW_insert0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_insert0_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_insert0_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_insert0_carry__2_O_UNCONNECTED;

  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 insert0_carry
       (.CI(1'b0),
        .CO({insert0_carry_n_0,NLW_insert0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({insert0_carry_i_1__1_n_0,insert0_carry_i_2__1_n_0,insert0_carry_i_3__1_n_0,insert0_carry_i_4__1_n_0}),
        .O(NLW_insert0_carry_O_UNCONNECTED[3:0]),
        .S({insert0_carry_i_5__1_n_0,insert0_carry_i_6__1_n_0,insert0_carry_i_7__1_n_0,insert0_carry_i_8__1_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 insert0_carry__0
       (.CI(insert0_carry_n_0),
        .CO({insert0_carry__0_n_0,NLW_insert0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({insert0_carry__0_i_1__1_n_0,insert0_carry__0_i_2__1_n_0,insert0_carry__0_i_3__1_n_0,insert0_carry__0_i_4__1_n_0}),
        .O(NLW_insert0_carry__0_O_UNCONNECTED[3:0]),
        .S({insert0_carry__0_i_5__1_n_0,insert0_carry__0_i_6__1_n_0,insert0_carry__0_i_7__1_n_0,insert0_carry__0_i_8__1_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    insert0_carry__0_i_1__1
       (.I0(\local_reg_distance_reg_n_0_[14] ),
        .I1(\local_reg_class_reg[0]_0 [14]),
        .I2(\local_reg_class_reg[0]_0 [15]),
        .I3(\local_reg_distance_reg_n_0_[15] ),
        .O(insert0_carry__0_i_1__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    insert0_carry__0_i_2__1
       (.I0(\local_reg_distance_reg_n_0_[12] ),
        .I1(\local_reg_class_reg[0]_0 [12]),
        .I2(\local_reg_class_reg[0]_0 [13]),
        .I3(\local_reg_distance_reg_n_0_[13] ),
        .O(insert0_carry__0_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    insert0_carry__0_i_3__1
       (.I0(\local_reg_distance_reg_n_0_[10] ),
        .I1(\local_reg_class_reg[0]_0 [10]),
        .I2(\local_reg_class_reg[0]_0 [11]),
        .I3(\local_reg_distance_reg_n_0_[11] ),
        .O(insert0_carry__0_i_3__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    insert0_carry__0_i_4__1
       (.I0(\local_reg_distance_reg_n_0_[8] ),
        .I1(\local_reg_class_reg[0]_0 [8]),
        .I2(\local_reg_class_reg[0]_0 [9]),
        .I3(\local_reg_distance_reg_n_0_[9] ),
        .O(insert0_carry__0_i_4__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    insert0_carry__0_i_5__1
       (.I0(\local_reg_class_reg[0]_0 [15]),
        .I1(\local_reg_distance_reg_n_0_[15] ),
        .I2(\local_reg_distance_reg_n_0_[14] ),
        .I3(\local_reg_class_reg[0]_0 [14]),
        .O(insert0_carry__0_i_5__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    insert0_carry__0_i_6__1
       (.I0(\local_reg_class_reg[0]_0 [13]),
        .I1(\local_reg_distance_reg_n_0_[13] ),
        .I2(\local_reg_distance_reg_n_0_[12] ),
        .I3(\local_reg_class_reg[0]_0 [12]),
        .O(insert0_carry__0_i_6__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    insert0_carry__0_i_7__1
       (.I0(\local_reg_class_reg[0]_0 [11]),
        .I1(\local_reg_distance_reg_n_0_[11] ),
        .I2(\local_reg_distance_reg_n_0_[10] ),
        .I3(\local_reg_class_reg[0]_0 [10]),
        .O(insert0_carry__0_i_7__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    insert0_carry__0_i_8__1
       (.I0(\local_reg_class_reg[0]_0 [9]),
        .I1(\local_reg_distance_reg_n_0_[9] ),
        .I2(\local_reg_distance_reg_n_0_[8] ),
        .I3(\local_reg_class_reg[0]_0 [8]),
        .O(insert0_carry__0_i_8__1_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 insert0_carry__1
       (.CI(insert0_carry__0_n_0),
        .CO({insert0_carry__1_n_0,NLW_insert0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({insert0_carry__1_i_1__1_n_0,insert0_carry__1_i_2__1_n_0,insert0_carry__1_i_3__1_n_0,insert0_carry__1_i_4__1_n_0}),
        .O(NLW_insert0_carry__1_O_UNCONNECTED[3:0]),
        .S({insert0_carry__1_i_5__1_n_0,insert0_carry__1_i_6__1_n_0,insert0_carry__1_i_7__1_n_0,insert0_carry__1_i_8__1_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    insert0_carry__1_i_1__1
       (.I0(\local_reg_distance_reg_n_0_[22] ),
        .I1(\local_reg_class_reg[0]_0 [22]),
        .I2(\local_reg_class_reg[0]_0 [23]),
        .I3(\local_reg_distance_reg_n_0_[23] ),
        .O(insert0_carry__1_i_1__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    insert0_carry__1_i_2__1
       (.I0(\local_reg_distance_reg_n_0_[20] ),
        .I1(\local_reg_class_reg[0]_0 [20]),
        .I2(\local_reg_class_reg[0]_0 [21]),
        .I3(\local_reg_distance_reg_n_0_[21] ),
        .O(insert0_carry__1_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    insert0_carry__1_i_3__1
       (.I0(\local_reg_distance_reg_n_0_[18] ),
        .I1(\local_reg_class_reg[0]_0 [18]),
        .I2(\local_reg_class_reg[0]_0 [19]),
        .I3(\local_reg_distance_reg_n_0_[19] ),
        .O(insert0_carry__1_i_3__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    insert0_carry__1_i_4__1
       (.I0(\local_reg_distance_reg_n_0_[16] ),
        .I1(\local_reg_class_reg[0]_0 [16]),
        .I2(\local_reg_class_reg[0]_0 [17]),
        .I3(\local_reg_distance_reg_n_0_[17] ),
        .O(insert0_carry__1_i_4__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    insert0_carry__1_i_5__1
       (.I0(\local_reg_class_reg[0]_0 [23]),
        .I1(\local_reg_distance_reg_n_0_[23] ),
        .I2(\local_reg_distance_reg_n_0_[22] ),
        .I3(\local_reg_class_reg[0]_0 [22]),
        .O(insert0_carry__1_i_5__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    insert0_carry__1_i_6__1
       (.I0(\local_reg_class_reg[0]_0 [21]),
        .I1(\local_reg_distance_reg_n_0_[21] ),
        .I2(\local_reg_distance_reg_n_0_[20] ),
        .I3(\local_reg_class_reg[0]_0 [20]),
        .O(insert0_carry__1_i_6__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    insert0_carry__1_i_7__1
       (.I0(\local_reg_class_reg[0]_0 [19]),
        .I1(\local_reg_distance_reg_n_0_[19] ),
        .I2(\local_reg_distance_reg_n_0_[18] ),
        .I3(\local_reg_class_reg[0]_0 [18]),
        .O(insert0_carry__1_i_7__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    insert0_carry__1_i_8__1
       (.I0(\local_reg_class_reg[0]_0 [17]),
        .I1(\local_reg_distance_reg_n_0_[17] ),
        .I2(\local_reg_distance_reg_n_0_[16] ),
        .I3(\local_reg_class_reg[0]_0 [16]),
        .O(insert0_carry__1_i_8__1_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 insert0_carry__2
       (.CI(insert0_carry__1_n_0),
        .CO({NLW_insert0_carry__2_CO_UNCONNECTED[3:1],insert0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,insert0_carry__2_i_1__1_n_0}),
        .O(NLW_insert0_carry__2_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,insert0_carry__2_i_2__1_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    insert0_carry__2_i_1__1
       (.I0(\local_reg_distance_reg_n_0_[24] ),
        .I1(\local_reg_class_reg[0]_0 [24]),
        .I2(\local_reg_class_reg[0]_0 [25]),
        .I3(\local_reg_distance_reg_n_0_[25] ),
        .O(insert0_carry__2_i_1__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    insert0_carry__2_i_2__1
       (.I0(\local_reg_class_reg[0]_0 [25]),
        .I1(\local_reg_distance_reg_n_0_[25] ),
        .I2(\local_reg_distance_reg_n_0_[24] ),
        .I3(\local_reg_class_reg[0]_0 [24]),
        .O(insert0_carry__2_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    insert0_carry_i_1__1
       (.I0(\local_reg_distance_reg_n_0_[6] ),
        .I1(\local_reg_class_reg[0]_0 [6]),
        .I2(\local_reg_class_reg[0]_0 [7]),
        .I3(\local_reg_distance_reg_n_0_[7] ),
        .O(insert0_carry_i_1__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    insert0_carry_i_2__1
       (.I0(\local_reg_distance_reg_n_0_[4] ),
        .I1(\local_reg_class_reg[0]_0 [4]),
        .I2(\local_reg_class_reg[0]_0 [5]),
        .I3(\local_reg_distance_reg_n_0_[5] ),
        .O(insert0_carry_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    insert0_carry_i_3__1
       (.I0(\local_reg_distance_reg_n_0_[2] ),
        .I1(\local_reg_class_reg[0]_0 [2]),
        .I2(\local_reg_class_reg[0]_0 [3]),
        .I3(\local_reg_distance_reg_n_0_[3] ),
        .O(insert0_carry_i_3__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    insert0_carry_i_4__1
       (.I0(\local_reg_distance_reg_n_0_[0] ),
        .I1(\local_reg_class_reg[0]_0 [0]),
        .I2(\local_reg_class_reg[0]_0 [1]),
        .I3(\local_reg_distance_reg_n_0_[1] ),
        .O(insert0_carry_i_4__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    insert0_carry_i_5__1
       (.I0(\local_reg_class_reg[0]_0 [7]),
        .I1(\local_reg_distance_reg_n_0_[7] ),
        .I2(\local_reg_distance_reg_n_0_[6] ),
        .I3(\local_reg_class_reg[0]_0 [6]),
        .O(insert0_carry_i_5__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    insert0_carry_i_6__1
       (.I0(\local_reg_class_reg[0]_0 [5]),
        .I1(\local_reg_distance_reg_n_0_[5] ),
        .I2(\local_reg_distance_reg_n_0_[4] ),
        .I3(\local_reg_class_reg[0]_0 [4]),
        .O(insert0_carry_i_6__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    insert0_carry_i_7__1
       (.I0(\local_reg_class_reg[0]_0 [3]),
        .I1(\local_reg_distance_reg_n_0_[3] ),
        .I2(\local_reg_distance_reg_n_0_[2] ),
        .I3(\local_reg_class_reg[0]_0 [2]),
        .O(insert0_carry_i_7__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    insert0_carry_i_8__1
       (.I0(\local_reg_class_reg[0]_0 [1]),
        .I1(\local_reg_distance_reg_n_0_[1] ),
        .I2(\local_reg_distance_reg_n_0_[0] ),
        .I3(\local_reg_class_reg[0]_0 [0]),
        .O(insert0_carry_i_8__1_n_0));
  LUT5 #(
    .INIT(32'hFFFF88C0)) 
    \led_OBUF[0]_inst_i_1 
       (.I0(flower_class3),
        .I1(oper),
        .I2(Q[0]),
        .I3(\led[0] ),
        .I4(\FSM_sequential_currstate_reg[1] ),
        .O(led_OBUF[0]));
  LUT5 #(
    .INIT(32'h0000773F)) 
    \led_OBUF[15]_inst_i_1 
       (.I0(flower_class3),
        .I1(oper),
        .I2(Q[0]),
        .I3(\led[0] ),
        .I4(\FSM_sequential_currstate_reg[1] ),
        .O(led_OBUF[4]));
  LUT6 #(
    .INIT(64'hFFF7FFFF80002000)) 
    \led_OBUF[15]_inst_i_2 
       (.I0(\led[0] ),
        .I1(\wires_classes[3]_1 [1]),
        .I2(\wires_classes[3]_1 [0]),
        .I3(\led_OBUF[2]_inst_i_1_0 [0]),
        .I4(\led_OBUF[2]_inst_i_1_0 [1]),
        .I5(Q[0]),
        .O(flower_class3));
  LUT6 #(
    .INIT(64'h0F000E00FF000000)) 
    \led_OBUF[1]_inst_i_1 
       (.I0(flower_class318_out),
        .I1(flower_class314_out),
        .I2(flower_class31__10),
        .I3(oper),
        .I4(Q[1]),
        .I5(\led[0] ),
        .O(\FSM_sequential_currstate_reg[1] ));
  LUT6 #(
    .INIT(64'hF080800080800000)) 
    \led_OBUF[1]_inst_i_2 
       (.I0(\wires_classes[3]_1 [1]),
        .I1(\wires_classes[3]_1 [0]),
        .I2(\led[0] ),
        .I3(\led_OBUF[2]_inst_i_1_0 [1]),
        .I4(\led_OBUF[1]_inst_i_1_1 ),
        .I5(\led_OBUF[2]_inst_i_1_0 [0]),
        .O(flower_class318_out));
  LUT6 #(
    .INIT(64'h20200000F0202000)) 
    \led_OBUF[1]_inst_i_3 
       (.I0(\wires_classes[3]_1 [1]),
        .I1(\wires_classes[3]_1 [0]),
        .I2(\led[0] ),
        .I3(\led_OBUF[2]_inst_i_1_0 [1]),
        .I4(\led_OBUF[1]_inst_i_1_0 ),
        .I5(\led_OBUF[2]_inst_i_1_0 [0]),
        .O(flower_class314_out));
  LUT6 #(
    .INIT(64'h20F0002020200000)) 
    \led_OBUF[1]_inst_i_4 
       (.I0(\wires_classes[3]_1 [0]),
        .I1(\wires_classes[3]_1 [1]),
        .I2(\led[0] ),
        .I3(\led_OBUF[2]_inst_i_1_0 [1]),
        .I4(\led_OBUF[1]_inst_i_1_2 ),
        .I5(\led_OBUF[2]_inst_i_1_0 [0]),
        .O(flower_class31__10));
  LUT5 #(
    .INIT(32'h88C00000)) 
    \led_OBUF[2]_inst_i_1 
       (.I0(flower_class3),
        .I1(oper),
        .I2(Q[0]),
        .I3(\led[0] ),
        .I4(\FSM_sequential_currstate_reg[1] ),
        .O(led_OBUF[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \led_OBUF[8]_inst_i_1 
       (.I0(\led[0] ),
        .I1(\wires_classes[3]_1 [0]),
        .O(led_OBUF[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \led_OBUF[9]_inst_i_1 
       (.I0(\led[0] ),
        .I1(\wires_classes[3]_1 [1]),
        .O(led_OBUF[3]));
  FDRE #(
    .INIT(1'b0)) 
    \local_reg_class_reg[0] 
       (.C(CLK),
        .CE(insert0_carry__2_n_3),
        .D(\local_reg_class_reg[1]_0 [0]),
        .Q(\wires_classes[3]_1 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \local_reg_class_reg[1] 
       (.C(CLK),
        .CE(insert0_carry__2_n_3),
        .D(\local_reg_class_reg[1]_0 [1]),
        .Q(\wires_classes[3]_1 [1]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[0] 
       (.C(CLK),
        .CE(insert0_carry__2_n_3),
        .D(D[0]),
        .Q(\local_reg_distance_reg_n_0_[0] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[10] 
       (.C(CLK),
        .CE(insert0_carry__2_n_3),
        .D(D[10]),
        .Q(\local_reg_distance_reg_n_0_[10] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[11] 
       (.C(CLK),
        .CE(insert0_carry__2_n_3),
        .D(D[11]),
        .Q(\local_reg_distance_reg_n_0_[11] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[12] 
       (.C(CLK),
        .CE(insert0_carry__2_n_3),
        .D(D[12]),
        .Q(\local_reg_distance_reg_n_0_[12] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[13] 
       (.C(CLK),
        .CE(insert0_carry__2_n_3),
        .D(D[13]),
        .Q(\local_reg_distance_reg_n_0_[13] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[14] 
       (.C(CLK),
        .CE(insert0_carry__2_n_3),
        .D(D[14]),
        .Q(\local_reg_distance_reg_n_0_[14] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[15] 
       (.C(CLK),
        .CE(insert0_carry__2_n_3),
        .D(D[15]),
        .Q(\local_reg_distance_reg_n_0_[15] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[16] 
       (.C(CLK),
        .CE(insert0_carry__2_n_3),
        .D(D[16]),
        .Q(\local_reg_distance_reg_n_0_[16] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[17] 
       (.C(CLK),
        .CE(insert0_carry__2_n_3),
        .D(D[17]),
        .Q(\local_reg_distance_reg_n_0_[17] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[18] 
       (.C(CLK),
        .CE(insert0_carry__2_n_3),
        .D(D[18]),
        .Q(\local_reg_distance_reg_n_0_[18] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[19] 
       (.C(CLK),
        .CE(insert0_carry__2_n_3),
        .D(D[19]),
        .Q(\local_reg_distance_reg_n_0_[19] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[1] 
       (.C(CLK),
        .CE(insert0_carry__2_n_3),
        .D(D[1]),
        .Q(\local_reg_distance_reg_n_0_[1] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[20] 
       (.C(CLK),
        .CE(insert0_carry__2_n_3),
        .D(D[20]),
        .Q(\local_reg_distance_reg_n_0_[20] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[21] 
       (.C(CLK),
        .CE(insert0_carry__2_n_3),
        .D(D[21]),
        .Q(\local_reg_distance_reg_n_0_[21] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[22] 
       (.C(CLK),
        .CE(insert0_carry__2_n_3),
        .D(D[22]),
        .Q(\local_reg_distance_reg_n_0_[22] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[23] 
       (.C(CLK),
        .CE(insert0_carry__2_n_3),
        .D(D[23]),
        .Q(\local_reg_distance_reg_n_0_[23] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[24] 
       (.C(CLK),
        .CE(insert0_carry__2_n_3),
        .D(D[24]),
        .Q(\local_reg_distance_reg_n_0_[24] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[25] 
       (.C(CLK),
        .CE(insert0_carry__2_n_3),
        .D(D[25]),
        .Q(\local_reg_distance_reg_n_0_[25] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[2] 
       (.C(CLK),
        .CE(insert0_carry__2_n_3),
        .D(D[2]),
        .Q(\local_reg_distance_reg_n_0_[2] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[3] 
       (.C(CLK),
        .CE(insert0_carry__2_n_3),
        .D(D[3]),
        .Q(\local_reg_distance_reg_n_0_[3] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[4] 
       (.C(CLK),
        .CE(insert0_carry__2_n_3),
        .D(D[4]),
        .Q(\local_reg_distance_reg_n_0_[4] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[5] 
       (.C(CLK),
        .CE(insert0_carry__2_n_3),
        .D(D[5]),
        .Q(\local_reg_distance_reg_n_0_[5] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[6] 
       (.C(CLK),
        .CE(insert0_carry__2_n_3),
        .D(D[6]),
        .Q(\local_reg_distance_reg_n_0_[6] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[7] 
       (.C(CLK),
        .CE(insert0_carry__2_n_3),
        .D(D[7]),
        .Q(\local_reg_distance_reg_n_0_[7] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[8] 
       (.C(CLK),
        .CE(insert0_carry__2_n_3),
        .D(D[8]),
        .Q(\local_reg_distance_reg_n_0_[8] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \local_reg_distance_reg[9] 
       (.C(CLK),
        .CE(insert0_carry__2_n_3),
        .D(D[9]),
        .Q(\local_reg_distance_reg_n_0_[9] ),
        .S(SR));
endmodule

module insert_push_sort
   (\FSM_sequential_currstate_reg[1] ,
    Q,
    led_OBUF,
    oper,
    \led[0] ,
    \local_reg_distance_reg[25] ,
    \local_reg_class_reg[1] ,
    SR,
    CLK,
    lopt,
    lopt_1);
  output \FSM_sequential_currstate_reg[1] ;
  output [1:0]Q;
  output [6:0]led_OBUF;
  input oper;
  input [0:0]\led[0] ;
  input [25:0]\local_reg_distance_reg[25] ;
  input [1:0]\local_reg_class_reg[1] ;
  input [0:0]SR;
  input CLK;
  output lopt;
  output lopt_1;

  wire CLK;
  wire \FSM_sequential_currstate_reg[1] ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire \cascade[1].u_n_0 ;
  wire \cascade[1].u_n_10 ;
  wire \cascade[1].u_n_11 ;
  wire \cascade[1].u_n_12 ;
  wire \cascade[1].u_n_13 ;
  wire \cascade[1].u_n_14 ;
  wire \cascade[1].u_n_15 ;
  wire \cascade[1].u_n_16 ;
  wire \cascade[1].u_n_17 ;
  wire \cascade[1].u_n_18 ;
  wire \cascade[1].u_n_19 ;
  wire \cascade[1].u_n_20 ;
  wire \cascade[1].u_n_21 ;
  wire \cascade[1].u_n_22 ;
  wire \cascade[1].u_n_23 ;
  wire \cascade[1].u_n_24 ;
  wire \cascade[1].u_n_25 ;
  wire \cascade[1].u_n_26 ;
  wire \cascade[1].u_n_27 ;
  wire \cascade[1].u_n_28 ;
  wire \cascade[1].u_n_29 ;
  wire \cascade[1].u_n_3 ;
  wire \cascade[1].u_n_30 ;
  wire \cascade[1].u_n_4 ;
  wire \cascade[1].u_n_5 ;
  wire \cascade[1].u_n_6 ;
  wire \cascade[1].u_n_7 ;
  wire \cascade[1].u_n_8 ;
  wire \cascade[1].u_n_9 ;
  wire \cascade[2].u_n_10 ;
  wire \cascade[2].u_n_11 ;
  wire \cascade[2].u_n_12 ;
  wire \cascade[2].u_n_13 ;
  wire \cascade[2].u_n_14 ;
  wire \cascade[2].u_n_15 ;
  wire \cascade[2].u_n_16 ;
  wire \cascade[2].u_n_17 ;
  wire \cascade[2].u_n_18 ;
  wire \cascade[2].u_n_19 ;
  wire \cascade[2].u_n_20 ;
  wire \cascade[2].u_n_21 ;
  wire \cascade[2].u_n_22 ;
  wire \cascade[2].u_n_23 ;
  wire \cascade[2].u_n_24 ;
  wire \cascade[2].u_n_25 ;
  wire \cascade[2].u_n_26 ;
  wire \cascade[2].u_n_27 ;
  wire \cascade[2].u_n_28 ;
  wire \cascade[2].u_n_29 ;
  wire \cascade[2].u_n_4 ;
  wire \cascade[2].u_n_5 ;
  wire \cascade[2].u_n_6 ;
  wire \cascade[2].u_n_7 ;
  wire \cascade[2].u_n_8 ;
  wire \cascade[2].u_n_9 ;
  wire [0:0]\led[0] ;
  wire [6:0]led_OBUF;
  wire [1:0]\local_reg_class_reg[1] ;
  wire [25:0]\local_reg_distance_reg[25] ;
  wire lopt;
  wire lopt_1;
  wire oper;
  wire [1:0]sdin_class;
  wire [1:0]sdin_class_0;
  wire [1:0]\wires_classes[2]_0 ;

  insert_push_cell \cascade[1].u 
       (.CLK(CLK),
        .D({\cascade[1].u_n_5 ,\cascade[1].u_n_6 ,\cascade[1].u_n_7 ,\cascade[1].u_n_8 ,\cascade[1].u_n_9 ,\cascade[1].u_n_10 ,\cascade[1].u_n_11 ,\cascade[1].u_n_12 ,\cascade[1].u_n_13 ,\cascade[1].u_n_14 ,\cascade[1].u_n_15 ,\cascade[1].u_n_16 ,\cascade[1].u_n_17 ,\cascade[1].u_n_18 ,\cascade[1].u_n_19 ,\cascade[1].u_n_20 ,\cascade[1].u_n_21 ,\cascade[1].u_n_22 ,\cascade[1].u_n_23 ,\cascade[1].u_n_24 ,\cascade[1].u_n_25 ,\cascade[1].u_n_26 ,\cascade[1].u_n_27 ,\cascade[1].u_n_28 ,\cascade[1].u_n_29 ,\cascade[1].u_n_30 }),
        .Q(Q),
        .SR(SR),
        .\local_reg_class_reg[0]_0 (\cascade[1].u_n_3 ),
        .\local_reg_class_reg[0]_1 (\cascade[1].u_n_4 ),
        .\local_reg_class_reg[1]_0 (\cascade[1].u_n_0 ),
        .\local_reg_class_reg[1]_1 (\local_reg_class_reg[1] ),
        .\local_reg_distance_reg[25]_0 (\local_reg_distance_reg[25] ),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .\rclass_reg[1] (sdin_class));
  insert_push_cell_0 \cascade[2].u 
       (.CLK(CLK),
        .D({\cascade[2].u_n_4 ,\cascade[2].u_n_5 ,\cascade[2].u_n_6 ,\cascade[2].u_n_7 ,\cascade[2].u_n_8 ,\cascade[2].u_n_9 ,\cascade[2].u_n_10 ,\cascade[2].u_n_11 ,\cascade[2].u_n_12 ,\cascade[2].u_n_13 ,\cascade[2].u_n_14 ,\cascade[2].u_n_15 ,\cascade[2].u_n_16 ,\cascade[2].u_n_17 ,\cascade[2].u_n_18 ,\cascade[2].u_n_19 ,\cascade[2].u_n_20 ,\cascade[2].u_n_21 ,\cascade[2].u_n_22 ,\cascade[2].u_n_23 ,\cascade[2].u_n_24 ,\cascade[2].u_n_25 ,\cascade[2].u_n_26 ,\cascade[2].u_n_27 ,\cascade[2].u_n_28 ,\cascade[2].u_n_29 }),
        .Q(\wires_classes[2]_0 ),
        .SR(SR),
        .\led[10] (\led[0] ),
        .led_OBUF(led_OBUF[5:4]),
        .\local_reg_class_reg[1]_0 (\local_reg_class_reg[1] ),
        .\local_reg_class_reg[1]_1 (sdin_class),
        .\local_reg_distance_reg[25]_0 (\local_reg_distance_reg[25] ),
        .\local_reg_distance_reg[25]_1 ({\cascade[1].u_n_5 ,\cascade[1].u_n_6 ,\cascade[1].u_n_7 ,\cascade[1].u_n_8 ,\cascade[1].u_n_9 ,\cascade[1].u_n_10 ,\cascade[1].u_n_11 ,\cascade[1].u_n_12 ,\cascade[1].u_n_13 ,\cascade[1].u_n_14 ,\cascade[1].u_n_15 ,\cascade[1].u_n_16 ,\cascade[1].u_n_17 ,\cascade[1].u_n_18 ,\cascade[1].u_n_19 ,\cascade[1].u_n_20 ,\cascade[1].u_n_21 ,\cascade[1].u_n_22 ,\cascade[1].u_n_23 ,\cascade[1].u_n_24 ,\cascade[1].u_n_25 ,\cascade[1].u_n_26 ,\cascade[1].u_n_27 ,\cascade[1].u_n_28 ,\cascade[1].u_n_29 ,\cascade[1].u_n_30 }),
        .\rclass_reg[1] (sdin_class_0));
  insert_push_cell_1 \cascade[3].u 
       (.CLK(CLK),
        .D({\cascade[2].u_n_4 ,\cascade[2].u_n_5 ,\cascade[2].u_n_6 ,\cascade[2].u_n_7 ,\cascade[2].u_n_8 ,\cascade[2].u_n_9 ,\cascade[2].u_n_10 ,\cascade[2].u_n_11 ,\cascade[2].u_n_12 ,\cascade[2].u_n_13 ,\cascade[2].u_n_14 ,\cascade[2].u_n_15 ,\cascade[2].u_n_16 ,\cascade[2].u_n_17 ,\cascade[2].u_n_18 ,\cascade[2].u_n_19 ,\cascade[2].u_n_20 ,\cascade[2].u_n_21 ,\cascade[2].u_n_22 ,\cascade[2].u_n_23 ,\cascade[2].u_n_24 ,\cascade[2].u_n_25 ,\cascade[2].u_n_26 ,\cascade[2].u_n_27 ,\cascade[2].u_n_28 ,\cascade[2].u_n_29 }),
        .\FSM_sequential_currstate_reg[1] (\FSM_sequential_currstate_reg[1] ),
        .Q(Q),
        .SR(SR),
        .\led[0] (\led[0] ),
        .led_OBUF({led_OBUF[6],led_OBUF[3:0]}),
        .\led_OBUF[1]_inst_i_1_0 (\cascade[1].u_n_0 ),
        .\led_OBUF[1]_inst_i_1_1 (\cascade[1].u_n_3 ),
        .\led_OBUF[1]_inst_i_1_2 (\cascade[1].u_n_4 ),
        .\led_OBUF[2]_inst_i_1_0 (\wires_classes[2]_0 ),
        .\local_reg_class_reg[0]_0 (\local_reg_distance_reg[25] ),
        .\local_reg_class_reg[1]_0 (sdin_class_0),
        .oper(oper));
endmodule

module knn
   (\FSM_sequential_currstate_reg[1] ,
    Q,
    led_OBUF,
    CLK,
    knn_rst_reg_0,
    oper,
    \rclass_reg[0]_0 ,
    E,
    \flower_rattr4_reg[11]_0 ,
    douta,
    \rclass_reg[0]_1 ,
    D,
    lopt,
    lopt_1);
  output \FSM_sequential_currstate_reg[1] ;
  output [1:0]Q;
  output [6:0]led_OBUF;
  input CLK;
  input knn_rst_reg_0;
  input oper;
  input [1:0]\rclass_reg[0]_0 ;
  input [0:0]E;
  input [47:0]\flower_rattr4_reg[11]_0 ;
  input [47:0]douta;
  input [0:0]\rclass_reg[0]_1 ;
  input [1:0]D;
  output lopt;
  output lopt_1;

  wire CLK;
  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_sequential_currstate_reg[1] ;
  wire [1:0]Q;
  wire [47:0]douta;
  wire [11:0]flower_rattr1;
  wire [11:0]flower_rattr2;
  wire [11:0]flower_rattr3;
  wire [11:0]flower_rattr4;
  wire [47:0]\flower_rattr4_reg[11]_0 ;
  wire knn_rst_reg_0;
  wire knn_rst_reg_n_0;
  wire [6:0]led_OBUF;
  wire lopt;
  wire lopt_1;
  wire oper;
  wire [11:0]rattr1;
  wire [11:0]rattr2;
  wire [11:0]rattr3;
  wire [11:0]rattr4;
  wire [1:0]rclass;
  wire [1:0]\rclass_reg[0]_0 ;
  wire [0:0]\rclass_reg[0]_1 ;
  wire [25:0]rdistance_test;
  wire [25:0]rout;
  wire rst__0;

  distance distancer
       (.CLK(CLK),
        .Q(flower_rattr4),
        .SR(rst__0),
        .rmul1_reg_0(knn_rst_reg_n_0),
        .\rout_reg[25]_0 (rout),
        .\rp1_reg[11]_0 (rattr1),
        .\rp2_reg[11]_0 (rattr2),
        .\rp3_reg[11]_0 (rattr3),
        .\rp4_reg[11]_0 (rattr4),
        .\rq1_reg[11]_0 (flower_rattr1),
        .\rq2_reg[11]_0 (flower_rattr2),
        .\rq3_reg[11]_0 (flower_rattr3));
  FDRE #(
    .INIT(1'b0)) 
    \flower_rattr1_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(\flower_rattr4_reg[11]_0 [0]),
        .Q(flower_rattr1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \flower_rattr1_reg[10] 
       (.C(CLK),
        .CE(E),
        .D(\flower_rattr4_reg[11]_0 [10]),
        .Q(flower_rattr1[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \flower_rattr1_reg[11] 
       (.C(CLK),
        .CE(E),
        .D(\flower_rattr4_reg[11]_0 [11]),
        .Q(flower_rattr1[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \flower_rattr1_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(\flower_rattr4_reg[11]_0 [1]),
        .Q(flower_rattr1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \flower_rattr1_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(\flower_rattr4_reg[11]_0 [2]),
        .Q(flower_rattr1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \flower_rattr1_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(\flower_rattr4_reg[11]_0 [3]),
        .Q(flower_rattr1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \flower_rattr1_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(\flower_rattr4_reg[11]_0 [4]),
        .Q(flower_rattr1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \flower_rattr1_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(\flower_rattr4_reg[11]_0 [5]),
        .Q(flower_rattr1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \flower_rattr1_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(\flower_rattr4_reg[11]_0 [6]),
        .Q(flower_rattr1[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \flower_rattr1_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(\flower_rattr4_reg[11]_0 [7]),
        .Q(flower_rattr1[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \flower_rattr1_reg[8] 
       (.C(CLK),
        .CE(E),
        .D(\flower_rattr4_reg[11]_0 [8]),
        .Q(flower_rattr1[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \flower_rattr1_reg[9] 
       (.C(CLK),
        .CE(E),
        .D(\flower_rattr4_reg[11]_0 [9]),
        .Q(flower_rattr1[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \flower_rattr2_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(\flower_rattr4_reg[11]_0 [12]),
        .Q(flower_rattr2[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \flower_rattr2_reg[10] 
       (.C(CLK),
        .CE(E),
        .D(\flower_rattr4_reg[11]_0 [22]),
        .Q(flower_rattr2[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \flower_rattr2_reg[11] 
       (.C(CLK),
        .CE(E),
        .D(\flower_rattr4_reg[11]_0 [23]),
        .Q(flower_rattr2[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \flower_rattr2_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(\flower_rattr4_reg[11]_0 [13]),
        .Q(flower_rattr2[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \flower_rattr2_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(\flower_rattr4_reg[11]_0 [14]),
        .Q(flower_rattr2[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \flower_rattr2_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(\flower_rattr4_reg[11]_0 [15]),
        .Q(flower_rattr2[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \flower_rattr2_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(\flower_rattr4_reg[11]_0 [16]),
        .Q(flower_rattr2[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \flower_rattr2_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(\flower_rattr4_reg[11]_0 [17]),
        .Q(flower_rattr2[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \flower_rattr2_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(\flower_rattr4_reg[11]_0 [18]),
        .Q(flower_rattr2[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \flower_rattr2_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(\flower_rattr4_reg[11]_0 [19]),
        .Q(flower_rattr2[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \flower_rattr2_reg[8] 
       (.C(CLK),
        .CE(E),
        .D(\flower_rattr4_reg[11]_0 [20]),
        .Q(flower_rattr2[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \flower_rattr2_reg[9] 
       (.C(CLK),
        .CE(E),
        .D(\flower_rattr4_reg[11]_0 [21]),
        .Q(flower_rattr2[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \flower_rattr3_reg[0] 
       (.C(CLK),
        .CE(\rclass_reg[0]_1 ),
        .D(\flower_rattr4_reg[11]_0 [24]),
        .Q(flower_rattr3[0]),
        .R(\rclass_reg[0]_0 [1]));
  FDRE #(
    .INIT(1'b0)) 
    \flower_rattr3_reg[10] 
       (.C(CLK),
        .CE(\rclass_reg[0]_1 ),
        .D(\flower_rattr4_reg[11]_0 [34]),
        .Q(flower_rattr3[10]),
        .R(\rclass_reg[0]_0 [1]));
  FDRE #(
    .INIT(1'b0)) 
    \flower_rattr3_reg[11] 
       (.C(CLK),
        .CE(\rclass_reg[0]_1 ),
        .D(\flower_rattr4_reg[11]_0 [35]),
        .Q(flower_rattr3[11]),
        .R(\rclass_reg[0]_0 [1]));
  FDRE #(
    .INIT(1'b0)) 
    \flower_rattr3_reg[1] 
       (.C(CLK),
        .CE(\rclass_reg[0]_1 ),
        .D(\flower_rattr4_reg[11]_0 [25]),
        .Q(flower_rattr3[1]),
        .R(\rclass_reg[0]_0 [1]));
  FDRE #(
    .INIT(1'b0)) 
    \flower_rattr3_reg[2] 
       (.C(CLK),
        .CE(\rclass_reg[0]_1 ),
        .D(\flower_rattr4_reg[11]_0 [26]),
        .Q(flower_rattr3[2]),
        .R(\rclass_reg[0]_0 [1]));
  FDRE #(
    .INIT(1'b0)) 
    \flower_rattr3_reg[3] 
       (.C(CLK),
        .CE(\rclass_reg[0]_1 ),
        .D(\flower_rattr4_reg[11]_0 [27]),
        .Q(flower_rattr3[3]),
        .R(\rclass_reg[0]_0 [1]));
  FDRE #(
    .INIT(1'b0)) 
    \flower_rattr3_reg[4] 
       (.C(CLK),
        .CE(\rclass_reg[0]_1 ),
        .D(\flower_rattr4_reg[11]_0 [28]),
        .Q(flower_rattr3[4]),
        .R(\rclass_reg[0]_0 [1]));
  FDRE #(
    .INIT(1'b0)) 
    \flower_rattr3_reg[5] 
       (.C(CLK),
        .CE(\rclass_reg[0]_1 ),
        .D(\flower_rattr4_reg[11]_0 [29]),
        .Q(flower_rattr3[5]),
        .R(\rclass_reg[0]_0 [1]));
  FDRE #(
    .INIT(1'b0)) 
    \flower_rattr3_reg[6] 
       (.C(CLK),
        .CE(\rclass_reg[0]_1 ),
        .D(\flower_rattr4_reg[11]_0 [30]),
        .Q(flower_rattr3[6]),
        .R(\rclass_reg[0]_0 [1]));
  FDRE #(
    .INIT(1'b0)) 
    \flower_rattr3_reg[7] 
       (.C(CLK),
        .CE(\rclass_reg[0]_1 ),
        .D(\flower_rattr4_reg[11]_0 [31]),
        .Q(flower_rattr3[7]),
        .R(\rclass_reg[0]_0 [1]));
  FDRE #(
    .INIT(1'b0)) 
    \flower_rattr3_reg[8] 
       (.C(CLK),
        .CE(\rclass_reg[0]_1 ),
        .D(\flower_rattr4_reg[11]_0 [32]),
        .Q(flower_rattr3[8]),
        .R(\rclass_reg[0]_0 [1]));
  FDRE #(
    .INIT(1'b0)) 
    \flower_rattr3_reg[9] 
       (.C(CLK),
        .CE(\rclass_reg[0]_1 ),
        .D(\flower_rattr4_reg[11]_0 [33]),
        .Q(flower_rattr3[9]),
        .R(\rclass_reg[0]_0 [1]));
  FDRE #(
    .INIT(1'b0)) 
    \flower_rattr4_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(\flower_rattr4_reg[11]_0 [36]),
        .Q(flower_rattr4[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \flower_rattr4_reg[10] 
       (.C(CLK),
        .CE(E),
        .D(\flower_rattr4_reg[11]_0 [46]),
        .Q(flower_rattr4[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \flower_rattr4_reg[11] 
       (.C(CLK),
        .CE(E),
        .D(\flower_rattr4_reg[11]_0 [47]),
        .Q(flower_rattr4[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \flower_rattr4_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(\flower_rattr4_reg[11]_0 [37]),
        .Q(flower_rattr4[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \flower_rattr4_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(\flower_rattr4_reg[11]_0 [38]),
        .Q(flower_rattr4[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \flower_rattr4_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(\flower_rattr4_reg[11]_0 [39]),
        .Q(flower_rattr4[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \flower_rattr4_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(\flower_rattr4_reg[11]_0 [40]),
        .Q(flower_rattr4[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \flower_rattr4_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(\flower_rattr4_reg[11]_0 [41]),
        .Q(flower_rattr4[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \flower_rattr4_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(\flower_rattr4_reg[11]_0 [42]),
        .Q(flower_rattr4[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \flower_rattr4_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(\flower_rattr4_reg[11]_0 [43]),
        .Q(flower_rattr4[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \flower_rattr4_reg[8] 
       (.C(CLK),
        .CE(E),
        .D(\flower_rattr4_reg[11]_0 [44]),
        .Q(flower_rattr4[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \flower_rattr4_reg[9] 
       (.C(CLK),
        .CE(E),
        .D(\flower_rattr4_reg[11]_0 [45]),
        .Q(flower_rattr4[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    knn_rst_reg
       (.C(CLK),
        .CE(1'b1),
        .D(knn_rst_reg_0),
        .Q(knn_rst_reg_n_0),
        .R(1'b0));
  insert_push_sort list
       (.CLK(CLK),
        .\FSM_sequential_currstate_reg[1] (\FSM_sequential_currstate_reg[1] ),
        .Q(Q),
        .SR(rst__0),
        .\led[0] (\rclass_reg[0]_0 [0]),
        .led_OBUF(led_OBUF),
        .\local_reg_class_reg[1] (rclass),
        .\local_reg_distance_reg[25] (rdistance_test),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .oper(oper));
  FDRE #(
    .INIT(1'b0)) 
    \rattr1_reg[0] 
       (.C(CLK),
        .CE(\rclass_reg[0]_1 ),
        .D(douta[0]),
        .Q(rattr1[0]),
        .R(\rclass_reg[0]_0 [1]));
  FDRE #(
    .INIT(1'b0)) 
    \rattr1_reg[10] 
       (.C(CLK),
        .CE(\rclass_reg[0]_1 ),
        .D(douta[10]),
        .Q(rattr1[10]),
        .R(\rclass_reg[0]_0 [1]));
  FDRE #(
    .INIT(1'b0)) 
    \rattr1_reg[11] 
       (.C(CLK),
        .CE(\rclass_reg[0]_1 ),
        .D(douta[11]),
        .Q(rattr1[11]),
        .R(\rclass_reg[0]_0 [1]));
  FDRE #(
    .INIT(1'b0)) 
    \rattr1_reg[1] 
       (.C(CLK),
        .CE(\rclass_reg[0]_1 ),
        .D(douta[1]),
        .Q(rattr1[1]),
        .R(\rclass_reg[0]_0 [1]));
  FDRE #(
    .INIT(1'b0)) 
    \rattr1_reg[2] 
       (.C(CLK),
        .CE(\rclass_reg[0]_1 ),
        .D(douta[2]),
        .Q(rattr1[2]),
        .R(\rclass_reg[0]_0 [1]));
  FDRE #(
    .INIT(1'b0)) 
    \rattr1_reg[3] 
       (.C(CLK),
        .CE(\rclass_reg[0]_1 ),
        .D(douta[3]),
        .Q(rattr1[3]),
        .R(\rclass_reg[0]_0 [1]));
  FDRE #(
    .INIT(1'b0)) 
    \rattr1_reg[4] 
       (.C(CLK),
        .CE(\rclass_reg[0]_1 ),
        .D(douta[4]),
        .Q(rattr1[4]),
        .R(\rclass_reg[0]_0 [1]));
  FDRE #(
    .INIT(1'b0)) 
    \rattr1_reg[5] 
       (.C(CLK),
        .CE(\rclass_reg[0]_1 ),
        .D(douta[5]),
        .Q(rattr1[5]),
        .R(\rclass_reg[0]_0 [1]));
  FDRE #(
    .INIT(1'b0)) 
    \rattr1_reg[6] 
       (.C(CLK),
        .CE(\rclass_reg[0]_1 ),
        .D(douta[6]),
        .Q(rattr1[6]),
        .R(\rclass_reg[0]_0 [1]));
  FDRE #(
    .INIT(1'b0)) 
    \rattr1_reg[7] 
       (.C(CLK),
        .CE(\rclass_reg[0]_1 ),
        .D(douta[7]),
        .Q(rattr1[7]),
        .R(\rclass_reg[0]_0 [1]));
  FDRE #(
    .INIT(1'b0)) 
    \rattr1_reg[8] 
       (.C(CLK),
        .CE(\rclass_reg[0]_1 ),
        .D(douta[8]),
        .Q(rattr1[8]),
        .R(\rclass_reg[0]_0 [1]));
  FDRE #(
    .INIT(1'b0)) 
    \rattr1_reg[9] 
       (.C(CLK),
        .CE(\rclass_reg[0]_1 ),
        .D(douta[9]),
        .Q(rattr1[9]),
        .R(\rclass_reg[0]_0 [1]));
  FDRE #(
    .INIT(1'b0)) 
    \rattr2_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(douta[12]),
        .Q(rattr2[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rattr2_reg[10] 
       (.C(CLK),
        .CE(E),
        .D(douta[22]),
        .Q(rattr2[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rattr2_reg[11] 
       (.C(CLK),
        .CE(E),
        .D(douta[23]),
        .Q(rattr2[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rattr2_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(douta[13]),
        .Q(rattr2[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rattr2_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(douta[14]),
        .Q(rattr2[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rattr2_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(douta[15]),
        .Q(rattr2[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rattr2_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(douta[16]),
        .Q(rattr2[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rattr2_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(douta[17]),
        .Q(rattr2[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rattr2_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(douta[18]),
        .Q(rattr2[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rattr2_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(douta[19]),
        .Q(rattr2[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rattr2_reg[8] 
       (.C(CLK),
        .CE(E),
        .D(douta[20]),
        .Q(rattr2[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rattr2_reg[9] 
       (.C(CLK),
        .CE(E),
        .D(douta[21]),
        .Q(rattr2[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rattr3_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(douta[24]),
        .Q(rattr3[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rattr3_reg[10] 
       (.C(CLK),
        .CE(E),
        .D(douta[34]),
        .Q(rattr3[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rattr3_reg[11] 
       (.C(CLK),
        .CE(E),
        .D(douta[35]),
        .Q(rattr3[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rattr3_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(douta[25]),
        .Q(rattr3[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rattr3_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(douta[26]),
        .Q(rattr3[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rattr3_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(douta[27]),
        .Q(rattr3[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rattr3_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(douta[28]),
        .Q(rattr3[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rattr3_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(douta[29]),
        .Q(rattr3[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rattr3_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(douta[30]),
        .Q(rattr3[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rattr3_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(douta[31]),
        .Q(rattr3[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rattr3_reg[8] 
       (.C(CLK),
        .CE(E),
        .D(douta[32]),
        .Q(rattr3[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rattr3_reg[9] 
       (.C(CLK),
        .CE(E),
        .D(douta[33]),
        .Q(rattr3[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rattr4_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(douta[36]),
        .Q(rattr4[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rattr4_reg[10] 
       (.C(CLK),
        .CE(E),
        .D(douta[46]),
        .Q(rattr4[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rattr4_reg[11] 
       (.C(CLK),
        .CE(E),
        .D(douta[47]),
        .Q(rattr4[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rattr4_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(douta[37]),
        .Q(rattr4[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rattr4_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(douta[38]),
        .Q(rattr4[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rattr4_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(douta[39]),
        .Q(rattr4[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rattr4_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(douta[40]),
        .Q(rattr4[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rattr4_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(douta[41]),
        .Q(rattr4[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rattr4_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(douta[42]),
        .Q(rattr4[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rattr4_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(douta[43]),
        .Q(rattr4[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rattr4_reg[8] 
       (.C(CLK),
        .CE(E),
        .D(douta[44]),
        .Q(rattr4[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rattr4_reg[9] 
       (.C(CLK),
        .CE(E),
        .D(douta[45]),
        .Q(rattr4[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rclass_reg[0] 
       (.C(CLK),
        .CE(\rclass_reg[0]_1 ),
        .D(D[0]),
        .Q(rclass[0]),
        .R(\rclass_reg[0]_0 [1]));
  FDRE #(
    .INIT(1'b0)) 
    \rclass_reg[1] 
       (.C(CLK),
        .CE(\rclass_reg[0]_1 ),
        .D(D[1]),
        .Q(rclass[1]),
        .R(\rclass_reg[0]_0 [1]));
  FDRE #(
    .INIT(1'b0)) 
    \rdistance_test_reg[0] 
       (.C(CLK),
        .CE(\rclass_reg[0]_1 ),
        .D(rout[0]),
        .Q(rdistance_test[0]),
        .R(\rclass_reg[0]_0 [1]));
  FDRE #(
    .INIT(1'b0)) 
    \rdistance_test_reg[10] 
       (.C(CLK),
        .CE(\rclass_reg[0]_1 ),
        .D(rout[10]),
        .Q(rdistance_test[10]),
        .R(\rclass_reg[0]_0 [1]));
  FDRE #(
    .INIT(1'b0)) 
    \rdistance_test_reg[11] 
       (.C(CLK),
        .CE(\rclass_reg[0]_1 ),
        .D(rout[11]),
        .Q(rdistance_test[11]),
        .R(\rclass_reg[0]_0 [1]));
  FDRE #(
    .INIT(1'b0)) 
    \rdistance_test_reg[12] 
       (.C(CLK),
        .CE(\rclass_reg[0]_1 ),
        .D(rout[12]),
        .Q(rdistance_test[12]),
        .R(\rclass_reg[0]_0 [1]));
  FDRE #(
    .INIT(1'b0)) 
    \rdistance_test_reg[13] 
       (.C(CLK),
        .CE(\rclass_reg[0]_1 ),
        .D(rout[13]),
        .Q(rdistance_test[13]),
        .R(\rclass_reg[0]_0 [1]));
  FDRE #(
    .INIT(1'b0)) 
    \rdistance_test_reg[14] 
       (.C(CLK),
        .CE(\rclass_reg[0]_1 ),
        .D(rout[14]),
        .Q(rdistance_test[14]),
        .R(\rclass_reg[0]_0 [1]));
  FDRE #(
    .INIT(1'b0)) 
    \rdistance_test_reg[15] 
       (.C(CLK),
        .CE(\rclass_reg[0]_1 ),
        .D(rout[15]),
        .Q(rdistance_test[15]),
        .R(\rclass_reg[0]_0 [1]));
  FDRE #(
    .INIT(1'b0)) 
    \rdistance_test_reg[16] 
       (.C(CLK),
        .CE(\rclass_reg[0]_1 ),
        .D(rout[16]),
        .Q(rdistance_test[16]),
        .R(\rclass_reg[0]_0 [1]));
  FDRE #(
    .INIT(1'b0)) 
    \rdistance_test_reg[17] 
       (.C(CLK),
        .CE(\rclass_reg[0]_1 ),
        .D(rout[17]),
        .Q(rdistance_test[17]),
        .R(\rclass_reg[0]_0 [1]));
  FDRE #(
    .INIT(1'b0)) 
    \rdistance_test_reg[18] 
       (.C(CLK),
        .CE(\rclass_reg[0]_1 ),
        .D(rout[18]),
        .Q(rdistance_test[18]),
        .R(\rclass_reg[0]_0 [1]));
  FDRE #(
    .INIT(1'b0)) 
    \rdistance_test_reg[19] 
       (.C(CLK),
        .CE(\rclass_reg[0]_1 ),
        .D(rout[19]),
        .Q(rdistance_test[19]),
        .R(\rclass_reg[0]_0 [1]));
  FDRE #(
    .INIT(1'b0)) 
    \rdistance_test_reg[1] 
       (.C(CLK),
        .CE(\rclass_reg[0]_1 ),
        .D(rout[1]),
        .Q(rdistance_test[1]),
        .R(\rclass_reg[0]_0 [1]));
  FDRE #(
    .INIT(1'b0)) 
    \rdistance_test_reg[20] 
       (.C(CLK),
        .CE(\rclass_reg[0]_1 ),
        .D(rout[20]),
        .Q(rdistance_test[20]),
        .R(\rclass_reg[0]_0 [1]));
  FDRE #(
    .INIT(1'b0)) 
    \rdistance_test_reg[21] 
       (.C(CLK),
        .CE(\rclass_reg[0]_1 ),
        .D(rout[21]),
        .Q(rdistance_test[21]),
        .R(\rclass_reg[0]_0 [1]));
  FDRE #(
    .INIT(1'b0)) 
    \rdistance_test_reg[22] 
       (.C(CLK),
        .CE(\rclass_reg[0]_1 ),
        .D(rout[22]),
        .Q(rdistance_test[22]),
        .R(\rclass_reg[0]_0 [1]));
  FDRE #(
    .INIT(1'b0)) 
    \rdistance_test_reg[23] 
       (.C(CLK),
        .CE(\rclass_reg[0]_1 ),
        .D(rout[23]),
        .Q(rdistance_test[23]),
        .R(\rclass_reg[0]_0 [1]));
  FDRE #(
    .INIT(1'b0)) 
    \rdistance_test_reg[24] 
       (.C(CLK),
        .CE(\rclass_reg[0]_1 ),
        .D(rout[24]),
        .Q(rdistance_test[24]),
        .R(\rclass_reg[0]_0 [1]));
  FDRE #(
    .INIT(1'b0)) 
    \rdistance_test_reg[25] 
       (.C(CLK),
        .CE(\rclass_reg[0]_1 ),
        .D(rout[25]),
        .Q(rdistance_test[25]),
        .R(\rclass_reg[0]_0 [1]));
  FDRE #(
    .INIT(1'b0)) 
    \rdistance_test_reg[2] 
       (.C(CLK),
        .CE(\rclass_reg[0]_1 ),
        .D(rout[2]),
        .Q(rdistance_test[2]),
        .R(\rclass_reg[0]_0 [1]));
  FDRE #(
    .INIT(1'b0)) 
    \rdistance_test_reg[3] 
       (.C(CLK),
        .CE(\rclass_reg[0]_1 ),
        .D(rout[3]),
        .Q(rdistance_test[3]),
        .R(\rclass_reg[0]_0 [1]));
  FDRE #(
    .INIT(1'b0)) 
    \rdistance_test_reg[4] 
       (.C(CLK),
        .CE(\rclass_reg[0]_1 ),
        .D(rout[4]),
        .Q(rdistance_test[4]),
        .R(\rclass_reg[0]_0 [1]));
  FDRE #(
    .INIT(1'b0)) 
    \rdistance_test_reg[5] 
       (.C(CLK),
        .CE(\rclass_reg[0]_1 ),
        .D(rout[5]),
        .Q(rdistance_test[5]),
        .R(\rclass_reg[0]_0 [1]));
  FDRE #(
    .INIT(1'b0)) 
    \rdistance_test_reg[6] 
       (.C(CLK),
        .CE(\rclass_reg[0]_1 ),
        .D(rout[6]),
        .Q(rdistance_test[6]),
        .R(\rclass_reg[0]_0 [1]));
  FDRE #(
    .INIT(1'b0)) 
    \rdistance_test_reg[7] 
       (.C(CLK),
        .CE(\rclass_reg[0]_1 ),
        .D(rout[7]),
        .Q(rdistance_test[7]),
        .R(\rclass_reg[0]_0 [1]));
  FDRE #(
    .INIT(1'b0)) 
    \rdistance_test_reg[8] 
       (.C(CLK),
        .CE(\rclass_reg[0]_1 ),
        .D(rout[8]),
        .Q(rdistance_test[8]),
        .R(\rclass_reg[0]_0 [1]));
  FDRE #(
    .INIT(1'b0)) 
    \rdistance_test_reg[9] 
       (.C(CLK),
        .CE(\rclass_reg[0]_1 ),
        .D(rout[9]),
        .Q(rdistance_test[9]),
        .R(\rclass_reg[0]_0 [1]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
sbNGmomEbP78s1hfxgX3P1Jo01EKJk0i0C7iGpF+Yibr9EK0s4mcIifHDN/ag4jpPwW3bPllMHvn
U8AEY3mO8hCXVVoilrcRuCaEna/98GycCzy4G7FnYMfowsJb5k9ifRdE2jnurzeTLFbupUSpDF0H
Rl3Ci3DTGeExAZZ9UQE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zZZZoIprBFYfDWmCCcduELBM7HU98/+rvP9g8+y1mYyD3r3HEDm4ZwehwZvPoYWqoGXYoFqWZh3h
utt0abIfUW9/oF2vJ9hXn7nArtcm/Eui18rPYqp3aj/AItPNVXojk9zp7uFZLPTqcyig5v3Jtenl
qPnLi1Z84ZCW7NIRw6Y0bgmw6z26E8VPbYrZHs+0YW8Sztjo6CdIrQeEL5WBDolA0aHoKHWRZyFs
l5eRDmBAolj2uF07t/3eY3J7cYJmEDaoZ0TR1qcz25VFNu0OlcrEJ19IT+QdAxTah4jqJtknGZrT
6lUMwDZ7dBQwF1EuaE6p90gGNERhGAsbHLdvaw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
KUbz0Iu2faeWqD6HFeuGLtSOAlqZmpKCCJfzym8tkcWUUNgNMn2mYvx6PTM7j4tyig8JdUG3uZYs
NfPgAsNXQtTI7b19u9CkMks9jR+oEzX1rW7QtTvSj/nHZLg2smoFwuB5Ieb7/B8IIs1NTUrIz6Rc
itLQVG+L+GMziamsrx4=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
G7XYdRx9VGclyxTEtwMG+rjJHV8bfBxEGdkcN82UL3koN3Dt0M5AWkzEvHcskt1W0hTOjyYgmvYj
/p70w1nz96tlg226+e4UubpRmBH9QXBBX6UmqIwSiHj9H+XI1yNfTIdlwBKGQvfzwCAMwBwrrrGL
/804k5Ux3RhWRvwezZB4+sj9DFm4akREVXmNpfeqjI2X02LU/MxWMUbKxvjJnD9YxikAAO6ccTd6
8DKv76V76MEFVyXc7E2FeQDToW3lqkRTa6MTpIXbYSekRihQC+qPVuhPUneA4kepvQDfgFYE8/Ir
gu5gK+s/qNfuXhJUAqyLjslrUcY4+XD9ckpSvQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YXkYRXpUPv/tETnwnThdQ46UaPmI23lN9vrxHQjIOhq3WNJCuz7TYZK9hyzSdo6k0U6QE9ihQy2L
rYZg68RGbrK8bzlcnQ41r18LZb4GYlAn9PH7IrF1B+aHm3578doOZHf8wzUE2s+d1aHQIn6VIZjL
14pCTAjErJfMO13fgX6h8sgxb4GFC3eIORmkrq2J/fB9HALyh/qdGiLi7DejMfmdsssbOcPQTZUh
6Belf7fHTkIEr9B44rFZgMyrMVx4N9p0XpXD3JPe7Xeg6a3jxdqxHATaMuLdIa4s+ZiAz1TRx0EO
FFihCnLLb7weBBITQyTIncRL817BrF/ZXZD8Yw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
g7FbNw1ywd4TBNHq8OmK/4zoKI/t7vKmyT8R8SeiyUtKywhn0/7DZ/lV0Lf4IhY8X5MYsKtOQ5l6
DIl3fxtOhxpi8NHn9Nw3Nfb8NnS38Zuy6DSpwOL0f/GSmUSf2/YdB5Ben6xibQT0Oy//oBl5/1kR
pV5fWjj8WRgI6cnmfyj3g1MxepxPu1A/UHxlm1/i9yUHHi114N/hEQ0iujjrn6GxfZSiJUVF+r6c
rnxD//eOAl/YaxhdU/KhUkfsMn+MxtA5m6hTYYE0bnze8rpmEU5UGYKyY0p8KUs+MgsdTe+m/7gV
HSf6puBqQmEa1qksRfl742aL9B9y169or7Jp9Q==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kd1A2zIphLxXB0RyfHIqLkHXfWl0n38vROERuDghYrhK0ItcWGEP0XBrri6k1VZCSPYwiSu//pM6
83BfcPKbk09/A+ksvDIa3xS8Tg7DJK2AS+0pdnzBSjVWh+QD+glA3Hjk6LG9OMbjXyqD3hnMKacA
VRMwxKktV+KT5NXj5a7fMxXjo9exc0xM+woUJiSYs8onoUSwfBeH5/xhUy+iu+w0/OOydQE2LXZ0
1y+RObiz5C22dD4GGCfuvUCGAthYpUf633ZxRYN45mmAn5PxPsH4o+l2GhH/50Gu/VPVoAWDhgXQ
e93oPri++HinkK2uvDhDl4PI9HtRkq11Ky3uXQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
gDrrFgXHVyBo+Cn0bYn+SOSOCXPg7besukY6l0JmA/nu4gap105Wxbg11c7TJZ9ctHVLc5DXAxr+
EIvFpAIepoZBREtMjTlaIdNJ8k1nUpwAv2jaQeseq1TudTjugV1jtOYYk0RKd88z/6SJ8t9urDW0
yKqsfEWU3PwGcUGHOWtTn2hfAceNznmEIFWLmFmzSQJ1hQNdsIQn3jHnfMVYu8cAz5xvPVQWYyJW
pMHXhNYk6GyAjIshh991slb1g01K1ilR2tKD1EmxH5WGrX9BEUqBjHQo6uluC/d3mvcEQ5nJ1v+P
hIlj4qzUQT1wXjpk6d/BvNx7LyWmj5iq35dzNm+cdhfGwaFGG//vgmB6D/dFfs2BYSjHsa6VlpVM
7e2OgoFenuG9p1SVPI6gAs2MuFtnDKfxW7jS3RGhvsquS3tg1iFCDH/OU7E5aWfY7twF3yyN6G10
l72RZw62DfNoCdyUMG9sA8nc4qf6dEhyrr5S6XxpJhoBDJvkeq0TCUQZ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XR7vRF1m+9DS2Pv4r/O4uHwmvtXkChnKbsJCYczn1dvkZbcZSbBm/2UH78dXUaNorOh9XAuCvSjb
ER73y7e0anAfaIf1tJ9Y9pIb8EuNxGS/Pqdvg36cWarwGac9tsscdv/HWfb5Z+qWEk0/uFcLI7pH
CZO7fF2/ONQjA0NtUFBjW4idlx8WrySIuJgDs4jyGkMhbHR3U/ghF1YhMhwgwsbbcptfC1XLrIqQ
OecZnZu8E2hyc5eK/ccYdKcHnXoL55z1p5amI6Fuvz0wKTz2QQ/mwXodfGjEC1ZRWwTn7zCFM91M
qrA1Is49i6pSa7/VICjgn8ULMT1oKGfJLPm7hg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 28240)
`pragma protect data_block
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
q6Tmgz3808JQSr3jzMz6z8d8RRIAFCS7FQ==
`pragma protect end_protected
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
