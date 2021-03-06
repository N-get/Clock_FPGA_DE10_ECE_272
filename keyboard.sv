module keyboard(input logic [9:0] num,
		input logic [9:0]count,
		input logic rest, select, enter,
		output logic signal, c,a,
		output logic reset);

		always_latch
		begin
		if(count > 5 && count <15)
			signal = num[0];//num 0;
		else if(count > 16 && count <25)
			signal = num[1];//1
		else if(count > 26 && count <35)
			signal = num[2];//2
		else if(count > 36 && count <45)
			signal = num[3];//3
		else if(count > 46 && count < 55)
			signal = num[4];//4
		else if(count > 56 && count < 65)
			signal = num[5];//5
		else if(count > 66 && count < 75)
			signal = num[6];//6
		else if(count > 76 && count < 85)
			signal = num[7];//7
		else if(count > 86 && count < 95)
			signal = num[8];//8
		else if(count > 96 && count < 105)
			signal = num[9];//9
		else if(count > 106 && count < 115)
			signal = enter;//next char
		else if(count > 116 && count < 125)
			signal = c;//clock
		else if(count > 126 && count < 135)
			signal = a;//alarm
		//else if(count > 136 && count < 145)
			//signal = num[9];//9
		end
		assign reset = (count > 160);
	
endmodule    
