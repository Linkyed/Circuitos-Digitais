module decod_2_pra_4_not_invert(A, B, out);
	input A, B;
	output [3:0] out;
	
	wire A_not, B_not;
	
	not (A_not, A);
	not (B_not, B);
	
	and And0 (out[0], A_not, B_not);
	and And1 (out[1], A_not, B);
	and And2 (out[2], A, B_not);
	and And3 (out[3], A, B);
	
	

endmodule 