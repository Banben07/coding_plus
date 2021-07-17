module top_2(input   [17:14]   SW,
				 output	[7:0]		 LEDR);
				 
x74ls138 x38_1(.a(SW[16:14]),.ON(SW[17]),.y(LEDR));
endmodule
