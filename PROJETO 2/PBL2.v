module PBL2(CH7, CH6, CH5, CH4, CH3, CH2, CH1, CH0,
				B0, B1,
				clk,
				SEG7_A, SEG7_B, SEG7_C, SEG7_D, SEG7_E, SEG7_F, SEG7_G,
				MATRIZ_L0, MATRIZ_L1, MATRIZ_L2, MATRIZ_L3, MATRIZ_L4, MATRIZ_L5, MATRIZ_L6, 
				MATRIZ_C0, MATRIZ_C1, MATRIZ_C2, MATRIZ_C3, MATRIZ_C4,
				SEG7_Dig0, SEG7_Dig1, SEG7_Dig2, SEG7_Dig3,
				LED_R, LED_G);
				
		input CH7, CH6, CH5, CH4, CH3, CH2, CH1, CH0, B0, B1,
				clk;
		output SEG7_A, SEG7_B, SEG7_C, SEG7_D, SEG7_E, SEG7_F, SEG7_G,
				SEG7_Dig0, SEG7_Dig1, SEG7_Dig2, SEG7_Dig3, 
				 MATRIZ_L0, MATRIZ_L1, MATRIZ_L2, MATRIZ_L3, MATRIZ_L4, MATRIZ_L5, MATRIZ_L6, 
				 MATRIZ_C0, MATRIZ_C1, MATRIZ_C2, MATRIZ_C3, MATRIZ_C4,
				 LED_R, LED_G;
				 
		wire [4:0] p_linha1, p_linha2, p_linha3, p_linha4, p_linha5, p_linha6, p_linha7;
		wire [6:0] modo_jogo_7seg, linha_numero, coluna_letra, mapa_numero, ligar_linhas_matriz;
		wire [3:0] digitos_7seg, modos_jogo;
		wire [34:0] mapa;
		
		wire div_CLK, 
		cont_2bit1, cont_2bit0, 
		cont_3bit2, cont_3bit1, cont_3bit0, 
		cont_mapa_bit2, cont_mapa_bit1, cont_mapa_bit0,
		B0_not,
		ch7_mod_jogo, ch6_mod_jogo, ch5_mod_jogo, ch4_mod_jogo, ch3_mod_jogo, ch2_mod_jogo,
		digito_7seg0, digito_7seg1, digito_7seg2, digito_7seg3, digito0_aux, digito1_aux, digito2_aux, digito3_aux,
		ch7_atk, ch6_atk, ch5_atk, ch4_atk, ch3_atk, ch2_atk,
		modo_desligado0, modo_desligado1, modo_ataque, modo_posicionamento, modo_p_inv, modo_a_inv, modo_d0_inv, modo_d1_inv,
		alterar_mapa,
		atualizar_led, acerto_erro, ligar_led_rgb, ligar_led_inv,
		out_unidade0, out_unidade1, out_unidade2, out_unidade3, out_unidade4, out_unidade5, out_unidade6, out_unidade7, out_unidade8, out_unidade9, out_unidade10,
		out_unidade11, out_unidade12, out_unidade13, out_unidade14, out_unidade15, out_unidade16, out_unidade17, out_unidade18, out_unidade19, out_unidade20, out_unidade21,
		out_unidade22, out_unidade23, out_unidade24, out_unidade25, out_unidade26, out_unidade27, out_unidade28, out_unidade29, out_unidade30, out_unidade31, out_unidade32,
		out_unidade33, out_unidade34,
		verf_acerto_erro0, verf_acerto_erro1, verf_acerto_erro2, verf_acerto_erro3, verf_acerto_erro4, verf_acerto_erro5, verf_acerto_erro6, verf_acerto_erro7, verf_acerto_erro8, verf_acerto_erro9, verf_acerto_erro10,
		verf_acerto_erro11, verf_acerto_erro12, verf_acerto_erro13, verf_acerto_erro14, verf_acerto_erro15, verf_acerto_erro16, verf_acerto_erro17, verf_acerto_erro18, verf_acerto_erro19, verf_acerto_erro20, verf_acerto_erro21,
		verf_acerto_erro22, verf_acerto_erro23, verf_acerto_erro24, verf_acerto_erro25, verf_acerto_erro26, verf_acerto_erro27, verf_acerto_erro28, verf_acerto_erro29, verf_acerto_erro30, verf_acerto_erro31, verf_acerto_erro32,
		verf_acerto_erro33, verf_acerto_erro34;
		
		divisor_clk divisor_clk (clk, 1, div_CLK);
		
		contador_sin_3bit contador_3bit (div_CLK, 1, cont_3bit2, cont_3bit1, cont_3bit0);
		contador_sin_2bit contador_2bit (div_CLK, 1, cont_2bit1, cont_2bit0);
		
		decod_2_pra_4 verf_modo_jogo (CH1, CH0, modo_desligado0, modo_ataque, modo_posicionamento, modo_desligado1);
		
		and And00 (alterar_mapa, modo_posicionamento, B1);
		
		contador_sin_3bit contador_3bit_mapa (alterar_mapa, 1, cont_mapa_bit2, cont_mapa_bit1, cont_mapa_bit0);
		
		decod_mapa decod_mapas (cont_mapa_bit2, cont_mapa_bit1, cont_mapa_bit0, mapa);
		
		decod_modo_de_jogo d_modo_jogo (CH1, CH0, modo_jogo_7seg[0], modo_jogo_7seg[2], modo_jogo_7seg[3], modo_jogo_7seg[5]);
		decod_num_7seg d_linha_numero (CH7, CH6, CH5, linha_numero[0], linha_numero[1], linha_numero[2], linha_numero[3], linha_numero[4], linha_numero[5], linha_numero[6]);
		decod_num_7seg d_mapa_numero (cont_mapa_bit2, cont_mapa_bit1, cont_mapa_bit0, mapa_numero[0], mapa_numero[1], mapa_numero[2], mapa_numero[3], mapa_numero[4], mapa_numero[5], mapa_numero[6]);
		decod_coluna_letra d_coluna_letra (CH4, CH3, CH2, coluna_letra[0], coluna_letra[1], coluna_letra[2], coluna_letra[3], coluna_letra[5], coluna_letra[6]);
		
		mux4_1 mux_7segmentos (modo_jogo_7seg, mapa_numero, linha_numero, coluna_letra, cont_2bit0, cont_2bit1, SEG7_A, SEG7_B, SEG7_C, SEG7_D, SEG7_E, SEG7_F, SEG7_G);
		
		decod_2_pra_4 decod_digitos_7seg (cont_2bit0, cont_2bit1, digito0_aux, digito1_aux, digito2_aux, digito3_aux);
		
		not (digito_7seg0, digito0_aux);
		not (digito_7seg1, digito1_aux);
		not (digito_7seg2, digito2_aux);
		not (digito_7seg3, digito3_aux);
		
		not (modo_p_inv, modo_posicionamento);
		not (modo_a_inv, modo_ataque);
		
		wire SEG7_Dig0 = digito_7seg0;
		or Or1 (SEG7_Dig1, digito_7seg1, modo_p_inv);
		or Or2 (SEG7_Dig2, digito_7seg2, modo_a_inv);
		or Or3 (SEG7_Dig3, digito_7seg3, modo_a_inv);
		
		not (B0_not, B0);
		
		conf_chave ch7 (CH7, modo_ataque, B0_not, ch7_mod_jogo, ch7_atk);
		conf_chave ch6 (CH6, modo_ataque, B0_not, ch6_mod_jogo, ch6_atk);
		conf_chave ch5 (CH5, modo_ataque, B0_not, ch5_mod_jogo, ch5_atk);
		conf_chave ch4 (CH4, modo_ataque, B0_not, ch4_mod_jogo, ch4_atk);
		conf_chave ch3 (CH3, modo_ataque, B0_not, ch3_mod_jogo, ch3_atk);
		conf_chave ch2 (CH2, modo_ataque, B0_not, ch2_mod_jogo, ch2_atk);
		
		decod_cordenadas decod_cordenadas(ch7_atk, ch6_atk, ch5_atk, ch4_atk, ch3_atk, ch2_atk, p_linha1, p_linha2, p_linha3, p_linha4, p_linha5, p_linha6, p_linha7);

		//VERIFICAR ACERTO DO ATAQUE
		verf_acerto_ataque verf_unidade0 (mapa[0], p_linha1[0], modo_ataque, div_CLK, out_unidade0, verf_acerto_erro0);
		verf_acerto_ataque verf_unidade1 (mapa[1], p_linha1[1], modo_ataque, div_CLK, out_unidade1, verf_acerto_erro1);
		verf_acerto_ataque verf_unidade2 (mapa[2], p_linha1[2], modo_ataque, div_CLK, out_unidade2, verf_acerto_erro2);
		verf_acerto_ataque verf_unidade3 (mapa[3], p_linha1[3], modo_ataque, div_CLK, out_unidade3, verf_acerto_erro3);
		verf_acerto_ataque verf_unidade4 (mapa[4], p_linha1[4], modo_ataque, div_CLK, out_unidade4, verf_acerto_erro4);
		
		verf_acerto_ataque verf_unidade5 (mapa[5], p_linha2[0], modo_ataque, div_CLK, out_unidade5, verf_acerto_erro5);
		verf_acerto_ataque verf_unidade6 (mapa[6], p_linha2[1], modo_ataque, div_CLK, out_unidade6, verf_acerto_erro6);
		verf_acerto_ataque verf_unidade7 (mapa[7], p_linha2[2], modo_ataque, div_CLK, out_unidade7, verf_acerto_erro7);
		verf_acerto_ataque verf_unidade8 (mapa[8], p_linha2[3], modo_ataque, div_CLK, out_unidade8, verf_acerto_erro8);
		verf_acerto_ataque verf_unidade9 (mapa[9], p_linha2[4], modo_ataque, div_CLK, out_unidade9, verf_acerto_erro9);

		verf_acerto_ataque verf_unidade10 (mapa[10], p_linha3[0], modo_ataque, div_CLK, out_unidade10, verf_acerto_erro10);
		verf_acerto_ataque verf_unidade11 (mapa[11], p_linha3[1], modo_ataque, div_CLK, out_unidade11, verf_acerto_erro11);
		verf_acerto_ataque verf_unidade12 (mapa[12], p_linha3[2], modo_ataque, div_CLK, out_unidade12, verf_acerto_erro12);
		verf_acerto_ataque verf_unidade13 (mapa[13], p_linha3[3], modo_ataque, div_CLK, out_unidade13, verf_acerto_erro13);
		verf_acerto_ataque verf_unidade14 (mapa[14], p_linha3[4], modo_ataque, div_CLK, out_unidade14, verf_acerto_erro14);

		verf_acerto_ataque verf_unidade15 (mapa[15], p_linha4[0], modo_ataque, div_CLK, out_unidade15, verf_acerto_erro15);
		verf_acerto_ataque verf_unidade16 (mapa[16], p_linha4[1], modo_ataque, div_CLK, out_unidade16, verf_acerto_erro16);
		verf_acerto_ataque verf_unidade17 (mapa[17], p_linha4[2], modo_ataque, div_CLK, out_unidade17, verf_acerto_erro17);
		verf_acerto_ataque verf_unidade18 (mapa[18], p_linha4[3], modo_ataque, div_CLK, out_unidade18, verf_acerto_erro18);
		verf_acerto_ataque verf_unidade19 (mapa[19], p_linha4[4], modo_ataque, div_CLK, out_unidade19, verf_acerto_erro19);


		verf_acerto_ataque verf_unidade20 (mapa[20], p_linha5[0], modo_ataque, div_CLK, out_unidade20, verf_acerto_erro20);
		verf_acerto_ataque verf_unidade21 (mapa[21], p_linha5[1], modo_ataque, div_CLK, out_unidade21, verf_acerto_erro21);
		verf_acerto_ataque verf_unidade22 (mapa[22], p_linha5[2], modo_ataque, div_CLK, out_unidade22, verf_acerto_erro22);
		verf_acerto_ataque verf_unidade23 (mapa[23], p_linha5[3], modo_ataque, div_CLK, out_unidade23, verf_acerto_erro23);
		verf_acerto_ataque verf_unidade24 (mapa[24], p_linha5[4], modo_ataque, div_CLK, out_unidade24, verf_acerto_erro24);

		verf_acerto_ataque verf_unidade25 (mapa[25], p_linha6[0], modo_ataque, div_CLK, out_unidade25, verf_acerto_erro25);
		verf_acerto_ataque verf_unidade26 (mapa[26], p_linha6[1], modo_ataque, div_CLK, out_unidade26, verf_acerto_erro26);
		verf_acerto_ataque verf_unidade27 (mapa[27], p_linha6[2], modo_ataque, div_CLK, out_unidade27, verf_acerto_erro27);
		verf_acerto_ataque verf_unidade28 (mapa[28], p_linha6[3], modo_ataque, div_CLK, out_unidade28, verf_acerto_erro28);
		verf_acerto_ataque verf_unidade29 (mapa[29], p_linha6[4], modo_ataque, div_CLK, out_unidade29, verf_acerto_erro29);

		verf_acerto_ataque verf_unidade30 (mapa[30], p_linha7[0], modo_ataque, div_CLK, out_unidade30, verf_acerto_erro30);
		verf_acerto_ataque verf_unidade31 (mapa[31], p_linha7[1], modo_ataque, div_CLK, out_unidade31, verf_acerto_erro31);
		verf_acerto_ataque verf_unidade32 (mapa[32], p_linha7[2], modo_ataque, div_CLK, out_unidade32, verf_acerto_erro32);
		verf_acerto_ataque verf_unidade33 (mapa[33], p_linha7[3], modo_ataque, div_CLK, out_unidade33, verf_acerto_erro33);
		verf_acerto_ataque verf_unidade34 (mapa[34], p_linha7[4], modo_ataque, div_CLK, out_unidade34, verf_acerto_erro34);
		
		
		mux8_1 mux8_1(out_unidade0, out_unidade1, out_unidade2, out_unidade3, out_unidade4, 
		out_unidade5, out_unidade6, out_unidade7, out_unidade8, out_unidade9, 
		out_unidade10, out_unidade11, out_unidade12, out_unidade13, out_unidade14, 
		out_unidade15, out_unidade16, out_unidade17, out_unidade18, out_unidade19, 
		out_unidade20, out_unidade21, out_unidade22, out_unidade23, out_unidade24, 
		out_unidade25, out_unidade26, out_unidade27, out_unidade28, out_unidade29, 
		out_unidade30, out_unidade31, out_unidade32, out_unidade33, out_unidade34, 
		out_unidade30, out_unidade31, out_unidade32, out_unidade33, out_unidade34, 
		cont_3bit0, cont_3bit1, cont_3bit2, 
		MATRIZ_C0, MATRIZ_C1, MATRIZ_C2, MATRIZ_C3, MATRIZ_C4);
		
		decod_3_pra_8 decod_linhas_matriz (cont_3bit0, cont_3bit1, cont_3bit2, ligar_linhas_matriz);
		
		not (MATRIZ_L0, ligar_linhas_matriz[0]);
		not (MATRIZ_L1, ligar_linhas_matriz[1]);
		not (MATRIZ_L2, ligar_linhas_matriz[2]);
		not (MATRIZ_L3, ligar_linhas_matriz[3]);
		not (MATRIZ_L4, ligar_linhas_matriz[4]);
		not (MATRIZ_L5, ligar_linhas_matriz[5]);
		not (MATRIZ_L6, ligar_linhas_matriz[6]);
		
		not (modo_d0_inv, modo_desligado1);
		not (modo_d1_inv, modo_desligado0);
		
		and And35 (atualizar_led, B0, modo_d0_inv, modo_p_inv, modo_d1_inv);

		or Or0 (acerto_erro, verf_acerto_erro0, verf_acerto_erro1, verf_acerto_erro2, verf_acerto_erro3, verf_acerto_erro4,
								verf_acerto_erro5, verf_acerto_erro6, verf_acerto_erro7, verf_acerto_erro8, verf_acerto_erro9,
								verf_acerto_erro10, verf_acerto_erro11, verf_acerto_erro12, verf_acerto_erro13, verf_acerto_erro14,
								verf_acerto_erro15, verf_acerto_erro16, verf_acerto_erro17, verf_acerto_erro18, verf_acerto_erro19,
								verf_acerto_erro20, verf_acerto_erro21, verf_acerto_erro22, verf_acerto_erro23, verf_acerto_erro24,
								verf_acerto_erro25, verf_acerto_erro26, verf_acerto_erro27, verf_acerto_erro28, verf_acerto_erro29,
								verf_acerto_erro30, verf_acerto_erro31, verf_acerto_erro32, verf_acerto_erro33, verf_acerto_erro34);

		d_ff d0 ( .d(acerto_erro),
			.rstn(1),
			.clk(atualizar_led),
			.q(ligar_led_rgb)
		);
		
		not (ligar_led_inv, ligar_led_rgb);
		
		
		and And36 (LED_G, ligar_led_rgb, modo_ataque);
		and And37(LED_R, ligar_led_inv, modo_ataque);
		
		
endmodule