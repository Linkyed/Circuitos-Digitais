module enc_FUN(A, B, C, atv_PRIO, INTERF, out_LEDS, out_MATRIZ, out_7SEG);
   input A, B, C, atv_PRIO, INTERF;
   output [2:0] out_LEDS, out_MATRIZ;
	output out_7SEG;
	wire INTERF_not, A_not, C_not;
	not INTERF_inv (INTERF_not, INTERF);
	not A_inv (A_not, A);
	not C_inv (C_not, C);

	// INTERF = INTERFACE, E SE FOR 0 SIGNIFICA LEDS E SE FOR 1 MATRIZ
	and outLED0 (out_LEDS[0], INTERF_not, A, atv_PRIO);
	and outLED1 (out_LEDS[1], INTERF_not, B, atv_PRIO);
	and outLED2 (out_LEDS[2], INTERF_not, C, atv_PRIO);	
	
	and outMATRIZ0 (out_MATRIZ[0], INTERF, A, atv_PRIO);
	and outMATRIZ1 (out_MATRIZ[1], INTERF, B, atv_PRIO);
	and outMATRIZ2 (out_MATRIZ[2], INTERF, C, atv_PRIO);

	and out7SEG (out_7SEG, A_not, B, C_not);
	
endmodule