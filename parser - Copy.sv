module parser #(parameter N = 8)
					(input logic [N-1: 0] a,
					output logic [3:0] ones, tens);

					assign ones = a%10;
					assign tens = a/10;
					
endmodule 

				