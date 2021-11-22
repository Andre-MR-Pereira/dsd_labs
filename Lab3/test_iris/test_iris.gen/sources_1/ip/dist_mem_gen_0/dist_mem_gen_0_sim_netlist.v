// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Wed Nov 17 16:10:39 2021
// Host        : DESKTOP-G74GFK5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/tiago/OneDrive/Desktop/Nova
//               pasta/test_iris/test_iris.gen/sources_1/ip/dist_mem_gen_0/dist_mem_gen_0_sim_netlist.v}
// Design      : dist_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dist_mem_gen_0,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2021.1" *) 
(* NotValidForBitStream *)
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
  wire [1:0]NLW_U0_dpo_UNCONNECTED;
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
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[1:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(qspo),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(NLW_U0_spo_UNCONNECTED[1:0]),
        .we(we));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
JqLVJNxQZkLohSEqQ9ITFybNm9QPcaTh8kyc7h4uGNwD1GaEe9dZHqj61sUilGTlF+FUk7afNjXe
+9yQ4e75SyWC3Z6F0o0CdI6t84E2VRqNvne6PMLMbSrRPmTgt8cbodbZa3saUKncQltVwK/zTxXc
dXyeIJwoVnylCRZ8MPU=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RMR60V/K16S3hDpcgdlFzH6vzNttFBxzcEIP9k8l6xLxOXzEGeRk2beZg3IkkpX9ywpiLolj/ijd
pAlaBccK0sBT48q6qTKLouly7vRT3U8EOwOAJBZoDUnL/NwrlIomkg8Pj/4x8iecc9IFkdcLg53k
dreGnJ/4ti8Qi6sHP5Vsy0qpJoYpWsOBc2cmgH9vayWn6WlV7QL8YjnFQ6bQnWuyarN2QQK+bLzc
JrPAdTBzH05U9MiHwKRG1GlZxJA5fxQttnLA39Nwggz6r5qeYai4Vo+J8h0NQDa/GYHeYKSYsF9p
VKrYe14mz3CSYvF3+NMCtnCz+VeW7lF95iKCXA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
k6iMAgjYok8KaQLMY/TME6/aSCYTKFMZWtHwbD2VKIKOoM9woUSioI0NuiYfkPizuiBJEl8Af3NJ
M5VmpW3SVM0lwPjVSCSNmHMIfc2krrmg962M4XaG4w+tnp7hwZbdNZ8ahj6pOLDYSTGKwdGQanuk
rIQbC+15rT9WEK2XGDQ=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lHyAdhaPyzMCy12MalQZTt5ud3be/nityQmJ518pNrYUzgCs2nz/J1pZZgf+RWFgX9JUwWOgttjl
3vfihnzL/+pRWaWe8tlTToa5xX6V/jpw3hAcktXx9YKYreiOr2qpeTLkbp0k6MDPx0OZ6zF6OnXU
mj71WlXFOMXCx/95ZDxCuphivrOiA+pFZwGv2NIFmX/Oh4q8NTSFzJYzF3L9rWrI08UUEu9QuuxY
Iqlhuw+fXq//x9+jC7JNcedTSCXVkefBvZdJcbH0kbNA5ChG445apiF/OiKhKxTUjVKp7Rkm62fE
cFEo6KH1Cp+QaVxNQ55dcOTpVSSDpQGvshrQzw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
D53lVPGhmka10zY9LQFvI7i1UPoiOm2NaQ+1PpDUs4OCbAMqPLHQSHIZ3EMPWpwgdfAtW9t+9lxl
o33XZq60DBUJ4ZKPRvcfbZCHmpPyjm3Rs8+ACxnIH7G37stehOSCzSXeqM9ORqajk0MjoE3bDLx9
FtW+eEPY1KauFU6KHAWAdaZPPnc5QfgBkK0c27Y7CfkJ049Sjv4lFwtiVOmSkCvdDDisv3/WAcSs
c5Zo+cJIWzw/prfWYTGIB0goZNZRXZpB/aULwQ5itLufopA2f9cHo50fqlIvQX4YoYlfQTXpj3Lj
Qd+7/1UmFCqQLsnOUXy9D/tgspVDu7POGbmsiA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bN8g8/EQJ5JNLmcuNioMXeo6xxPhQlbGMqXyUcnPTkqRMGYI+G4Ejpt9cT2XLx48MsTE+bzhGByG
1H1pqr4NO588pcozvxJ5bo7FJRCIhLP1e3pwipkX+z6IlClWyStmkrlQmh4o/jTM/s88Fv0m7FSH
jNd3hhAeYNPIdw9Btn4UcBuZre9QZnCZ+Qb3nW7FuuEd1RxTmP0y9EFC185+bRy+SMigW3FTt75l
qdmakEvm3BkGv3IiztGz6MLRqvBdHQYtaZ17Jeh1xGZ//F4QzRytN/lcdqSrZA6MOo1ObtGE9SFJ
SDo82E2CZlkQZfPVe6EC4/a7V7wIwES5EDHHnw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ewjro/5A8FySdAgSJfHQFGxdnPvtSB6vt25wsSfZkZlB9FCU7IhXRDEGCyqtZv1GE8Vi5CjQkNFt
lkkrCSRYIU5yoD/IUiSUo3oerXD+F7eyfUTsdMH8pyAOmszG4J/U4h2F0oGz4IGjnQhlKadatt3U
Pet1uDdo6p7Uz7fluWoE453v5O5Ag7QL3l2r7pK9QbtKW2b2ZgHI0FP1PfpuAESmBITtaB68uLNI
9IqIpc/l+MM956Gz3Ei4nFXbBqRkNnOoEIr1KKujTAkLJl3zAW45fRxt/SNdspyyOfwqw8HQ4aKl
7gQZLNfO7M9S9RaTP7tfDlNXrjIs40/SiH7VMA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
BU7byHg11K8bY2oU9sv2hTEzfbBQxIL/wbPRcw3zRiIVklygkCLwToVotzcIxQi5+AgzzF89UJr5
6GTSf74dEO/L+7MiiVhop835AvOvvIFH3e15os3Ed8MZ/CykLdSs8kOVPSgygUECxKL/9FDmPOPu
fo2rClbqDh81jw/cX48EVuss3UxP/PNd7DI06TMx7v4Cwbv+pkvbuSJ9JUQBcJB2a2vbXuFSdPnT
ejL1XTVXeTbl2M6D7N0iqk4rwD1DAC1ao/d+axn50hvVPzigrvjqcQX/U1IENh7yF/bcNB1NT4d2
IdXJlmV2SEYwQNjb9ZTuSLUlehhVKrT3vH5zFJC80glrrjZK2l4tx9ZECJLmYjz00oxWf1dNVI0i
SuSyr3w6cWekzZQOv6vsFN+CRqWOkos5IUF5EaLFMFmcV5BtlgtZ9rm6OCo3zn726oQF5zZNaTBv
qrb5vLe4ELSA4fL4YBwiVDxVDpGpLzJNu+m6WS/V5oWJs1UQV1sRHSGu

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dAIafnl1hEJ76Z8bYZlZKSAU+OyCQ2PwlK+IUKj9QNvxJJYU8c0z5dZmxP4ePLBS+vp0Lekmf+JK
ZmwpMP0AH+BW93Y8Y+QNBeNdszz6mwXF1zf7ZAzf+51PzoZEli3SBCs9JMOdSCtnTg1W+j4FkEYs
NWN3ZK6tfrYSbplsV4lsmoYu2c81xW2Ns3lV8YRQCE8VSADdb1pe8pEztQYXzBmAfCVgwFNJ1kXV
pEtDN1MRi07FvYZeUJ/cX+ebYB0p5w0vxVO4vSr0XOHKMcQkxb/64oEoe4AhHQNWURWYKDxNNzm+
jElAKl1fJL20OmItj+GmJlETFK09uAgqwtZ5HQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4384)
`pragma protect data_block
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
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
