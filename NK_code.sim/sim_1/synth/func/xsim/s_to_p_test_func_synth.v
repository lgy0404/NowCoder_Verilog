// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Fri Oct 27 15:40:39 2023
// Host        : DESKTOP-H2VR6T4 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/William/Desktop/NK_code/NK_code.sim/sim_1/synth/func/xsim/s_to_p_test_func_synth.v
// Design      : s_to_p
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module s_to_p
   (clk,
    rst_n,
    valid_a,
    data_a,
    ready_a,
    valid_b,
    data_b);
  input clk;
  input rst_n;
  input valid_a;
  input data_a;
  output ready_a;
  output valid_b;
  output [5:0]data_b;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [2:0]cnt;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[1]_i_1_n_0 ;
  wire \cnt[2]_i_1_n_0 ;
  wire data_a;
  wire data_a_IBUF;
  wire [5:0]data_b;
  wire \data_b[5]_i_1_n_0 ;
  wire [5:0]data_b_OBUF;
  wire [4:0]data_reg;
  wire \data_reg_reg_n_0_[0] ;
  wire \data_reg_reg_n_0_[1] ;
  wire \data_reg_reg_n_0_[2] ;
  wire \data_reg_reg_n_0_[3] ;
  wire \data_reg_reg_n_0_[4] ;
  wire ready_a;
  wire ready_a_OBUF;
  wire ready_a_i_1_n_0;
  wire rst_n;
  wire rst_n_IBUF;
  wire valid_a;
  wire valid_a_IBUF;
  wire valid_b;
  wire valid_b0;
  wire valid_b_OBUF;

  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt[0]_i_1 
       (.I0(valid_a_IBUF),
        .I1(ready_a_OBUF),
        .I2(cnt[0]),
        .O(\cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h5FFF2000)) 
    \cnt[1]_i_1 
       (.I0(cnt[0]),
        .I1(cnt[2]),
        .I2(valid_a_IBUF),
        .I3(ready_a_OBUF),
        .I4(cnt[1]),
        .O(\cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h3FFF8000)) 
    \cnt[2]_i_1 
       (.I0(cnt[1]),
        .I1(cnt[0]),
        .I2(valid_a_IBUF),
        .I3(ready_a_OBUF),
        .I4(cnt[2]),
        .O(\cnt[2]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(ready_a_i_1_n_0),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(cnt[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(ready_a_i_1_n_0),
        .D(\cnt[1]_i_1_n_0 ),
        .Q(cnt[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(ready_a_i_1_n_0),
        .D(\cnt[2]_i_1_n_0 ),
        .Q(cnt[2]));
  IBUF data_a_IBUF_inst
       (.I(data_a),
        .O(data_a_IBUF));
  LUT5 #(
    .INIT(32'h08000000)) 
    \data_b[5]_i_1 
       (.I0(ready_a_OBUF),
        .I1(valid_a_IBUF),
        .I2(cnt[1]),
        .I3(cnt[0]),
        .I4(cnt[2]),
        .O(\data_b[5]_i_1_n_0 ));
  OBUF \data_b_OBUF[0]_inst 
       (.I(data_b_OBUF[0]),
        .O(data_b[0]));
  OBUF \data_b_OBUF[1]_inst 
       (.I(data_b_OBUF[1]),
        .O(data_b[1]));
  OBUF \data_b_OBUF[2]_inst 
       (.I(data_b_OBUF[2]),
        .O(data_b[2]));
  OBUF \data_b_OBUF[3]_inst 
       (.I(data_b_OBUF[3]),
        .O(data_b[3]));
  OBUF \data_b_OBUF[4]_inst 
       (.I(data_b_OBUF[4]),
        .O(data_b[4]));
  OBUF \data_b_OBUF[5]_inst 
       (.I(data_b_OBUF[5]),
        .O(data_b[5]));
  FDCE #(
    .INIT(1'b0)) 
    \data_b_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_b[5]_i_1_n_0 ),
        .CLR(ready_a_i_1_n_0),
        .D(\data_reg_reg_n_0_[0] ),
        .Q(data_b_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_b_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_b[5]_i_1_n_0 ),
        .CLR(ready_a_i_1_n_0),
        .D(\data_reg_reg_n_0_[1] ),
        .Q(data_b_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_b_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_b[5]_i_1_n_0 ),
        .CLR(ready_a_i_1_n_0),
        .D(\data_reg_reg_n_0_[2] ),
        .Q(data_b_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_b_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_b[5]_i_1_n_0 ),
        .CLR(ready_a_i_1_n_0),
        .D(\data_reg_reg_n_0_[3] ),
        .Q(data_b_OBUF[3]));
  FDCE #(
    .INIT(1'b0)) 
    \data_b_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_b[5]_i_1_n_0 ),
        .CLR(ready_a_i_1_n_0),
        .D(\data_reg_reg_n_0_[4] ),
        .Q(data_b_OBUF[4]));
  FDCE #(
    .INIT(1'b0)) 
    \data_b_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_b[5]_i_1_n_0 ),
        .CLR(ready_a_i_1_n_0),
        .D(data_a_IBUF),
        .Q(data_b_OBUF[5]));
  LUT5 #(
    .INIT(32'h00000008)) 
    \data_reg[0]_i_1 
       (.I0(valid_a_IBUF),
        .I1(ready_a_OBUF),
        .I2(cnt[2]),
        .I3(cnt[0]),
        .I4(cnt[1]),
        .O(data_reg[0]));
  LUT5 #(
    .INIT(32'h00000080)) 
    \data_reg[1]_i_1 
       (.I0(cnt[0]),
        .I1(valid_a_IBUF),
        .I2(ready_a_OBUF),
        .I3(cnt[1]),
        .I4(cnt[2]),
        .O(data_reg[1]));
  LUT5 #(
    .INIT(32'h00000080)) 
    \data_reg[2]_i_1 
       (.I0(cnt[1]),
        .I1(valid_a_IBUF),
        .I2(ready_a_OBUF),
        .I3(cnt[0]),
        .I4(cnt[2]),
        .O(data_reg[2]));
  LUT5 #(
    .INIT(32'h00008000)) 
    \data_reg[3]_i_1 
       (.I0(valid_a_IBUF),
        .I1(ready_a_OBUF),
        .I2(cnt[0]),
        .I3(cnt[1]),
        .I4(cnt[2]),
        .O(data_reg[3]));
  LUT5 #(
    .INIT(32'h00000080)) 
    \data_reg[4]_i_1 
       (.I0(valid_a_IBUF),
        .I1(ready_a_OBUF),
        .I2(cnt[2]),
        .I3(cnt[0]),
        .I4(cnt[1]),
        .O(data_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(data_reg[0]),
        .CLR(ready_a_i_1_n_0),
        .D(data_a_IBUF),
        .Q(\data_reg_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(data_reg[1]),
        .CLR(ready_a_i_1_n_0),
        .D(data_a_IBUF),
        .Q(\data_reg_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(data_reg[2]),
        .CLR(ready_a_i_1_n_0),
        .D(data_a_IBUF),
        .Q(\data_reg_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(data_reg[3]),
        .CLR(ready_a_i_1_n_0),
        .D(data_a_IBUF),
        .Q(\data_reg_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(data_reg[4]),
        .CLR(ready_a_i_1_n_0),
        .D(data_a_IBUF),
        .Q(\data_reg_reg_n_0_[4] ));
  OBUF ready_a_OBUF_inst
       (.I(ready_a_OBUF),
        .O(ready_a));
  LUT1 #(
    .INIT(2'h1)) 
    ready_a_i_1
       (.I0(rst_n_IBUF),
        .O(ready_a_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    ready_a_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(ready_a_i_1_n_0),
        .D(1'b1),
        .Q(ready_a_OBUF));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
  IBUF valid_a_IBUF_inst
       (.I(valid_a),
        .O(valid_a_IBUF));
  OBUF valid_b_OBUF_inst
       (.I(valid_b_OBUF),
        .O(valid_b));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    valid_b_i_1
       (.I0(ready_a_OBUF),
        .I1(valid_a_IBUF),
        .I2(cnt[2]),
        .I3(cnt[0]),
        .I4(cnt[1]),
        .O(valid_b0));
  FDCE #(
    .INIT(1'b0)) 
    valid_b_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(ready_a_i_1_n_0),
        .D(valid_b0),
        .Q(valid_b_OBUF));
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
