module decod_modo_de_jogo(A, B, seg_a, seg_c, seg_d, seg_f);
	input A, B;
	output seg_a, seg_c, seg_d, seg_f;
	
	wire A_not, B_not;
	
	not (A_not, A);
	not (B_not, B);
	
	//saida S0 e S3 do decodificador
	and And0(T0, A_not, B_not);
	and And1(T1, A, B);
	or Or0 (T2, T0, T1);
	
	wire seg_a = T2;
	wire seg_f = T2;
	
	// saida s1 do decodificador
	and And2(seg_c, A, B_not);
	
	
	// saida s2 do decodificador
	and And3(T3, A_not, B);
	and And4(T4, A, B_not);
	or Or1 (seg_d, T2, T3);
	


endmodule 