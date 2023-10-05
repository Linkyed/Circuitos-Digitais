module Contador ( input clk,  
                input rstn,  
                output [3:0] out);  
					 
   wire  q0,q1,q2,q3;  
 
 
 
   flip_flop_d  dff0 ( .d (out[0]),  
                .clk (clk),  
                .rstn (rstn),  
                .q (q0),  
                .qn (out[0]));  
  
   flip_flop_d  dff1 ( .d (out[1]),  
                .clk (q0),  
                .rstn (rstn),  
                .q (q1),  
                .qn (out[1]));  
   flip_flop_d  dff2 ( .d (out[2]),  
                .clk (q1),  
                .rstn (rstn),  
                .q (q2),  
                .qn (out[2]));  
   flip_flop_d  dff3 ( .d (out[3]),  
                .clk (q2),  
                .rstn (rstn),  
                .q (q3),  
                .qn (out[3])); 
					 
 
endmodule 