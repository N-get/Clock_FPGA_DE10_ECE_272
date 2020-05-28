module controller_decoder(input logic [9:0] clk,
						input logic wire1,
						output logic [3:0]Dpadout,
						output logic reset,
						output logic a,
						output logic b);

			assign Dpadout[0] = (wire1 == 1 && clk > 5 && clk < 15);
			assign Dpadout[1] = (wire1 == 1 && clk > 16 && clk < 25);
			assign Dpadout[2] = (wire1 == 1 && clk > 26 && clk < 35);
			assign Dpadout[3] = (wire1 == 1 && clk > 36 && clk < 45);
			assign a = (wire1 == 1 && clk > 46 && clk < 55); //set time
			assign b = (wire1 == 1 && clk > 56 && clk < 65);//set alarm
			assign reset = (wire1 == 1 && clk >46 && clk < 55);
			
endmodule  