module HEX_MODULE(input			    [3:0]		display_in,
						input								ON,
						output			 reg[6:0]		display_out);
parameter			H0=7'b1000000,H1=7'b1111001,H2=7'b0100100,H3=7'b0110000,H4=7'b0011001,
                  H5=7'b0010010,H6=7'b0000010,H7=7'b1111000,HZ=7'b1111111,HA=7'b0001000,
		            HB=7'b0000000,HC=7'b1000110,HD=7'b1000000,HE=7'b0000110,HF=7'b0001110;
				always@(display_in) begin
				      if(ON==0) begin
							             display_out=HZ;
						end else
						case(display_in)
								4'd0:display_out=H0;
								4'd1:display_out=H1;
								4'd2:display_out=H2;
								4'd3:display_out=H3;
								4'd4:display_out=H4;
								4'd5:display_out=H5;
								4'd6:display_out=H6;
								4'd7:display_out=H7;
								4'd8:display_out=H8;
								4'd9:display_out=H9;
								4'd10:display_out=HA;
								4'd11:display_out=HB;
								4'd12:display_out=HC;
								4'd13:display_out=HD;
								4'd14:display_out=HE;
								4'd15:display_out=HF;
							default:display_out=HZ;
						endcase
				end
endmodule
