module comparator_less_11 #(parameter N = 8,M = 11 )
							(input logic [N-1: 0] a,
							output logic q);
							
		assign q = ( a >= M );
		
endmodule 