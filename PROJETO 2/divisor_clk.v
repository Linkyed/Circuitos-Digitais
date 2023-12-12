module divisor_clk(clk, rstn, out);
	input clk, rstn; 
	output out;
	
	wire 	T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15,
		T0_not, T1_not, T2_not, T3_not, T4_not, T5_not, T6_not, T7_not, T8_not, T9_not, T10_not, T11_not, T12_not, T13_not, T14_not, T15_not;

	d_ff d0 ( .d(T0_not), // SAIDA 25MHZ
		.rstn(rstn),
		.clk(clk),
		.q(T0)
	);
	
	not (T0_not, T0);
	
	d_ff d1 ( .d(T1_not), //SAIDA 12,5MHZ
		.rstn(rstn),
		.clk(T0),
		.q(T1)
	);
	
	not (T1_not, T1);
	
	d_ff d2 ( .d(T2_not), //SAIDA 6,25MHZ
		.rstn(rstn),
		.clk(T1),
		.q(T2)
	);
	
	not (T2_not, T2);
	
	d_ff d3 ( .d(T3_not), //SAIDA 3,125MHZ
		.rstn(rstn),
		.clk(T2),
		.q(T3)
	);
	
	not (T3_not, T3);
	
	d_ff d4 ( .d(T4_not), //SAIDA 1,5625MHZ
		.rstn(rstn),
		.clk(T3),
		.q(T4)
	);
	
	not (T4_not, T4);
	
	d_ff d5 ( .d(T5_not), //SAIDA 781,25KHZ
		.rstn(rstn),
		.clk(T4),
		.q(T5)
	);
	
	not (T5_not, T5);
	
	d_ff d6 ( .d(T6_not), //SAIDA 390,625KHZ
		.rstn(rstn),
		.clk(T5),
		.q(T6)
	);
	
	not (T6_not, T6);
	
	d_ff d7 ( .d(T7_not), //SAIDA 195,3125KHZ
		.rstn(rstn),
		.clk(T6),
		.q(T7)
	);
	
	not (T7_not, T7);
	
	d_ff d8 ( .d(T8_not), //SAIDA 195,3125KHZ
		.rstn(rstn),
		.clk(T7),
		.q(T8)
	);
	
	not (T8_not, T8);
	
	d_ff d9 ( .d(T9_not), //SAIDA 97,65625KHZ
		.rstn(rstn),
		.clk(T8),
		.q(T9)
	);
	
	not (T9_not, T9);
	
	d_ff d10 ( .d(T10_not), //SAIDA 48,828125KHZ
		.rstn(rstn),
		.clk(T9),
		.q(T10)
	);
	
	not (T10_not, T10);
	
	d_ff d11 ( .d(T11_not), //SAIDA 24,4140625KHZ
		.rstn(rstn),
		.clk(T10),
		.q(T11)
	);
	
	not (T11_not, T11);
	
	d_ff d12 ( .d(T12_not), //SAIDA 12,20703125KHZ
		.rstn(rstn),
		.clk(T11),
		.q(T12)
	);
	
	not (T12_not, T12);
	
	d_ff d13 ( .d(T13_not), //SAIDA 6,103515625KHZ
		.rstn(rstn),
		.clk(T12),
		.q(T13)
	);
	
	not (T13_not, T13);
	
	d_ff d14 ( .d(T14_not), //SAIDA 3,0517578125KHZ
		.rstn(rstn),
		.clk(T13),
		.q(T14)
	);
	
	not (T14_not, T14);
	
	d_ff d15 ( .d(T15_not), //SAIDA 1,52587890625KHZ
		.rstn(rstn),
		.clk(T14),
		.q(T15)
	);
	
	not (T15_not, T15);
	
	assign out = T15;


endmodule 