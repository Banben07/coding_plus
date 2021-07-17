module top_3(input   [13:10]	SW,
				 output  [6:0]		HEX4,
				 output  [7:0]    LEDG);	
wire    [2:0]			h;			 
x74ls138 x38_2(.a(SW[12:10]),.ON(SW[13]),.y(LEDG));
x83 x83_2(.r(LEDG),.h(h));
HEX_MODULE dis_2(.display_in(h),.ON(SW[13]),.display_out(HEX4));
endmodule
