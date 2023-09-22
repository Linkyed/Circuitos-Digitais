module verfi_perf(A, B, C, out);
   input A, B, C;
   output out;
	wire A_not, B_not, C_not, SUP1, SUP2, SUP3, SUP4;
	
	not A_inv (A_not, A);
	not B_inv (B_not, B);
	not C_inv (C_not, C);
	
	and And0 (SUP1, A, B_not, C);
	and And1 (SUP2, A_not, B, C);
	and And2 (SUP3, A_not, B_not, C);
	and And3 (SUP4, A, B, C_not);
	
	or Or0 (out, SUP1, SUP2, SUP3, SUP4);
	

endmodule