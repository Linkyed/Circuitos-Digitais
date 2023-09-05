module enc_perf (A, B, C, D, out);

   input   A, B, C, D;
   output  out;
	wire D_not, SUP1, SUP2;
 
	not D_inv (D_not, D);
	
   or Or0 (SUP1, A, D);
	or	Or1 (SUP2, B, D_not);
	and And0 (out, C, SUP1, SUP2);

endmodule