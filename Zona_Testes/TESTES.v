module TESTES( LED0, LED1, LED2, LED3, LED4, LED5, // LEDs
					M_LED0, M_LED1, M_LED2, M_LED3, M_LED4, M_LED5, M_LED6, MCOL_LED0,
					RGB_r, RGB_g, RGB_b, // LED RGB 
					CH7, CH6, CH5, CH4, B3, B2, // IE01
					CH3, CH2, CH1, CH0, B1, B0 ); // IE02
					
   input CH7, CH6, CH5, CH4, B3, B2, 
			CH3, CH2, CH1, CH0, B1, B0;
			
   output LED0, LED1, LED2, LED3, LED4, LED5, 
			 RGB_r, RGB_g, RGB_b,
			 M_LED0, M_LED1, M_LED2, M_LED3, M_LED4, M_LED5, M_LED6, MCOL_LED0;
			 
	wire [1:0] BIN_IE01, BIN_IE02, S_FUN02;
	wire [2: 0] FUN_IE01, FUN_IE02, auxPERF0, auxPERF1, F_PER7SEG, LEDs_IE01, MATRIZ_IE01,
	LEDs_IE02, MATRIZ_IE02, FUN2_P0, FUN2_P1, FUN2_P_VER;
	wire [11:0] outPrioridade;
	wire IE01_FUN2, IE02_FUN2, PRIO, PRIO_not, FUN_IGUAIS, atv_PRIO_IE01, atv_PRIO_IE02, SEG7_IE01, SEG7_IE02, atv_PRIO,
	atv_PRIO_not;


	conversor_perfil_binario CONV_IE01 (CH7, CH6, CH5, BIN_IE01);
	conversor_perfil_binario CONV_IE02 (CH3, CH2, CH1, BIN_IE02);
	
	seletorFUN seletorIE01(FUN_IE01, CH7, CH6, CH5, CH4, B3, B2);
	seletorFUN seletorIE02(FUN_IE02, CH3, CH2, CH1, CH0, B1, B0);
	
	comp_FUN comp_FUN (FUN_IE01[0], FUN_IE01[1], FUN_IE01[2], FUN_IE02[0], FUN_IE02[1], FUN_IE02[2], FUN_IGUAIS);
	
	controladorPrioridade CON_PRIO (BIN_IE01, BIN_IE02, PRIO, RGB_r, RGB_g, RGB_b); 
	
	not inv_PRIO (PRIO_not, PRIO);
	
	atv_PRIO atv_PRIO0 (PRIO, FUN_IGUAIS, atv_PRIO_IE01);
	atv_PRIO atv_PRIO1 (PRIO_not, FUN_IGUAIS, atv_PRIO_IE02);

	
	
	enc_FUN enc_IE01 (FUN_IE01[0], FUN_IE01[1], FUN_IE01[2], atv_PRIO_IE01, BIN_IE01[0], LEDs_IE01, MATRIZ_IE01, SEG7_IE01);
	enc_FUN enc_IE02 (FUN_IE02[0], FUN_IE02[1], FUN_IE02[2], atv_PRIO_IE02, BIN_IE02[0], LEDs_IE02, MATRIZ_IE02, SEG7_IE02);
	
	wire LED0 = LEDs_IE01[0];
	wire LED1 = LEDs_IE01[1];
	wire LED2 = LEDs_IE01[2];
	wire LED3 = LEDs_IE02[0];
	wire LED4 = LEDs_IE02[1];
	wire LED5 = LEDs_IE02[2];
	
	wire MCOL_LED0 = 1;
	not (M_LED0, MATRIZ_IE01[0]);
	not (M_LED1, MATRIZ_IE01[1]);
	not (M_LED2, MATRIZ_IE01[2]);
	not (M_LED3, MATRIZ_IE02[0]);
	not (M_LED4, MATRIZ_IE02[1]);
	not (M_LED5, MATRIZ_IE02[2]);
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