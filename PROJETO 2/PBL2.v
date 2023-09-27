module PBL2(CH7, CH6, CH5, CH4, CH3, CH2, CH1, CH0,
				SEG7_A, SEG7_B, SEG7_C, SEG7_D, SEG7_E, SEG7_F, SEG7_G, SEG7_H);
		input CH7, CH6, CH5, CH4, CH3, CH2, CH1, CH0;
		output SEG7_A, SEG7_B, SEG7_C, SEG7_D, SEG7_E, SEG7_F, SEG7_G, SEG7_H;
		
		wire CH1_not, CH0_not;
		
		not (CH1_not, CH1);
		not (CH0_not, CH0);
		
		and And0 (SUP1, CH1_NOT, CH0_NOT);
		and And1 (SUP2, CH1, CH0);
		or Or0 (SUP3, SUP1, SUP2);
		wire SEG7_A = SUP3;
		wire SEG7_F = SUP3;
		
		and And2 (SUP4, CH1_NOT, CH0);
		wire SEG7_C = SUP4;
		
		and And3 (SUP5, CH1, CH0_NOT);
		or Or1 (SEG7_D, SUP4, SUP5);
		

	

endmodule