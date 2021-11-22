// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Wed Nov 17 16:10:38 2021
// Host        : DESKTOP-G74GFK5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dist_mem_gen_0_sim_netlist.v
// Design      : dist_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dist_mem_gen_0,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4400)
`pragma protect data_block
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
N5PMIeeDZGpBLhk=
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
