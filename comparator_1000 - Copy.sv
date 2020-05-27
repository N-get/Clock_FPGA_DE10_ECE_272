module comparator_1000 #(parameter N = 25, M = 100000)
								(input logic [N-1: 0] a,
								output logic q);
							
							
				assign q = (a > M);
endmodule

