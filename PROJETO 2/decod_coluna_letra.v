module decod_coluna_letra(A, B, C, seg_a, seg_b, seg_c, seg_d, seg_g);
	input A, B, C;
	output seg_a, seg_b, seg_c, seg_d, seg_g;
	
	wire A_not, B_not, C_not;
	
	not (A_not, A);
	not (B_not, B);
	not (c_not, C);
	
	//saida S0 do decodificador
	or And0 (seg_a, A_not, C);
	
	//saida S1 do decodificador
	and And1 (T0, A_not, B_not, C);
	and And2 (T1, A_not, B, C_not);
	and And3 (T2, A, B_not, C_not);
	or Or0 (seg_b, T0, T1, T2);
	
	//saida S2 do decodificador
	or Or1 (T3, A, B);
	or Or2 (T4, A_not, B_not);
	and And4 (seg_c, C_not, T3, T4); 
	
	//saida S3 do decodificador
	and And5 (seg_d, A_not, B_not, C_not);

	
	//saida S4 do decodificador
	or Or4 (seg_g, A_not, B);
	
	

endmodule 