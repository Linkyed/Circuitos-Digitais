module decod_cordenadas(A, B, C, D, E, F, out0, out1, out2, out3, out4, out5, out6);
	input A, B, C, D, E, F;
	output [4:0] out0, out1, out2, out3, out4, out5, out6;
	
	wire A_not, B_not, C_not, D_not, E_not, F_not;
	
	not (A_not, A);
	not (B_not, B);
	not (C_not, C);
	not (D_not, D);
	not (E_not, E);
	not (F_not, F);
	
	//LINHA 1 DA MATRIZ
	and And0 (out0[0], A_not, B_not, C_not, D_not, E_not, F_not);
	and And1 (out0[1], A_not, B_not, C_not, D_not, E_not, F);
	and And2 (out0[2], A_not, B_not, C_not, D_not, E, F_not);
	and And3 (out0[3], A_not, B_not, C_not, D_not, E, F);
	and And4 (out0[4], A_not, B_not, C_not, D, E_not, F_not);
	
	//LINHA 2 DA MATRIZ
	and And5 (out1[0], A_not, B_not, C, D_not, E_not, F_not);
	and And6 (out1[1], A_not, B_not, C, D_not, E_not, F);
	and And7 (out1[2], A_not, B_not, C, D_not, E, F_not);
	and And8 (out1[3], A_not, B_not, C, D_not, E, F);
	and And9 (out1[4], A_not, B_not, C, D, E_not, F_not);
	
	//LINHA 3 DA MATRIZ
	and And10 (out2[0], A_not, B, C_not, D_not, E_not, F_not);
	and And11 (out2[1], A_not, B, C_not, D_not, E_not, F);
	and And12 (out2[2], A_not, B, C_not, D_not, E, F_not);
	and And13 (out2[3], A_not, B, C_not, D_not, E, F);
	and And14 (out2[4], A_not, B, C_not, D, E_not, F_not);
	
	//LINHA 4 DA MATRIZ
	and And15 (out3[0], A_not, B, C, D_not, E_not, F_not);
	and And16 (out3[1], A_not, B, C, D_not, E_not, F);
	and And17 (out3[2], A_not, B, C, D_not, E, F_not);
	and And18 (out3[3], A_not, B, C, D_not, E, F);
	and And19 (out3[4], A_not, B, C, D, E_not, F_not);
	
	//LINHA 5 DA MATRIZ
	and And20 (out4[0], A, B_not, C_not, D_not, E_not, F_not);
	and And21 (out4[1], A, B_not, C_not, D_not, E_not, F);
	and And22 (out4[2], A, B_not, C_not, D_not, E, F_not);
	and And23 (out4[3], A, B_not, C_not, D_not, E, F);
	and And24 (out4[4], A, B_not, C_not, D, E_not, F_not);
	
	//LINHA 6 DA MATRIZ
	and And25 (out5[0], A, B_not, C, D_not, E_not, F_not);
	and And26 (out5[1], A, B_not, C, D_not, E_not, F);
	and And27 (out5[2], A, B_not, C, D_not, E, F_not);
	and And28 (out5[3], A, B_not, C, D_not, E, F);
	and And29 (out5[4], A, B_not, C, D, E_not, F_not);
	
	//LINHA 7 DA MATRIZ
	and And30 (out6[0], A, B, C_not, D_not, E_not, F_not);
	and And31 (out6[1], A, B, C_not, D_not, E_not, F);
	and And32 (out6[2], A, B, C_not, D_not, E, F_not);
	and And33 (out6[3], A, B, C_not, D_not, E, F);
	and And34 (out6[4], A, B, C_not, D, E_not, F_not);
	

endmodule 