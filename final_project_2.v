// Copyright (C) 2018  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"
// CREATED		"Tue May 26 13:28:31 2020"

module final_project_2(
	reset,
	clock_50,
	clock_10MHZ,
	test,
	light_1,
	light_2,
	light_3,
	light_4,
	light_5,
	light_6
);


input wire	reset;
input wire	clock_50;
input wire	clock_10MHZ;
output wire	test;
output wire	[6:0] light_1;
output wire	[6:0] light_2;
output wire	[6:0] light_3;
output wire	[6:0] light_4;
output wire	[6:0] light_5;
output wire	[6:0] light_6;

wire	[3:0] SYNTHESIZED_WIRE_0;
wire	[3:0] SYNTHESIZED_WIRE_1;
wire	[7:0] SYNTHESIZED_WIRE_22;
wire	[3:0] SYNTHESIZED_WIRE_3;
wire	[3:0] SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_7;
wire	[7:0] SYNTHESIZED_WIRE_24;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	[7:0] SYNTHESIZED_WIRE_25;
wire	[3:0] SYNTHESIZED_WIRE_12;
wire	[3:0] SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_26;
wire	SYNTHESIZED_WIRE_17;

assign	test = SYNTHESIZED_WIRE_15;




lab_4_1	b2v_inst(
	.bus(SYNTHESIZED_WIRE_0),
	.light(light_1));


lab_4_1	b2v_inst11(
	.bus(SYNTHESIZED_WIRE_1),
	.light(light_2));


parser	b2v_inst12(
	.a(SYNTHESIZED_WIRE_22),
	.ones(SYNTHESIZED_WIRE_3),
	.tens(SYNTHESIZED_WIRE_4));
	defparam	b2v_inst12.N = 8;


lab_4_1	b2v_inst13(
	.bus(SYNTHESIZED_WIRE_3),
	.light(light_3));


lab_4_1	b2v_inst14(
	.bus(SYNTHESIZED_WIRE_4),
	.light(light_4));


synchronizer	b2v_inst15(
	.clk(clock_50),
	.d(SYNTHESIZED_WIRE_5),
	.q(SYNTHESIZED_WIRE_17));


counter	b2v_inst16(
	.clk(SYNTHESIZED_WIRE_23),
	.reset(SYNTHESIZED_WIRE_7),
	.q(SYNTHESIZED_WIRE_24));
	defparam	b2v_inst16.N = 8;


parser	b2v_inst17(
	.a(SYNTHESIZED_WIRE_24),
	.ones(SYNTHESIZED_WIRE_12),
	.tens(SYNTHESIZED_WIRE_13));
	defparam	b2v_inst17.N = 8;


synchronizer	b2v_inst18(
	.clk(clock_50),
	.d(SYNTHESIZED_WIRE_9),
	.q(SYNTHESIZED_WIRE_23));


synchronizer	b2v_inst19(
	.clk(clock_50),
	.d(SYNTHESIZED_WIRE_10),
	.q(SYNTHESIZED_WIRE_26));


parser	b2v_inst2(
	.a(SYNTHESIZED_WIRE_25),
	.ones(SYNTHESIZED_WIRE_0),
	.tens(SYNTHESIZED_WIRE_1));
	defparam	b2v_inst2.N = 8;


lab_4_1	b2v_inst20(
	.bus(SYNTHESIZED_WIRE_12),
	.light(light_5));


lab_4_1	b2v_inst21(
	.bus(SYNTHESIZED_WIRE_13),
	.light(light_6));


comparator_24	b2v_inst22(
	.a(SYNTHESIZED_WIRE_24),
	.q(SYNTHESIZED_WIRE_5));
	defparam	b2v_inst22.M = 23;
	defparam	b2v_inst22.N = 8;


slower	b2v_inst24(
	.clock_10MHZ(clock_10MHZ),
	.1Hz(SYNTHESIZED_WIRE_15));


counter	b2v_inst3(
	.clk(SYNTHESIZED_WIRE_15),
	.reset(SYNTHESIZED_WIRE_26),
	.q(SYNTHESIZED_WIRE_25));
	defparam	b2v_inst3.N = 8;

assign	SYNTHESIZED_WIRE_7 = reset & SYNTHESIZED_WIRE_17;


counter	b2v_inst4(
	.clk(SYNTHESIZED_WIRE_26),
	.reset(SYNTHESIZED_WIRE_23),
	.q(SYNTHESIZED_WIRE_22));
	defparam	b2v_inst4.N = 8;


comparator	b2v_inst6(
	.a(SYNTHESIZED_WIRE_25),
	.q(SYNTHESIZED_WIRE_10));
	defparam	b2v_inst6.M = 59;
	defparam	b2v_inst6.N = 8;


comparator	b2v_inst7(
	.a(SYNTHESIZED_WIRE_22),
	.q(SYNTHESIZED_WIRE_9));
	defparam	b2v_inst7.M = 59;
	defparam	b2v_inst7.N = 8;


endmodule
