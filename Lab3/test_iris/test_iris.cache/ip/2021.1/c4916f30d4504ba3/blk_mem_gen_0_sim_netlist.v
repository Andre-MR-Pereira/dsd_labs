// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Wed Nov 17 16:10:52 2021
// Host        : DESKTOP-G74GFK5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [47:0]NLW_U0_doutb_UNCONNECTED;
  wire [6:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [6:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [47:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

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
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
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
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[47:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[6:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[6:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[47:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 30608)
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
