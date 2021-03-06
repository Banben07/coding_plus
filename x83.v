module x83(input     [7:0]		r,
			  output	reg[2:0]		h);
   always@*begin
			casex(r)
				8'b1xxxxxxx:h=3'd7;
				8'b01xxxxxx:h=3'd6;
				8'b001xxxxx:h=3'd5;
				8'b0001xxxx:h=3'd4;
				8'b00001xxx:h=3'd3;
				8'b000001xx:h=3'd2;
				8'b0000001x:h=3'd1;
				8'b00000001:h=3'd0;
				default:h=3'd0;
			endcase
	end
endmodule	  