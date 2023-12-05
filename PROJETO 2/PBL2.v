module PBL2(CH7, CH6, CH5, CH4, CH3, CH2, CH1, CH0,
				B0, B1, B2, B3,
				clk,
				LED0, LED1, LED2, LED3, LED4, LED5, LED6, LED7, LED8, LED9,
				SEG7_A, SEG7_B, SEG7_C, SEG7_D, SEG7_E, SEG7_F, SEG7_G,
				MATRIZ_L0, MATRIZ_L1, MATRIZ_L2, MATRIZ_L3, MATRIZ_L4, MATRIZ_L5, MATRIZ_L6, 
				MATRIZ_C0, MATRIZ_C1, MATRIZ_C2, MATRIZ_C3, MATRIZ_C4,
				teste0, teste1, teste2);
		input CH7, CH6, CH5, CH4, CH3, CH2, CH1, CH0, B0, B1, B2, B3,
				clk;
		output SEG7_A, SEG7_B, SEG7_C, SEG7_D, SEG7_E, SEG7_F, SEG7_G,
				 LED0, LED1, LED2, LED3, LED4, LED5, LED6, LED7, LED8, LED9,
				 MATRIZ_L0, MATRIZ_L1, MATRIZ_L2, MATRIZ_L3, MATRIZ_L4, MATRIZ_L5, MATRIZ_L6, 
				 MATRIZ_C0, MATRIZ_C1, MATRIZ_C2, MATRIZ_C3, MATRIZ_C4,
				 teste0, teste1, teste2;
		//assign T0, T1, T2, T3, T4, T5, T6, T7, T8, T9 ,T10, T11, T12, T13, T14, T15, T16, T17, T18, T19, T20, T21, T22, T23, T24, T25, T26, T27, T28, T29, T30, T31, T32, T33, T34;
		wire [4:0] linha0, linha1, linha2, linha3, linha4, linha5, linha6, p_linha0, out_linha0;
		wire [5:0] out_decod_linha0, out_decod_linha1, out_decod_linha2, out_decod_linha3, out_decod_linha4, out_decod_linha5, out_decod_linha6;
		wire [4:0] mux_matrix0, mux_matrix1, mux_matrix2, mux_matrix3, mux_matrix4, mux_matrix5, mux_matrix6, mux_matrix7, out_matriz; 
		wire [6:0] modo_jogo_7seg, linha_numero, coluna_letra, split;
		wire div_CLK, cont_0, cont_1, cont_2, cont_0_not, cont_1_not, cont_2_not;
		divisor_clk divisor_clk (clk, B0, div_CLK);
		
		contador_sin_2bit contador (div_CLK, B0, cont_2bit1, cont_2bit0);
		
		decod_modo_de_jogo d_modo_jogo (CH0, CH1, modo_jogo_7seg[0], modo_jogo_7seg[2], modo_jogo_7seg[3], modo_jogo_7seg[5]);
		
		decod_linha_numero d_linha_numero (CH7, CH6, CH5, linha_numero[0], linha_numero[1], linha_numero[2], linha_numero[3], linha_numero[4], linha_numero[5], linha_numero[6]);

		decod_coluna_letra d_coluna_letra (CH4, CH3, CH2, coluna_letra[0], coluna_letra[1], coluna_letra[2], coluna_letra[3], coluna_letra[6]);
		
		not (split[0], 0);
		not (split[1], 0);
		not (split[2], 0);
		not (split[3], 0);
		not (split[4], 0);
		not (split[5], 0);
		not (split[6], 1);
		
		mux4_1 mux_7segmentos (modo_jogo_7seg, split, linha_numero, coluna_letra, cont_2bit0, cont_2bit1, SEG7_A, SEG7_B, SEG7_C, SEG7_D, SEG7_E, SEG7_F, SEG7_G);
		
endmodule