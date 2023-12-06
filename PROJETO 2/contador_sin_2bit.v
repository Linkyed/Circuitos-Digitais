module contador_sin_2bit(clk, rstn, out0, out1);
	input clk, rstn; 
	output out0, out1;
	
	wire T0, T1;
	
	d_ff d0 ( .d(~T0),
		.rstn(rstn),
		.clk(clk),
		.q(T0)
	);
	
	xnor xnor0 (T2, T0, T1);
	
	d_ff d1 ( .d(T2), 
		.rstn(rstn),
		.clk(clk),
		.q(T1)
	);
	
	not (out0, T0);
	not (out1, T1);

endmodule