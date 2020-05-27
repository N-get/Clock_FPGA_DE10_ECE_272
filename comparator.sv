module comparator #(parameter N = 8,M = 59)
							(input logic [N-1: 0] a,
							output logic q);
							
		assign q = ( a >= M );
		
endmodule 
