module top(
				input  [17:0]  SW,
				output [7:0]	 LEDR,LEDG,
				output [6:0]	 HEX0,HEX4);
top_1 task_1(.SW(SW[8:0]),.HEX0(HEX0));
top_2 task_2(.SW(SW[17:14]),.LEDR(LEDR));
top_3 task_3(.SW(SW[13:10]),.HEX4(HEX4),.LEDG(LEDG));
endmodule
