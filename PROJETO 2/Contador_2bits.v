module Contador_2bits ( input clk,  
                input rstn,  
                output [1:0] out);  

   wire q0,q1;  



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



endmodule 