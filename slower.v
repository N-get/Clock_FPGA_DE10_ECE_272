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
// CREATED		"Wed May 27 12:30:33 2020"

module slower(
	clock_10MHZ,
	reset_1,
	clock1Hz
);


input wire	clock_10MHZ;
input wire	reset_1;
output wire	clock1Hz;

wire	[24:0] SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;

assign	clock1Hz = SYNTHESIZED_WIRE_1;




comparator_1000	b2v_inst(
	.a(SYNTHESIZED_WIRE_0),
	.q(SYNTHESIZED_WIRE_2));
	defparam	b2v_inst.M = 10000000;
	defparam	b2v_inst.N = 25;

assign	SYNTHESIZED_WIRE_3 = SYNTHESIZED_WIRE_1 | reset_1;


synchronizer	b2v_inst6(
	.clk(clock_10MHZ),
	.d(SYNTHESIZED_WIRE_2),
	.q(SYNTHESIZED_WIRE_1));


counter_1Hz	b2v_inst8(
	.clk(clock_10MHZ),
	.reset(SYNTHESIZED_WIRE_3),
	.q(SYNTHESIZED_WIRE_0));
	defparam	b2v_inst8.N = 25;


endmodule
