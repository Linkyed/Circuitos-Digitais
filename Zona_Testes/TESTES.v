module TESTES( LED0, LED2, LED3, LED5, // LEDs
					M_LED0, M_LED2, M_LED3, M_LED4, M_LED5, M_LED6, MCOL_LED0,
					RGB_r, // LED RGB 
					CH7, CH6, CH5, CH4, B3, B2, // IE01
					CH3, CH2, CH1, CH0, B1, B0, // IE02
					SEG7_a, SEG7_b, SEG7_c, SEG7_d, SEG7_e, SEG7_f, SEG7_g); 
					
   input CH7, CH6, CH5, CH4, B3, B2, 
			CH3, CH2, CH1, CH0, B1, B0;
			
   output LED0, LED2, LED3, LED5, 
			 RGB_r,
			 M_LED0, M_LED2, M_LED3, M_LED4, M_LED5, M_LED6, MCOL_LED0,
			 SEG7_a, SEG7_b, SEG7_c, SEG7_d, SEG7_e, SEG7_f, SEG7_g;
			 
	wire [1:0] BIN_IE01, BIN_IE02, SEG7_atv_per;
	wire [2: 0] FUN_IE01, FUN_IE02, LEDs_IE01, MATRIZ_IE01,
	LEDs_IE02, MATRIZ_IE02;
	wire IE01_FUN2, IE02_FUN2, PRIO, PRIO_not, FUN_IGUAIS, atv_PRIO_IE01, atv_PRIO_IE02, SEG7_IE01, SEG7_IE02, atv_PRIO,
	atv_PRIO_not, P_SEG7_0, P_SEG7_1, P_SEG7_2, ver_PIE01, ver_PIE02;


	conversor_perfil_binario CONV_IE01 (CH7, CH6, CH5, BIN_IE01);
	conversor_perfil_binario CONV_IE02 (CH3, CH2, CH1, BIN_IE02);
	
	seletorFUN seletorIE01(FUN_IE01, CH7, CH6, CH5, CH4, B3, B2);
	seletorFUN seletorIE02(FUN_IE02, CH3, CH2, CH1, CH0, B1, B0);
	
	comp_FUN comp_FUN (FUN_IE01[0], FUN_IE01[1], FUN_IE01[2], FUN_IE02[0], FUN_IE02[1], FUN_IE02[2], FUN_IGUAIS);
	
	controladorPrioridade CON_PRIO (BIN_IE01, BIN_IE02, PRIO); 
	
	not inv_PRIO (PRIO_not, PRIO);
	
	atv_PRIO atv_PRIO0 (PRIO, FUN_IGUAIS, atv_PRIO_IE01);
	atv_PRIO atv_PRIO1 (PRIO_not, FUN_IGUAIS, atv_PRIO_IE02);

	
	
	enc_FUN enc_IE01 (FUN_IE01[0], FUN_IE01[1], FUN_IE01[2], atv_PRIO_IE01, BIN_IE01[0], LEDs_IE01, MATRIZ_IE01, SEG7_IE01);
	enc_FUN enc_IE02 (FUN_IE02[0], FUN_IE02[1], FUN_IE02[2], atv_PRIO_IE02, BIN_IE02[0], LEDs_IE02, MATRIZ_IE02, SEG7_IE02);
	
	decisor decisor (SEG7_IE01, SEG7_IE02, SEG7_atv_per);
	
	enc_perf enc_p_0 (CH7, CH3, SEG7_atv_per[0], SEG7_atv_per[1], P_SEG7_0);
	enc_perf enc_p_1 (CH6, CH2, SEG7_atv_per[0], SEG7_atv_per[1], P_SEG7_1);
	enc_perf enc_p_2 (CH5, CH1, SEG7_atv_per[0], SEG7_atv_per[1], P_SEG7_2);
	
	decod_Leds Ligar_Leds(LEDs_IE01[0], LEDs_IE01[1], LEDs_IE01[2],LEDs_IE02[0], LEDs_IE02[1], LEDs_IE02[2], LED0, LED2, LED3, LED5);
	
	wire MCOL_LED0 = 1;
	decod_Matriz Ligar_MLeds(MATRIZ_IE01[0], MATRIZ_IE01[1], MATRIZ_IE01[2],MATRIZ_IE02[0], MATRIZ_IE02[1], MATRIZ_IE02[2], M_LED0, M_LED2, M_LED3, M_LED4 , M_LED5, M_LED6);
	
	decod_7seg Ligar_7seg (SEG7_a, SEG7_b, SEG7_c, SEG7_d, SEG7_e, SEG7_f, SEG7_g, P_SEG7_0, P_SEG7_0, P_SEG7_2);
	
	verfi_perf verf_p_IE01 (CH7, CH6, CH5, ver_PIE01);
	verfi_perf verf_p_IE02 (CH3, CH2, CH1, ver_PIE02);
	
	nor (RGB_r, ver_PIE01, ver_PIE02);

	//tristate_buffer t_buff (CH7, CH6, LED0); 
	
	//selec_FUN2 SEL_FUN2_IE01 (CH3, CH2, CH1, SEG7_IE01, atv_PRIO_IE01, FUN2_P0);
	//selec_FUN2 SEL_FUN2_IE02 (CH7, CH6, CH5, SEG7_IE02, atv_PRIO_IE02, FUN2_P1);
	
	//FUN2_P_S FUN2_P_SEL (FUN2_P0[0], FUN2_P0[1], FUN2_P0[2], FUN2_P1[0], FUN2_P1[1], FUN2_P1[2], FUN2_P_VER);
	
	//wire LED0 = FUN2_P_VER[0];
	//wire LED1 = FUN2_P_VER[1];
	//wire LED2 = FUN2_P_VER[2];

//	controladorPrioridade verificadorPrioridade(Perfil_Funcao0[0], Perfil_Funcao0[1], Perfil_Funcao0[2],
//												Perfil_Funcao0[3], Perfil_Funcao0[4], Perfil_Funcao0[5],
//												Perfil_Funcao1[0], Perfil_Funcao1[1], Perfil_Funcao1[2],
//												Perfil_Funcao1[3], Perfil_Funcao1[4], Perfil_Funcao1[5], 
//												outPrioridade, LEDRGB_red, LEDRGB_green, LEDRGB_blue);
	
//	assign LED5 = outPrioridade[0];
//	assign LED4 = outPrioridade[1];
//	assign LED3 = outPrioridade[2];
//	assign LED2 = outPrioridade[6];
//	assign LED1 = outPrioridade[7];
//	assign LED0 = outPrioridade[8];

endmodule