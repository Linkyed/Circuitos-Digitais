module mux8_1(A0, A1, A2, A3, A4, A5, A6, A7, SEL0, SEL1, SEL2, out);
	input [4:0]A0, A1, A2, A3, A4, A5, A6, A7;
	input SEL0, SEL1, SEL2;
	output[4:0] out;
	
	wire SEL0_not, SEL1_not, SEL2_not, SUP1, SUP2;
	
	not (SEL0_not, SEL0);
	not (SEL1_not, SEL1);
	not (SEL2_not, SEL2);
	
	// SAIDA S7 DO MUX
	and And56 (T56, SEL0_not, SEL1_not, SEL2_not, A0[0]);
	and And57 (T57, SEL0_not, SEL1_not, SEL2, A1[0]);
	and And58 (T58, SEL0_not, SEL1, SEL2_not, A2[0]);
	and And59 (T59, SEL0_not, SEL1, SEL2, A3[0]);
	and And60 (T60, SEL0, SEL1_not, SEL2_not, A4[0]);
	and And61 (T61, SEL0, SEL1_not, SEL2, A5[0]);
	and And62 (T62, SEL0, SEL1, SEL2_not, A6[0]);
	and And63 (T63, SEL0, SEL1, SEL2, A7[0]);

	// SAIDA S8 DO MUX
	and And64 (T64, SEL0_not, SEL1_not, SEL2_not, A0[1]);
	and And65 (T65, SEL0_not, SEL1_not, SEL2, A1[1]);
	and And66 (T66, SEL0_not, SEL1, SEL2_not, A2[1]);
	and And67 (T67, SEL0_not, SEL1, SEL2, A3[1]);
	and And68 (T68, SEL0, SEL1_not, SEL2_not, A4[1]);
	and And69 (T69, SEL0, SEL1_not, SEL2, A5[1]);
	and And70 (T70, SEL0, SEL1, SEL2_not, A6[1]);
	and And71 (T71, SEL0, SEL1, SEL2, A7[1]);

	// SAIDA S9 DO MUX
	and And72 (T72, SEL0_not, SEL1_not, SEL2_not, A0[2]);
	and And73 (T73, SEL0_not, SEL1_not, SEL2, A1[2]);
	and And74 (T74, SEL0_not, SEL1, SEL2_not, A2[2]);
	and And75 (T75, SEL0_not, SEL1, SEL2, A3[2]);
	and And76 (T76, SEL0, SEL1_not, SEL2_not, A4[2]);
	and And77 (T77, SEL0, SEL1_not, SEL2, A5[2]);
	and And78 (T78, SEL0, SEL1, SEL2_not, A6[2]);
	and And79 (T79, SEL0, SEL1, SEL2, A7[2]);

	// SAIDA S10 DO MUX
	and And80 (T80, SEL0_not, SEL1_not, SEL2_not, A0[3]);
	and And81 (T81, SEL0_not, SEL1_not, SEL2, A1[3]);
	and And82 (T82, SEL0_not, SEL1, SEL2_not, A2[3]);
	and And83 (T83, SEL0_not, SEL1, SEL2, A3[3]);
	and And84 (T84, SEL0, SEL1_not, SEL2_not, A4[3]);
	and And85 (T85, SEL0, SEL1_not, SEL2, A5[3]);
	and And86 (T86, SEL0, SEL1, SEL2_not, A6[3]);
	and And87 (T87, SEL0, SEL1, SEL2, A7[3]);

	// SAIDA S11 DO MUX
	and And88 (T88, SEL0_not, SEL1_not, SEL2_not, A0[4]);
	and And89 (T89, SEL0_not, SEL1_not, SEL2, A1[4]);
	and And90 (T90, SEL0_not, SEL1, SEL2_not, A2[4]);
	and And91 (T91, SEL0_not, SEL1, SEL2, A3[4]);
	and And92 (T92, SEL0, SEL1_not, SEL2_not, A4[4]);
	and And93 (T93, SEL0, SEL1_not, SEL2, A5[4]);
	and And94 (T94, SEL0, SEL1, SEL2_not, A6[4]);
	and And95 (T95, SEL0, SEL1, SEL2, A7[4]);



	or out7 (out[0], T56, T57, T58, T59, T60, T61, T62, T63);
	or out8 (out[1], T64, T65, T66, T67, T68, T69, T70, T71);
	or out9 (out[2], T72, T73, T74, T75, T76, T77, T78, T79);
	or out10 (out[3], T80, T81, T82, T83, T84, T85, T86, T87);
	or out11 (out[4], T88, T89, T90, T91, T92, T93, T94, T95);

	

endmodule 