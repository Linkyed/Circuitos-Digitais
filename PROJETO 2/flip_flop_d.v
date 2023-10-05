module flip_flop_d (input d,  
            input clk,  
            input rstn,  
            output reg q,  
            output qn);
					
   always @ (posedge clk or negedge rstn)  
      if (!rstn)  
         q <= 0;  
      else  
         q <= d;  
  
   assign qn = ~q;  
endmodule  