module divisor_clk(clk, rstn, out0, out1, out2, out3, out4, out5, out6, out7, out8, out9);
	input clk, rstn; 
	output out0, out1, out2, out3, out4, out5, out6, out7, out8, out9;
	
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
	
	d_ff d5 ( .d(~SUP6), //SAIDA 781,25HZ
		.rstn(rstn),
		.clk(SUP5),
		.q(SUP6)
	);
	
	d_ff d6 ( .d(~SUP7), //SAIDA 390,625HZ
		.rstn(rstn),
		.clk(SUP6),
		.q(SUP7)
	);
	
	d_ff d7 ( .d(~SUP8), //SAIDA 195,3125HZ
		.rstn(rstn),
		.clk(SUP7),
		.q(SUP8)
	);
	
	d_ff d8 ( .d(~SUP9), //SAIDA 195,3125HZ
		.rstn(rstn),
		.clk(SUP8),
		.q(SUP9)
	);
	
	d_ff d9 ( .d(~SUP10), //SAIDA 97,65625HZ
		.rstn(rstn),
		.clk(SUP9),
		.q(SUP10)
	);
	
	
	
	
	assign out0 = SUP1;
	assign out1 = SUP2;
	assign out2 = SUP3;
	assign out3 = SUP4;
	assign out4 = SUP5;
	assign out5 = SUP6;
	assign out6 = SUP7;
	assign out7 = SUP8;
	assign out8 = SUP9;
	assign out9 = SUP10;
	

endmodule 