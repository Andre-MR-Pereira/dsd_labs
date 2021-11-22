// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Wed Nov 17 16:10:52 2021
// Host        : DESKTOP-G74GFK5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/tiago/OneDrive/Desktop/Nova
//               pasta/test_iris/test_iris.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v}
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2021.1" *) 
(* NotValidForBitStream *)
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
  blk_mem_gen_0_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 30592)
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
