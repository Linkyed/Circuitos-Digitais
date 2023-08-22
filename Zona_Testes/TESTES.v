module TESTES( LED0, LED1, LED2, LED3, LED4, LED5, // LEDs
					LEDRGB_red, LEDRGB_green, LEDRGB_blue, // LED RGB 
					CH7, CH6, CH5, CH4, B3, B2, // IE01
					CH3, CH2, CH1, CH0, B1, B0 ); // IE02
					
   input CH7, CH6, CH5, CH4, B3, B2, 
			CH3, CH2, CH1, CH0, B1, B0;
   output LED0, LED1, LED2, LED3, LED4, LED5, 
			 LEDRGB_red, LEDRGB_green, LEDRGB_blue;
			 
	wire [5: 0] Perfil_Funcao0, Perfil_Funcao1;
	wire [11:0] outPrioridade;

	
	
	
	seletorFUN seletorIE01(Perfil_Funcao0, CH7, CH6, CH5, CH4, B3, B2);
	seletorFUN seletorIE02(Perfil_Funcao1, CH3, CH2, CH1, CH0, B1, B0);
	controladorPrioridade verificadorPrioridade(Perfil_Funcao0[0], Perfil_Funcao0[1], Perfil_Funcao0[2],
												Perfil_Funcao0[3], Perfil_Funcao0[4], Perfil_Funcao0[5],
												Perfil_Funcao1[0], Perfil_Funcao1[1], Perfil_Funcao1[2],
												Perfil_Funcao1[3], Perfil_Funcao1[4], Perfil_Funcao1[5], outPrioridade);
	
	assign LED5 = outPrioridade[0];
	assign LED4 = outPrioridade[1];
	assign LED3 = outPrioridade[2];
	assign LED2 = outPrioridade[6];
	assign LED1 = outPrioridade[7];
	assign LED0 = outPrioridade[8];
//	assign S0 = BinPERFIL0[0];
//	assign S1 = BinPERFIL0[1];
//	assign S2 = BinPERFIL1[0];
//	assign S3 = BinPERFIL1[1];
//	assign LEDRGB_red = IE01_equal_IE02;
//	assign LEDRGB_green = IE01_less_IE02;
//	assign LEDRGB_blue = IE01_greater_IE02;
	//assign S2 = LEDs[2];
	//assign S3 = LEDs[3];
	//assign S4 = LEDs[4];
	//assign S5 = LEDs[5];
endmodule