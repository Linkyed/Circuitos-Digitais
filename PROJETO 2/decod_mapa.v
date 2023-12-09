module decod_mapa(A,B,C,out);
input A,B,C;
output [34:0] out;

	not (A_not, A);
	not (B_not, B);
	not (C_not, C);
	
	wire F1, F2, F3,F4,F5,F6, F8, F9, F10, F11, F12, 
			F13, F14, F15,F16,F17,F18,F19,F20, F21, F22,
			F23,F24,F25, F26, F27, F28, F29, F30, F31, F32,F33,
			F34, F35, F36,F37, F38, F39, F40, F41, F42, F43, F44, 
			F45, F46, F47, F48, F49, F50, F51, F52, F53, F54, F55;

	
	//LINHA 1
	//~A~BC + B~C + A~C
	//L1-1
	and And0 (F1,A_not,B_not,C);
	and And1 (F2,B,C_not);
	and And2 (F3,A,C_not);
	or Or0 (out[0],F1,F2,F3);

	//B ~C + A
	//L1-2
	and And3 (F4,B,C_not);
	or Or1 (out[1],F4,A);

	//A + B + ~C
	//L1-3
	or Or2 (out[2],A,B,C_not);

	//~A~C + ~BC
	//L1-4
	and And4 (F5, A_not, C_not);
	and And5 (F6, B_not, C);
	or Or3 (out[3], F5, F6);

	//C~B~A
	//L1-5
	and And6 (out[4], C, A_not, A_not);

	//LINHA 2
	//L2-1
	//~A~B + B~C
	and And7 (F8, A_not, B_not);
	and And8 (F9, B, C_not);
	or Or4 (out[5], F8, F9);
	
	//L2-2
	//~AC + ~BC + AB~C
	and And9(F10, A_not, C);
	and And10(F11, B_not, C);
	and And11(F12, A,B, C_not);
	or Or5 (out[6], F10,F11,F12);
	
	//L2-3
	//~A + ~B + ~C
	or Or6(out[7], A_not, B_not, C_not);
	
	//L2-4
	//BC + A
	and And12(F13, B,C);
	or Or7 (out[8], F13, A);
	
	//L2-5
	//~AC + BC + A~B~C
	and And13(F14, A_not, C);
	and And14(F15, B, C);
	and And15(F16, A, B_not, C_not);
	or Or8 (out[9], F14, F15 , F16);
	
	//LINHA 3
	//L3-1
	//~A + ~C + B
	or Or9 (out[10],A_not, B_not, C_not);
	
	//L3-2
	//~A~B + ~AC + AB
	and And16(F17, A_not, B_not);
	and And17(F18, A_not, C);
	and And18(F19, A,B);
	or Or10(out[11],F17,F18,F19);
	
	//L3-3
	// B + A
	or Or11(out[12], B, A);
	
	//L3-4
	//~C + A~B
	and And19(F20, A, B_not);
	or Or12(out[13], C_not, F20);
	
	//L3-5
	//~B + C + A
	or Or13(out[14], B_not, C, A);
	
	//LINHA 4
	//L4-1
	//~A + ~B~C + BC
	and And20(F21, B_not, C_not);
	and And21(F22, B,C);
	or Or14(out[15], A_not, F21,F22);
	
	//L4-2
	//~AC + ~AB + A~B + A~C
	and And22(F23, A_not, C);
	and And23(F24, A_not, B);
	and And24(F25, A, B_not);
	and And25(F26, A, C_not);
	or Or15(out[16], F23, F24, F25, F26);
	
	//L4-3
	//~BC + B~C
	and And26(F27, B_not, C);
	and And27(F28, B, C_not);
	or Or16(out[17], F27, F28);

	//L4-4
	//~B + ~C
	or Or17(out[18], B_not, C_not);
	
	//L4-5
	//~AC + A~B + A~C
	and And28(F29, A_not, C);
	and And29(F30, A, B_not);
	and And30(F31, A, C_not);
	or Or18(out[19], F29,F30, F31);
	
	//LINHA 5
	//L5-1
	//~A~C + ~AB + AC
	and And31(F32, A_not, C_not);
	and And32(F33, A_not, B);
	and And33(F34, A, C);
	or Or19(out[20],F32,F33, F34);
	
	//L5-2
	//~A~C + BC + A~B
	and And34(F35, A_not, C_not);
	and And35(F36, B, C);
	and And36(F37, A, B_not);
	or Or20(out[21], F35, F36,F37);
	
	//L5-3
	//~A + C + B
	or Or21(out[22], A_not, C, B);
	
	//L5-4
	//~A + C + B
	or Or22(out[23], A_not, C, B);
	
	//L5-5
	//~A + ~B + ~C
	or Or23(out[24], A_not, B_not, C_not);
	
	//L6-1
	//~BC
	and And37(out[25], B_not, C);
	
	//L6-2
	//~BC + B~C + A~B
	and And38(F38,  B_not, C);
	and And39(F39, B, C_not);
	and And40(F40, A, B_not);
	or Or24(out[26], F38,F39,F40);
	
	//L6-3
	//~A~B + ~BC + AB
	and And41(F41, A_not, B_not);
	and And42(F42, B_not, C);
	and And43(F43, A, b);
	or Or25 (out[27], F41, F42, F43);
	
	//L6-4
	//A
	assign out[28] = A;
	
	//L6-5
	//~AC + ~AB + A~B~C
	and And44(F44, A_not, C);
	and And45(F45, A_not, B);
	and And46(F46, A, B_not, C_not);
	or Or26(out[29], F44, F45, F46);
	
	//LINHA7
	//L7-1
	// ~B + ~A C
	and And47(F47, A_not, C);
	or Or27(out[30], B_not, F47);
	
	//L7-2
	//~B~C + BC + A
	and And48(F48, B_not, C_not);
	and And49(F49, B, C);
	or Or28(out[31], F49, F48, A);
	
	//L7-3
	//~A~C +B~C + A~BC
	and And50(F50, A_not, C_not);
	and And51(F51, B, C_not);
	and And52(F52, A, B_not, C);
	or Or29(out[32], F52, F50, F51);
	
	//L7-4
	//~C + ~AB
	and And53(F53, A_not, B);
	or Or30(out[33], C_not, F53);
	
	//L7-5
	//~AB + BC + A~B~C
	and And54(F54, A_not, B);
	and And55(F55, B, C);
	and And56(F56, A, B_not, C_not);
	or Or31(out[34], F54,F54, F56);
	
	
	
endmodule 