module mux4_1(A, B, C, D, SEL0, SEL1, out0, out1, out2, out3, out4, out5, out6);
	input [6:0] A, B, C, D;
	input SEL0, SEL1;
	output out0, out1, out2, out3, out4, out5, out6;
	
	wire SEL0_not, SEL1_not;
	
	not (SEL0_not, SEL0);
	not (SEL1_not, SEL1);
	
	//SAIDA S0 DO MUX
	and And0 (T0, SEL0_not, SEL1_not, A[0]);
	and And1 (T1, SEL0_not, SEL1, B[0]);
	and And2 (T2, SEL0, SEL1_not, C[0]);
	and And3 (T3, SEL0, SEL1, D[0]);
	
	//SAIDA S1 DO MUX
	and And4 (T4, SEL0_not, SEL1_not, A[1]);
	and And5 (T5, SEL0_not, SEL1, B[1]);
	and And6 (T6, SEL0, SEL1_not, C[1]);
	and And7 (T7, SEL0, SEL1, D[1]);
	
	//SAIDA S2 DO MUX
	and And8 (T8, SEL0_not, SEL1_not, A[2]);
	and And9 (T9, SEL0_not, SEL1, B[2]);
	and And10 (T10, SEL0, SEL1_not, C[2]);
	and And11 (T11, SEL0, SEL1, D[2]);
	
	//SAIDA S3 DO MUX
	and And12 (T12, SEL0_not, SEL1_not, A[3]);
	and And13 (T13, SEL0_not, SEL1, B[3]);
	and And14 (T14, SEL0, SEL1_not, C[3]);
	and And15 (T15, SEL0, SEL1, D[3]);
	
	//SAIDA S4 DO MUX
	and And16 (T16, SEL0_not, SEL1_not, A[4]);
	and And17 (T17, SEL0_not, SEL1, B[4]);
	and And18 (T18, SEL0, SEL1_not, C[4]);
	and And19 (T19, SEL0, SEL1, D[4]);
	
	//SAIDA S5 DO MUX
	and And20 (T20, SEL0_not, SEL1_not, A[5]);
	and And21 (T21, SEL0_not, SEL1, B[5]);
	and And22 (T22, SEL0, SEL1_not, C[5]);
	and And23 (T23, SEL0, SEL1, D[5]);
	
	//SAIDA S6 DO MUX
	and And24 (T24, SEL0_not, SEL1_not, A[6]);
	and And25 (T25, SEL0_not, SEL1, B[6]);
	and And26 (T26, SEL0, SEL1_not, C[6]);
	and And27 (T27, SEL0, SEL1, D[6]);
	
	or Or0 (out0, T0, T1, T2, T3);
	or Or1 (out1, T4, T5, T6, T7);
	or Or2 (out2, T8, T9, T10, T11);
	or Or3 (out3, T12, T13, T14, T15);
	or Or4 (out4, T16, T17, T18, T19);
	or Or5 (out5, T20, T21, T22, T23);
	or Or6 (out6, T24, T25, T26, T27);
	

endmodule 