//module acender_led(A, B, C, D , E, F, G,
//						A0, B0, C0, D0 , E0, G0, F0, Bu, out);
//	input [6:0] A, B, C, D, E, F, G,  A0, B0, C0, D0, E0, F0, G0;
//	input Bu;
//	output out;
//	
////	and And0 (T0, A[0], A0[0]);
////	and And1 (T1, A[1], A0[1]);
////	and And2 (T2, A[2], A0[2]);
////	and And3 (T3, A[3], A0[3]);
////	and And4 (T4, A[4], A0[4]);
////	
////	and And7 (T5, B[0], B0[0]);
////	and And8 (T6, B[1], B0[1]);
////	and And9 (T7, B[2], B0[2]);
////	and And10 (T8, B[3], B0[3]);
////	and And11 (T9, B[4], B0[4]);
////	
////	and And14 (T10, C[0], C0[0]);
////	and And15 (T11, C[1], C0[1]);
////	and And16 (T12, C[2], C0[2]);
////	and And17 (T13, C[3], C0[3]);
////	and And18 (T14, C[4], C0[4]);
////
////	and And21 (T15, D[0], D0[0]);
////	and And22 (T16, D[1], D0[1]);
////	and And23 (T17, D[2], D0[2]);
////	and And24 (T18, D[3], D0[3]);
////	and And25 (T19, D[4], D0[4]);
////
////	
////	and And28 (T20, E[0], E0[0]);
////	and And29 (T21, E[1], E0[1]);
////	and And30 (T22, E[2], E0[2]);
////	and And31 (T23, E[3], E0[3]);
////	and And32 (T24, E[4], E0[4]);
////	
////	and And33 (T25, F[0], F0[0]);
////	and And34 (T26, F[1], F0[1]);
////	and And35 (T27, F[2], F0[2]);
////	and And36 (T28, F[3], F0[3]);
////	and And37 (T29, F[4], F0[4]);
////	
////	and And38 (T30, G[0], G0[0]);
////	and And39 (T31, G[1], G0[1]);
////	and And40 (T32, G[2], G0[2]);
////	and And41 (T33, G[3], G0[3]);
////	and And42 (T34, G[4], G0[4]);
//
//	
//	or Or0 (T35, T0, T1, T2, T3, T4, T5, T6 );
//	or Or1 (T36, T7, T8, T9, T10, T11, T12, T13);
//	or Or2 (T37, T14, T15, T16, T17, T18, T19, T20);
//	or Or3 (T38, T21, T22, T23, T24, T25, T26, T27);
//	or Or4 (T39, T28, T29, T30, T31, T32, T33, T34);
//	
//	or Or5(T40, T35, T36, T37, T38, T39);
//	
//	d_ff d2 ( .d(T40), //SAIDA 6,25MHZ
//		.rstn(1),
//		.clk(Bu),
//		.q(out)
//	);
//
//endmodule 