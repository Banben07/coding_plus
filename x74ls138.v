module x74ls138(a,ON,y); 
input				 ON;                                 
input     [2:0] a;
output    [7:0] y;                   
reg       [7:0] y=0;                 
    always @ * begin
				if(ON==0) begin
					     y=8'b00000000;
            end else 
				   case(a)
            		7:y= 8'b10000000;
           			6:y= 8'b01000000;
            		5:y= 8'b00100000;
            		4:y= 8'b00010000;
            		3:y= 8'b00001000;
            		2:y= 8'b00000100;
            		1:y= 8'b00000010;
            		0:y= 8'b00000001;
            		default: y= 8'b00000000;
               endcase       	
    end
endmodule
