module PBL2(CH7, CH6, CH5, CH4, CH3, CH2, CH1, CH0,
				clk,
				LED0, LED1, LED2, LED3, LED4, LED5, LED6, LED7, LED8, LED9,
				SEG7_A, SEG7_B, SEG7_C, SEG7_D, SEG7_E, SEG7_F, SEG7_G,
				MATRIZ_L0, MATRIZ_L1, MATRIZ_L2, MATRIZ_L3, MATRIZ_L4, MATRIZ_L5, MATRIZ_L6, 
				MATRIZ_C0, MATRIZ_C1, MATRIZ_C2, MATRIZ_C3, MATRIZ_C4,
				teste0, teste1, teste2);
		input CH7, CH6, CH5, CH4, CH3, CH2, CH1, CH0,
				clk;
		output SEG7_A, SEG7_B, SEG7_C, SEG7_D, SEG7_E, SEG7_F, SEG7_G,
				 LED0, LED1, LED2, LED3, LED4, LED5, LED6, LED7, LED8, LED9,
				 MATRIZ_L0, MATRIZ_L1, MATRIZ_L2, MATRIZ_L3, MATRIZ_L4, MATRIZ_L5, MATRIZ_L6, 
				 MATRIZ_C0, MATRIZ_C1, MATRIZ_C2, MATRIZ_C3, MATRIZ_C4,
				 teste0, teste1, teste2;
		//assign T0, T1, T2, T3, T4, T5, T6, T7, T8, T9 ,T10, T11, T12, T13, T14, T15, T16, T17, T18, T19, T20, T21, T22, T23, T24, T25, T26, T27, T28, T29, T30, T31, T32, T33, T34;
		wire [4:0] linha0, linha1, linha2, linha3, linha4, linha5, linha6;
		wire [5:0] out_decod_linha0, out_decod_linha1, out_decod_linha2, out_decod_linha3, out_decod_linha4, out_decod_linha5, out_decod_linha6;
		wire [4:0] mux_matrix0, mux_matrix1, mux_matrix2, mux_matrix3, mux_matrix4, mux_matrix5, mux_matrix6, mux_matrix7, out_matriz; 
		wire div_CLK, cont_0, cont_1, cont_2, cont_0_not, cont_1_not, cont_2_not;
		divisor_clk divisor_clk(clk, CH0, LED0, LED1, LED2, LED3, LED4, LED5, LED6, LED7, LED8, div_CLK);
		
		contador contador(div_CLK, CH0, cont_2, cont_1, cont_0);
		
		not (cont_0_not , cont_0);
		not (cont_1_not , cont_1);
		not (cont_2_not , cont_2);
		
		and and0(linha0[0], 1, 0);
		and and1(linha0[1], 1, 0);
		and and2(linha0[2], 1, 0);
		and and3(linha0[3], 1, 1);
		and and4(linha0[4], 1, 1);
		
		and and5(linha1[0], 1, 1);
		and and6(linha1[1], 1, 1);
		and and7(linha1[2], 1, 0);
		and and8(linha1[3], 1, 0);
		and and9(linha1[4], 1, 0);
		
		and and10(linha2[0], 1, 0);
		and and11(linha2[1], 1, 1);
		and and12(linha2[2], 1, 0);
		and and13(linha2[3], 1, 0);
		and and14(linha2[4], 1, 0);
	
		and and15(linha3[0], 1, 0);
		and and16(linha3[1], 1, 0);
		and and17(linha3[2], 1, 1);
		and and18(linha3[3], 1, 0);
		and and19(linha3[4], 1, 0);
		
		and and20(linha4[0], 1, 1);
		and and21(linha4[1], 1, 0);
		and and22(linha4[2], 1, 1);
		and and23(linha4[3], 1, 1);
		and and24(linha4[4], 1, 0);
		
		and and25(linha5[0], 1, 1);
		and and26(linha5[1], 1, 0);
		and and27(linha5[2], 1, 1);
		and and28(linha5[3], 1, 0);
		and and29(linha5[4], 1, 0);
		
		and and30(linha6[0], 1, 0);
		and and31(linha6[1], 1, 0);
		and and32(linha6[2], 1, 1);
		and and33(linha6[3], 1, 0);
		and and34(linha6[4], 1, 0);
		
