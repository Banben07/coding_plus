module HEX_MODULE(input			    [2:0]		display_in,
						input								ON,
						output			 reg[6:0]		display_out);
parameter			H0=7'b1000000,H1=7'b1111001,H2=7'b0100100,H3=7'b0110000,H4=7'b0011001,
                  H5=7'b0010010,H6=7'b0000010,H7=7'b1111000,HZ=7'b1111111;
				always@(display_in) begin
				      if(ON==0) begin
							             display_out=HZ;
						end else
						case(display_in)
								3'd0:display_out=H0;
								3'd1:display_out=H1;
								3'd2:display_out=H2;
								3'd3:display_out=H3;
								3'd4:display_out=H4;
								3'd5:display_out=H5;
								3'd6:display_out=H6;
								3'd7:display_out=H7;
							default:display_out=HZ;
						endcase
				end
endmodule
