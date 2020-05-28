module controller(input logic [3:0] Dpad,
		input logic [9:0]count,
		input logic a, b, rest, select,
		output logic signal,
		output logic reset);

		always_latch
		begin
		if(count > 5 && count <15)
			signal = Dpad[0];
		else if(count > 16 && count <25)
			signal = Dpad[1];
		else if(count > 26 && count <35)
			signal = Dpad[2];
		else if(count > 36 && count <45)
			signal = Dpad[3];
		else if(count > 46 && count < 55)
			signal = reset;
		else if(count > 56 && count < 65)
			signal = a; //set time
		else if(count > 66 && count < 75)
			signal = b;  //set alarm
		//	assign signal = (Dpad[0] == 1 && count > 5 && count < 15);
		//	assign signal = (Dpad[1] == 1 && count > 16 && count < 25);
		//	assign signal = (Dpad[2] == 1 && count > 26 && count < 35);
		//	assign signal = (Dpad[3] == 1 && count > 36 && count < 45);
		end
	//	assign Dpad[0] = !(count < 90 && Dpad[1] == 1 && Dpad[2] == 1 && Dpad[3] == 1 );
		assign reset = (count > 120);
	
endmodule    
