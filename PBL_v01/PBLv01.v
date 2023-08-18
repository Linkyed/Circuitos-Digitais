module PBLv01( LED0, LED2, LED3, LED5, M1_C0, M1_L0, M1_L1, M1_L2, M1_L3, M1_L4, M1_L5, M1_L6, CH7, CH6, CH5, CH4, B3, B2);
   input CH7, CH6, CH5, CH4, B3, B2;
   output LED0, LED2, LED3, LED5, M1_C0, M1_L0, M1_L1, M1_L2, M1_L3, M1_L4, M1_L5, M1_L6;
	wire CH7_not, CH6_not, CH5_not, CH4_not, B3_not, B2_not, ADM, TESTER, USER, GUEST, IS01, FUN101, FUN201, FUN301, FUN401, FUN501, FUN601, FUN701;
	not CH7_inv (CH7_not, CH7);
	not CH6_inv (CH6_not, CH6);
	not CH5_inv (CH5_not, CH5);
	not CH4_inv (CH4_not, CH4);
	not B3_inv (B3_not, B3);
	not B2_inv (B2_not, B2);
	
	and And1IE01 (ADM, CH7, CH6_not, CH5); //ADMIN IE01
	and And2IE01 (TESTER, CH7_not, CH6, CH5); //TESTE IE01
	and And3IE01 (USER, CH7_not, CH6_not, CH5); //USER IE01
	and And4IE01 (GUEST, CH7, CH6, CH5_not); //GUESTER IE01
	xor Or0 (IS01, ADM, TESTER);
	
	//FUNCIONLIDADES IS01
	assign M1_C0 = IS01;
	
	//FUNCIONALIDADE 7
	and FUNCIONALIDADE7 (FUN701, B3, B2, CH4, ADM);
	xor MatrizLed7 (M1_L6, FUN701, ADM);
	
	//FUNCIONALIDADE 6
	and FUNCIONALIDADE6 (FUN601, B3, B2, CH4_not, IS01);
	xor MatrizLed6 (M1_L5, FUN601, IS01);
	
	//FUNCIONALIDADE 5
	and FUNCIONALIDADE5 (FUN501, B3, B2_not, CH4, ADM);
	xor MatrizLed5 (M1_L4, FUN501, ADM);
	
	//FUNCIONALIDADE 4
	and FUNCIONALIDADE4 (FUN401, B3, B2_not, CH4_not, IS01);
	xor MatrizLed4 (M1_L3, FUN401, IS01);
	
	//FUNCIONALIDADE 3
	and FUNCIONALIDADE3 (FUN301, B3_not, B2, CH4, IS01);
	xor MatrizLed3 (M1_L2, FUN301, IS01);
	
	//FUNCIONALIDADE 2
	and FUNCIONALIDADE2 (FUN201, B3_not, B2, CH4_not, IS01);
	xor MatrizLed2 (M1_L1, FUN201, IS01);
	
	//FUNCIONALIDADE 1
	and FUNCIONALIDADE1 (FUN101, B3_not, B2_not, CH4, IS01);
	xor MatrizLed1 (M1_L0, FUN101, IS01);
	
endmodule
