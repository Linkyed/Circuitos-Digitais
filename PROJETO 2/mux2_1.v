module mux2_1(A, B, SEL, out);
	input A, B, SEL;
	output out;
	
	wire SEL_not, SUP1, SUP2;
	
	not (SEL_not, SEL);
	
	and And0 (SUP1, A, SEL);
	and And1 (SUP2, B, SEL_not);
	
	or Or (out, SUP1, SUP2);
	
	

endmodule 