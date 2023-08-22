module PBLv01(CH7, CH6, CH5, CH4, CH3, CH2, CH1, CH0, B3, B2);
   input CH7, CH6, CH5, CH4, CH3, CH2, CH1, CH0, B3, B2;
	wire CH7_not, CH6_not, CH5_not, CH4_not, CH3_not, CH2_not, CH1_not, CH0_not, B3_not, B2_not, IS01, IS02, 
	FUN03, FUN03SelecaoIE01, FUN03SelecaoIE02, FUN03PerfilIE01, FUN03PerfilIE02;
	wire [3:0] PerfilIE01, PerfilIE02;
	output [5:0]out;
	
	//INVERSORES
	not CH7_inv (CH7_not, CH7);
	not CH6_inv (CH6_not, CH6);
	not CH5_inv (CH5_not, CH5);
	not CH4_inv (CH4_not, CH4);
	not CH3_inv (CH3_not, CH3);
	not CH2_inv (CH2_not, CH2);
	not CH1_inv (CH1_not, CH1);
	not CH0_inv (CH0_not, CH0);
	not B3_inv (B3_not, B3);
	not B2_inv (B2_not, B2);
	
	and And1IE01 (PerfilIE01[0], CH7, CH6_not, CH5); //ADMIN IE01
	and And2IE01 (PerfilIE01[1], CH7_not, CH6, CH5); //TESTE IE01
	and And3IE01 (PerfilIE01[2], CH7_not, CH6_not, CH5); //USER IE01
	and And4IE01 (PerfilIE01[3], CH7, CH6, CH5_not); //GUESTER IE01
	
	and And1IE01 (PerfilIE02[0], CH3, CH2_not, CH1); //ADMIN IE02
	and And2IE01 (PerfilIE02[1], CH3_not, CH2, CH1); //TESTE IE02
	and And3IE01 (PerfilIE02[2], CH3_not, CH2_not, CH1); //USER IE02
	and And4IE01 (PerfilIE02[3], CH3, CH2, CH1_not); //GUESTER IE02
	
	or Or0 (IS01, ADM, TESTER);
	or Or1 (IS02, USER, GUEST):
	
	xor Or2 (FUN01, IS01, IS02);
	
	and VerificacaoFUN03IE01 (FUN03SelecaoIE01, B3_not, B2, CH4);
	and VerificacaoFUN03IE02 (FUN03SelecaoIE02, B1_not, B0, CH0);
	xor PermisaoFUN03 (FUN03PerfilIE01, PerfilIE01[0], PerfilIE01[1], PerfilIE01[2])
	xor PermisaoFUN03 (FUN03PerfilIE02, PerfilIE02[0], PerfilIE02[1], PerfilIE02[2])
	
endmodule
