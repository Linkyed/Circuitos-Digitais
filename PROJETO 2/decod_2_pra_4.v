module decod_2_pra_4(A, B, out0, out1, out2, out3);
	input A, B;
	output out0, out1, out2, out3;
	
	wire A_not, B_not;
	
	not (A_not, A);
	not (B_not, B);
	
	and And0 (out0, A_not, B_not);
	and And1 (out1, A_not, B);
	and And2 (out2, A, B_not);
	and And3 (out3, A, B);
	
	

endmodule 