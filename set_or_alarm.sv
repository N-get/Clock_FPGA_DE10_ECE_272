module set_or_alarm(input logic [7:0] hours,
						input logic [7:0] minutes,
						input logic set_time, set_alarm, MHz_25,
						output logic [7:0] hours_set,
						output logic [7:0] minutes_set,
						output logic [7:0] hours_alarm,
						output logic [7:0] minutes_alarm,
						output logic [7:0] hours_nowhere,
						output logic [7:0] minutes_nowhere);
						
			always_ff @(posedge MHz_25) begin
				if (set_time && set_alarm) begin
					minutes_nowhere <= minutes;
					hours_nowhere <= hours;
					end
				else if (set_time) begin
					minutes_set <= minutes;
					hours_set <= hours;
					end
				else if (set_alarm) begin
					minutes_alarm <= minutes;
					hours_alarm <= hours;
				end
			end
endmodule
