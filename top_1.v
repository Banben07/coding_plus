module top_1(input   [8:0]   SW,
				 output	[6:0]	  HEX0);
wire      [2:0]		h;
				 
x83 x83_1(.r(SW[7:0]),.h(h));
HEX_MODULE dis_1(.display_in(h),.ON(SW[8]),.display_out(HEX0));
endmodule
