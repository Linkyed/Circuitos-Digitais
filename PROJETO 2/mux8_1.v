module mux8_1(A0, A1, A2, A3, A4, 
					B0, B1, B2, B3, B4,
					C0, C1, C2, C3, C4,
					D0, D1, D2, D3, D4,
					E0, E1, E2, E3, E4,
					F0, F1, F2, F3, F4,
					G0, G1, G2, G3, G4,
					H0, H1, H2, H3, H4,
					SEL0, SEL1, SEL2, out0, out1, out2, out3, out4);

	input A0, A1, A2, A3, A4, 
			B0, B1, B2, B3, B4,
			C0, C1, C2, C3, C4,
			D0, D1, D2, D3, D4,
			E0, E1, E2, E3, E4,
			F0, F1, F2, F3, F4,
			G0, G1, G2, G3, G4,
			H0, H1, H2, H3, H4;
					
	input SEL0, SEL1, SEL2;
	
	output out0, out1, out2, out3, out4;
	
	wire SEL0_not, SEL1_not, SEL2_not,
	T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, T19, T20, T21, T22, T23, T24, T25, T26, T27, T28, T29, T30, T31, T32, T33, T34, T35, T36,
	T37, T38, T39;
	
	not (SEL0_not, SEL0);
	not (SEL1_not, SEL1);
	not (SEL2_not, SEL2);
	
	// SAIDA S7 DO MUX
	and And56 (T0, SEL0_not, SEL1_not, SEL2_not, A0);
	and And57 (T1, SEL0_not, SEL1_not, SEL2, B0);
	and And58 (T2, SEL0_not, SEL1, SEL2_not, C0);
	and And59 (T3, SEL0_not, SEL1, SEL2, D0);
	and And60 (T4, SEL0, SEL1_not, SEL2_not, E0);
	and And61 (T5, SEL0, SEL1_not, SEL2, F0);
	and And62 (T6, SEL0, SEL1, SEL2_not, G0);
	and And63 (T7, SEL0, SEL1, SEL2, H0);

	// SAIDA S8 DO MUX
	and And64 (T8, SEL0_not, SEL1_not, SEL2_not, A1);
	and And65 (T9, SEL0_not, SEL1_not, SEL2, B1);
	and And66 (T10, SEL0_not, SEL1, SEL2_not, C1);
	and And67 (T11, SEL0_not, SEL1, SEL2, D1);
	and And68 (T12, SEL0, SEL1_not, SEL2_not, E1);
	and And69 (T13, SEL0, SEL1_not, SEL2, F1);
	and And70 (T14, SEL0, SEL1, SEL2_not, G1);
	and And71 (T15, SEL0, SEL1, SEL2,H1);

	// SAIDA S9 DO MUX
	and And72 (T16, SEL0_not, SEL1_not, SEL2_not, A2);
	and And73 (T17, SEL0_not, SEL1_not, SEL2, B2);
	and And74 (T18, SEL0_not, SEL1, SEL2_not, C2);
	and And75 (T19, SEL0_not, SEL1, SEL2, D2);
	and And76 (T20, SEL0, SEL1_not, SEL2_not, E2);
	and And77 (T21, SEL0, SEL1_not, SEL2, F2);
	and And78 (T22, SEL0, SEL1, SEL2_not, G2);
	and And79 (T23, SEL0, SEL1, SEL2, H2);

	// SAIDA S10 DO MUX
	and And80 (T24, SEL0_not, SEL1_not, SEL2_not, A3);
	and And81 (T25, SEL0_not, SEL1_not, SEL2, B3);
	and And82 (T26, SEL0_not, SEL1, SEL2_not, C3);
	and And83 (T27, SEL0_not, SEL1, SEL2, D3);
	and And84 (T28, SEL0, SEL1_not, SEL2_not, E3);
	and And85 (T29, SEL0, SEL1_not, SEL2, F3);
	and And86 (T30, SEL0, SEL1, SEL2_not, G3);
	and And87 (T31, SEL0, SEL1, SEL2, H3);

	// SAIDA S11 DO MUX
	and And88 (T32, SEL0_not, SEL1_not, SEL2_not, A4);
	and And89 (T33, SEL0_not, SEL1_not, SEL2, B4);
	and And90 (T34, SEL0_not, SEL1, SEL2_not, C4);
	and And91 (T35, SEL0_not, SEL1, SEL2, D4);
	and And92 (T36, SEL0, SEL1_not, SEL2_not, E4);
	and And93 (T37, SEL0, SEL1_not, SEL2, F4);
	and And94 (T38, SEL0, SEL1, SEL2_not, G4);
	and And95 (T39, SEL0, SEL1, SEL2, H4);



	or Or0 (out0, T0, T1, T2, T3, T4, T5, T6, T7);
	or Or1 (out1, T8, T9, T10, T11, T12, T13, T14, T15);
	or Or2 (out2, T16, T17, T18, T19, T20, T21, T22, T23);
	or Or3 (out3, T24, T25, T26, T27, T28, T29, T30, T31);
	or Or4 (out4, T32, T33, T34, T35, T36, T37, T38, T39);

	

endmodule 