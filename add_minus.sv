module add_minus(input logic [3:0]d_pad,
						input logic reset_one, reset_ten,
						output logic [7:0] ten,
						output logic [7:0] one);
			
			
			always_ff @(posedge d_pad[0], posedge reset_ten)
				if(reset_ten) ten<=0;
				else ten<= ten + 1;
			always_ff @(posedge d_pad[2], posedge reset_one)
				if(reset_one) one<=0;
				else one <= one + 1;
				
endmodule

