module comp_FUN(A, B, C, D, E, F, out);
   input A, B, C, D, E, F;
   output out;
	wire igual_0, igual_1, igual_2;
	xnor Or0 (igual_0, A, D);
	xnor Or1 (igual_1, B, E);
	xnor Or2 (igual_2, C, F);
	
	and is_IGUAL (out, igual_0, igual_1, igual_2);
	
endmodule