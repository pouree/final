// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Tue Dec  5 09:47:10 2023
// Host        : ubuntu2004 running 64-bit Ubuntu 20.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/ubuntu/Desktop/lab-wlos_baseline/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/ip/design_1_blk_mem_gen_0_0/design_1_blk_mem_gen_0_0_sim_netlist.v
// Design      : design_1_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_blk_mem_gen_0_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module design_1_blk_mem_gen_0_0
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    web,
    addrb,
    dinb,
    doutb,
    rsta_busy,
    rstb_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [3:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [31:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [31:0]addra;
  wire [31:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire rsta;
  wire rsta_busy;
  wire rstb;
  wire rstb_busy;
  wire [3:0]wea;
  wire [3:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.7492 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "1" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "NONE" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "1" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  design_1_blk_mem_gen_0_0_blk_mem_gen_v8_4_5 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[12:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addrb[12:2],1'b0,1'b0}),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
        .rstb(rstb),
        .rstb_busy(rstb_busy),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
RgPKnWr9n0dGgttm3akiFhAlfB96usOQYxnEmPhGyTGg1AbizYAjGPWLXBWl50n/d0IA71ci4aJB
wt6mtfyNADm3ZReK7D3mKu037BOgxryoEwwf1kiC6q/PllxsdAgEMfQrfHJ3E2AzSpdYjoxVYito
y0JW6CUDcWvWa4WV0EA=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
M0l6KpOGH3jL8eRt3NCD7e2USYnkg5H9GAnE1PKmnjiouFN3Y8kjWA2PZDAQLm9UW+TsC1HeVlzO
WjNCHkjR/6ubCsIcWfpPZWdIuAenlsyq8Y9l6b8vMj8JSbDEOiFF/GHSbKsn22MJdDJKEhHFK6GV
s8gR2vywRFwG69gIRE4qGhVB+WIg8GJrDpDMYH6lCjMkTrjXuKDUcNlJN3NPLuhJ7tsditwf1pr5
moJRmGpJnip/rGm0g4o4A6ev4CtePjoao8C1wFtzHkERX9oenhh7cGjDMejU5IrLv8NxFnLj1FpB
9MuF1beTU20NI5oAn6zLiLiOtXjf0ghU3AN4DA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
hAsrUfp6Qgjm8yBjNYTEtQmVQmMxzL8TE/3oiQSxSI3+yEkXAbQCXkT9mo+LCdv+fGECOB0istHd
eLtbsiYbxjxNxYkXiUrRE5O+aSxynIray+uF9DJigTEUZu8JJXUbzxK4DDUu1Lm9tpGps4+Prz1m
0gkj13RT/Y/418s2VTw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BP/54Wm/GJmb1jy0bxWJJX4aiKyiWPVh4X3VL30BQrmX4PlEsNKzBJH3Qu8IIYERfnFP0ifAgboa
vypMQ5Ed0BrMePGkWIgT6I8hxJCMFpHdkSK7m1giSKyZzFfTOrVqoNFXE+qdzLfY1J5hBWCvouYo
jllavK4N3gF9FLScH2AUWYVMcVth2QPaTAU2NLnAUNH8kgtBjBfc8/KbPPTznD1QNVqvFstzcbTA
hGQ1ETVPvINQ0KqxxAG5PRhtQD4+pC+hr/Tvk+RSvGyBOfy9zE86OXkJiYs9dSFhNiMFmCPL9DBO
se4OxNNC0/7aBtb1mkSEA9YFDYEb9jS7Jasy2A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SnzT9DVH3xlEN8nrr2YrlvTO5qj7L22d7WaBcuKyTaiHoIwwFHrC4HQbfs0TAwkdWcOgmJoATPSF
F6qm0KiddbrlERF3MfKUldeGBJtqLdX+zGw7+3JD7S+HB9dIMOFOHy+IiCZp1/Pz8epKpi238cel
rcVoJQKz406wmXDvOo8KsT+XhRLs9BVCrBErPGGXKYDk6NXAp0duOgQE9DbslzMU83M/kUC7uERV
tQW02240peKQFp2elEZC7Tetvgp0TaFTtJiKN45REi8GQUCKGa85JjNIk1qb/+k95TIIP1xrHirc
6iX7qbwnPetv8TVu2NjkZ0WDEK5RXdOXcxBwHA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
erkR82V0jX8ytva+9MzEs0c75Z7j7TsgxWRLNAUfbbU28i+U9YzuZlSfYU75M0f9jx1gvxtBrfKv
cNHVdkR+i5zfHDZsDwfMEEBhs8wzDCKqe+eex6BBEvlIOesCPXrr2RozQgaQ1PBh/os2Arfu+873
BjsVxFJkbhpzIqlddOo/XZV9Yi+eih7A7pXXEBR6IL7Poo4Ka49MiVQU0xJrDTm+ddOuMPDRRD7g
dsxS/uzdcBcO2myV6g/7YH/C2Ce9s6+UywJN/0JeXSqwA7bsBqqnfFicVAT0lckLopMLiuzK7dsN
EwhFeqoetciFrDIj9+o0xDMWBZhgNP1u68vURA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
R+BI65BKLT0I9hEtsxGnDyM5XY9gzULeTPOSDXvd3KWOzZJAx6C0xlbyZcFZhAEG/QIK2yd0wAi6
IUWxyF/sx3HsqKjhVi5KxnpuXDBOZVoj811O7JukedFVmDW7OHGtBkuiJ5X5irw7mfsEKRQmF/1i
V6lj9HYHZEjxtDeZjACsLY4y1QxWalSKT4HIMOHznBLL8dLbGMlS+ZmFuFn0gcwZavVl7gTkTtkf
W0gn01A9ru7NKsf+iLX0kj4dgItPu9N2g02M1vWQ9UUQEVvfV7lUc7GY1suibrD8aEkhH9S7lZ7n
bFsT4qxyvzg8ML6v4g4v7N6VuyhEtgFgNd725Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
jNUVKiwH68vHsU54idgvKwaVJcoxTUuxfgrQpbpmM/IpesWA3wHsGzYClwAxkKzw3KRnFyQqTWcZ
yj1EQ2CMBxlJ0kyNbZW8OK8pXzeigToZ0U6Aq3Gy+j7wBbhe83wE1Ygn82sK8dHTEulvaRLn/c5r
ispy1s7jMKIvYNzoUuZrgyBQyfaYmdqUia8XlQjFd+VwzhTXKwzvmaqHWyaHjfBKeCooO7+oUxMG
OJg83W54EVe9ronFQ8Wr9EOL8ia7qelCAgyQe/bC0HHCoMAm8apI7sX23iMR/wMiPP5V2bQzycy+
rBX/+SWkqSeIE1FLm+muFPvrE7iLwJaW8d1fzdFFjAZ5aIXArbWNfwbK8S0TczXc9lEzmpb69rwA
UJIrs4alo81qGQ32UFhjuMQjX75O9Od1HWHDj5PFaT/Ja5Ly+bK8Cc3gfO6dCE81m7d+B2JBZ/Hl
tBA19QuOAYwT2EIPOdpaVtCULb33cWODWu3qQFhZMmDzKTb3kwpcr0LL

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MnzcA2swaxH1LRacKDou0ZmiiMRETbWIdHgeBgyQz7ILronsXLoB/C20WuFNGEVSiL2/51EZ6MXZ
vMHI8fFcMQCJcuTBDBibUMKv6bXI9s8fTbtrBZppbF/R1icG5JYhqmX4aRnv4W/dxJRjI2L35nLN
Y48E9OfgfkD1sr+IRwx8WEKFmUhuk8dLe0VOK7ywe3XEcneYvrz+HhPj16bGmNfMwNnDgZ3gKKZD
hRnys+jzvAX3HyISrErWXhMKrhWMxXeTNFJCqNQ0LWAVHQYwyKnF5xVpyXSuGNSIrva+QXqOrZBG
3VNLirNVtMRiKLfwZeMaqvswkqBDAa53utlAAA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
d0xXkKtsKM8GvXhDZr16p1+oE3uBtD04BJ76eGGIEj/CFECfHVy9qsJ43oSKjas0+AJr4GFFnVb6
X7gJV6MmX/OboC9ier5joUCGz0mxVzkRZK9a+LPEDcg0K6+cLE36kr+FfxW9Uk2816EHBCMCf5mK
A4eAhSmAb5Nq74F/q0quiG416npbny7faiQ+xmPDfYYiM3UuMKaD4iE8ODlz1w5xThPllWESf3LZ
NTkw6fozyTqZ47vvE21O3dgIGAY1v+C6BwlCK24VwPJa1xs9csY+qTk31j5jjAc1ExlB6QF7t9UH
lk70qdNPWxT87OH7kFT8UvPO1D6BTC3/WkDZfA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LYhdzKTvo93uJrAaiP5OfCDuOnu2BSvPnxlv6I7h2n1+xHtj34LNNKzWEgOg9dUV9cYDaHYUjjEt
DKdWcz6mZ61d5qyxAhpv67fc90v7JVgtOAcT94/Yb+AuLxXFcGA6Gic7uoJtUgz6JmTnb22Dxdjc
KuIewDj4IOTfP8XGXKTaF+cNp0CFrQgTAcVSQFyLFxr0I/9h3S+GZLecA7ntEeHEOfCJzPvy0ddi
7MCdQWECLb+fXC0IAn8V95TumcpINiRAX1BHi9IGJ4QoMrb3jOCrPkFhDMTJj2aiImUWdi/l/0QE
d7wcXlgIEYVeoKYUOJ4mqy+zZPUbLNeOPADUDQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 59888)
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
