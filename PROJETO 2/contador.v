module contador(clk, rstn, out0, out1, out2);
	input clk, rstn; 
	output out0, out1, out2;
	

	d_ff d0 ( .d(~SUP1),
		.rstn(rstn),
		.clk(clk),
		.q(SUP1)
	);
	
	xnor xnor0 (SUP4, SUP1, SUP2);
	
	d_ff d1 ( .d(SUP4), 
		.rstn(rstn),
		.clk(clk),
		.q(SUP2)
	);
	
	or or0(SUP5, SUP2, SUP1);
	xnor xnor1(SUP6, SUP5, SUP3);
	
	d_ff d2 ( .d(SUP6), 
		.rstn(rstn),
		.clk(clk),
		.q(SUP3)
	);
	
	not (out0, SUP1);
	not (out1, SUP2);
	not (out2, SUP3);


	

endmodule 