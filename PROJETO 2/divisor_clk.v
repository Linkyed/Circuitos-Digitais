module divisor_clk(clk, rstn, out);
	input clk, rstn; 
	output out;
	
	wire SUP1, SUP1_not, SUP2, SUP2_not, SUP3, SUP3_not;

	d_ff d0 ( .d(~SUP1), // SAIDA 25MHZ
		.rstn(rstn),
		.clk(clk),
		.q(SUP1)
	);
	d_ff d1 ( .d(~SUP2), //SAIDA 12,5MHZ
		.rstn(rstn),
		.clk(SUP1),
		.q(SUP2)
	);
	d_ff d2 ( .d(~SUP3), //SAIDA 6,25MHZ
		.rstn(rstn),
		.clk(SUP2),
		.q(SUP3)
	);
	
	d_ff d3 ( .d(~SUP4), //SAIDA 3,125MHZ
		.rstn(rstn),
		.clk(SUP3),
		.q(SUP4)
	);
	
	d_ff d4 ( .d(~SUP5), //SAIDA 1,5625MHZ
		.rstn(rstn),
		.clk(SUP4),
		.q(SUP5)
	);
	
	d_ff d5 ( .d(~SUP6), //SAIDA 781,25KHZ
		.rstn(rstn),
		.clk(SUP5),
		.q(SUP6)
	);
	
	d_ff d6 ( .d(~SUP7), //SAIDA 390,625KHZ
		.rstn(rstn),
		.clk(SUP6),
		.q(SUP7)
	);
	
	d_ff d7 ( .d(~SUP8), //SAIDA 195,3125KHZ
		.rstn(rstn),
		.clk(SUP7),
		.q(SUP8)
	);
	
	d_ff d8 ( .d(~SUP9), //SAIDA 195,3125KHZ
		.rstn(rstn),
		.clk(SUP8),
		.q(SUP9)
	);
	
	d_ff d9 ( .d(~SUP10), //SAIDA 97,65625KHZ
		.rstn(rstn),
		.clk(SUP9),
		.q(SUP10)
	);
	
	d_ff d10 ( .d(~SUP11), //SAIDA 48,828125KHZ
		.rstn(rstn),
		.clk(SUP10),
		.q(SUP11)
	);
	
	d_ff d11 ( .d(~SUP12), //SAIDA 24,4140625KHZ
		.rstn(rstn),
		.clk(SUP11),
		.q(SUP12)
	);
	
	d_ff d12 ( .d(~SUP13), //SAIDA 12,20703125KHZ
		.rstn(rstn),
		.clk(SUP12),
		.q(SUP13)
	);
	
	d_ff d13 ( .d(~SUP14), //SAIDA 6,103515625KHZ
		.rstn(rstn),
		.clk(SUP13),
		.q(SUP14)
	);
	
	d_ff d14 ( .d(~SUP15), //SAIDA 3,0517578125KHZ
		.rstn(rstn),
		.clk(SUP14),
		.q(SUP15)
	);
	
	assign out = SUP10;


endmodule 