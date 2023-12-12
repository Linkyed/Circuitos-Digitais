module decod_linha_numero(A, B, C, seg_a, seg_b, seg_c, seg_d, seg_e, seg_f, seg_g);
	input A, B, C;
	output seg_a, seg_b, seg_c, seg_d, seg_e, seg_f, seg_g;
	
	wire A_not, B_not, C_not,
	T0, T1, T2, T3, T4, T5;
	
	not (A_not, A);
	not (B_not, B);
	not (C_not, C);
	
	//saida S0 do decodificador
	and And0 (T0, A_not, B_not, C_not);
	and And1 (T1, A_not, B, C);
	or Or0 (seg_a, T0, T1);
	
	//saida S1 do decodificador
	and And2 (seg_b, A, B_not);
	
	//saida S2 do decodificador
	and And3 (seg_c, A_not, B_not, C);
	
	//saida S3 do decodificador
	and And4 (T2, A, B, C_not);
	or Or1 (seg_d, T0, T1, T2);
	
	//saida S4 do decodificador
	and And5 (T3, A_not, B);
	or Or2 (seg_e, T3, C_not);
	
	//saida S5 do decodificador
	and And6 (T4, A_not, B_not);
	and And7 (T5, B, C_not);
	or Or3 (seg_f, T4, T5);
	
	//saida S6 do decodificador
	or Or4 (seg_g, T0, T2);
	
	

endmodule 