//		decod_linha_matriz decod_linha0(linha0, out_decod_linha0);
//		decod_linha_matriz decod_linha1(linha1, out_decod_linha1);
//		decod_linha_matriz decod_linha2(linha2, out_decod_linha2);
//		decod_linha_matriz decod_linha3(linha3, out_decod_linha3);
//		decod_linha_matriz decod_linha4(linha4, out_decod_linha4);
//		decod_linha_matriz decod_linha5(linha5, out_decod_linha5);
//		decod_linha_matriz decod_linha6(linha6, out_decod_linha6);
//		
//		//LINHAS DE UMA ENTRADA DO MUX
//		assign mux_matrix0[0] = linha0[0];
//		assign mux_matrix0[1] = linha0[1];
//		assign mux_matrix0[2] = linha0[2];
//		assign mux_matrix0[3] = linha0[3];
//		assign mux_matrix0[4] = linha0[4];
//
//		
//		assign mux_matrix1[0] = out_decod_linha0[0];
//		assign mux_matrix1[1] = out_decod_linha1[0];
//		assign mux_matrix1[2] = out_decod_linha2[0];
//		assign mux_matrix1[3] = out_decod_linha3[0];
//		assign mux_matrix1[4] = out_decod_linha4[0];
//		assign mux_matrix1[5] = out_decod_linha5[0];
//		assign mux_matrix1[6] = out_decod_linha6[0];
//		assign mux_matrix1[7] = out_decod_linha1[1];
//		assign mux_matrix1[8] = out_decod_linha1[2];
//		assign mux_matrix1[9] = out_decod_linha1[3];
//		assign mux_matrix1[10] = out_decod_linha1[4];
//		assign mux_matrix1[11] = out_decod_linha1[5];
//
//		assign mux_matrix2[0] = out_decod_linha0[0];
//		assign mux_matrix2[1] = out_decod_linha1[0];
//		assign mux_matrix2[2] = out_decod_linha2[0];
//		assign mux_matrix2[3] = out_decod_linha3[0];
//		assign mux_matrix2[4] = out_decod_linha4[0];
//		assign mux_matrix2[5] = out_decod_linha5[0];
//		assign mux_matrix2[6] = out_decod_linha6[0];
//		assign mux_matrix2[7] = out_decod_linha2[1];
//		assign mux_matrix2[8] = out_decod_linha2[2];
//		assign mux_matrix2[9] = out_decod_linha2[3];
//		assign mux_matrix2[10] = out_decod_linha2[4];
//		assign mux_matrix2[11] = out_decod_linha2[5];
//
//		assign mux_matrix3[0] = out_decod_linha0[0];
//		assign mux_matrix3[1] = out_decod_linha1[0];
//		assign mux_matrix3[2] = out_decod_linha2[0];
//		assign mux_matrix3[3] = out_decod_linha3[0];
//		assign mux_matrix3[4] = out_decod_linha4[0];
//		assign mux_matrix3[5] = out_decod_linha5[0];
//		assign mux_matrix3[6] = out_decod_linha6[0];
//		assign mux_matrix3[7] = out_decod_linha3[1];
//		assign mux_matrix3[8] = out_decod_linha3[2];
//		assign mux_matrix3[9] = out_decod_linha3[3];
//		assign mux_matrix3[10] = out_decod_linha3[4];
//		assign mux_matrix3[11] = out_decod_linha3[5];
//		
//		assign mux_matrix4[0] = out_decod_linha0[0];
//		assign mux_matrix4[1] = out_decod_linha1[0];
//		assign mux_matrix4[2] = out_decod_linha2[0];
//		assign mux_matrix4[3] = out_decod_linha3[0];
//		assign mux_matrix4[4] = out_decod_linha4[0];
//		assign mux_matrix4[5] = out_decod_linha5[0];
//		assign mux_matrix4[6] = out_decod_linha6[0];
//		assign mux_matrix4[7] = out_decod_linha4[1];
//		assign mux_matrix4[8] = out_decod_linha4[2];
//		assign mux_matrix4[9] = out_decod_linha4[3];
//		assign mux_matrix4[10] = out_decod_linha4[4];
//		assign mux_matrix4[11] = out_decod_linha4[5];
//		
//		assign mux_matrix5[0] = out_decod_linha0[0];
//		assign mux_matrix5[1] = out_decod_linha1[0];
//		assign mux_matrix5[2] = out_decod_linha2[0];
//		assign mux_matrix5[3] = out_decod_linha3[0];
//		assign mux_matrix5[4] = out_decod_linha4[0];
//		assign mux_matrix5[5] = out_decod_linha5[0];
//		assign mux_matrix5[6] = out_decod_linha6[0];
//		assign mux_matrix5[7] = out_decod_linha5[1];
//		assign mux_matrix5[8] = out_decod_linha5[2];
//		assign mux_matrix5[9] = out_decod_linha5[3];
//		assign mux_matrix5[10] = out_decod_linha5[4];
//		assign mux_matrix5[11] = out_decod_linha5[5];
//		
//		assign mux_matrix6[0] = out_decod_linha0[0];
//		assign mux_matrix6[1] = out_decod_linha1[0];
//		assign mux_matrix6[2] = out_decod_linha2[0];
//		assign mux_matrix6[3] = out_decod_linha3[0];
//		assign mux_matrix6[4] = out_decod_linha4[0];
//		assign mux_matrix6[5] = out_decod_linha5[0];
//		assign mux_matrix6[6] = out_decod_linha6[0];
//		assign mux_matrix6[7] = out_decod_linha6[1];
//		assign mux_matrix6[8] = out_decod_linha6[2];
//		assign mux_matrix6[9] = out_decod_linha6[3];
//		assign mux_matrix6[10] = out_decod_linha6[4];
//		assign mux_matrix6[11] = out_decod_linha6[5];
//		
		



		mux8_1 mux8_1(linha0, linha1, linha2, linha3, linha4, linha5, linha6, linha6, cont_0, cont_1, cont_2, out_matriz);
		and lig_linha0(MATRIZ_L0, cont_0_not, cont_1_not, cont_2_not);
		and lig_linha1(MATRIZ_L1, cont_0_not, cont_1_not, cont_2);
		and lig_linha2(MATRIZ_L2, cont_0_not, cont_1, cont_2_not);
		and lig_linha3(MATRIZ_L3, cont_0_not, cont_1, cont_2);
		and lig_linha4(MATRIZ_L4, cont_0, cont_1_not, cont_2_not);
		and lig_linha5(MATRIZ_L5, cont_0, cont_1_not, cont_2);
		and lig_linha6(MATRIZ_L6, cont_0, cont_1, cont_2_not);
		
		assign MATRIZ_C0 = out_matriz[0];
		assign MATRIZ_C1 = out_matriz[1];
		assign MATRIZ_C2 = out_matriz[2];
		assign MATRIZ_C3 = out_matriz[3];
		assign MATRIZ_C4 = out_matriz[4];
		
		
		
endmodule