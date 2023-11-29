module divided_frequecy ( input clk,  
                input rstn,  
                output [17:0] out);  

   wire  q0,q1,q2,q3,q4,q5,q6,q7,q8,q9,q10,q11,q12,q13,q14,q15,q16,q17;  



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



	flip_flop_d  dff4 ( .d (out[4]),  
                .clk (q3),  
                .rstn (rstn),  
                .q (q4),  
                .qn (out[4]));  

   flip_flop_d  dff5 ( .d (out[5]),  
                .clk (q4),  
                .rstn (rstn),  
                .q (q5),  
                .qn (out[5]));

   flip_flop_d  dff6 ( .d (out[6]),  
                .clk (q5),  
                .rstn (rstn),  
                .q (q6),  
                .qn (out[6]));  

	 flip_flop_d  dff7 ( .d (out[7]),  
                .clk (q6),  
                .rstn (rstn),  
                .q (q7),  
                .qn (out[7])); 

	flip_flop_d  dff8 ( .d (out[8]),  
                .clk (q7),  
                .rstn (rstn),  
                .q (q8),  
                .qn (out[8]));  

   flip_flop_d  dff9 ( .d (out[9]),  
                .clk (q8),  
                .rstn (rstn),  
                .q (q9),  
                .qn (out[9]));  
   flip_flop_d  dff10 ( .d (out[10]),  
                .clk (q9),  
                .rstn (rstn),  
                .q (q10),  
                .qn (out[10]));  
   flip_flop_d  dff11 ( .d (out[11]),  
                .clk (q10),  
                .rstn (rstn),  
                .q (q11),  
                .qn (out[11]));
	flip_flop_d  dff12 ( .d (out[12]),  
                .clk (q11),  
                .rstn (rstn),  
                .q (q12),  
                .qn (out[12]));  
   flip_flop_d  dff13 ( .d (out[13]),  
                .clk (q12),  
                .rstn (rstn),  
                .q (q13),  
                .qn (out[13]));  
   flip_flop_d  dff14 ( .d (out[14]),  
                .clk (q13),  
                .rstn (rstn),  
                .q (q14),  
                .qn (out[14])); 
	flip_flop_d  dff15 ( .d (out[15]),  
                .clk (q14),  
                .rstn (rstn),  
                .q (q15),  
                .qn (out[15]));  

   flip_flop_d  dff16 ( .d (out[16]),  
                .clk (q15),  
                .rstn (rstn),  
                .q (q16),  
                .qn (out[16]));

   flip_flop_d  dff17 ( .d (out[17]),  
                .clk (q16),  
                .rstn (rstn),  
                .q (q17),  
                .qn (out[17]));				 



endmodule