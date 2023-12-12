module contador_sin_3bit(clk, rstn, out0, out1, out2);
	input clk, rstn; 
	output out0, out1, out2;
	
	wire T0, T1, T2, T3, T4, T5;
	
	d_ff d0 ( .d(~T0),
		.rstn(rstn),
		.clk(clk),
		.q(T0)
	);
	
	xnor xnor0 (T3, T0, T1);
	
	d_ff d1 ( .d(T3), 
		.rstn(rstn),
		.clk(clk),
		.q(T1)
	);
	
	or or0(T4, T1, T0);
	xnor xnor1(T5, T4, T2);
	
	d_ff d2 ( .d(T5), 
		.rstn(rstn),
		.clk(clk),
		.q(T2)
	);
	
	not (out0, T0);
	not (out1, T1);
	not (out2, T2);

endmodule