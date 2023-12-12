module verf_acerto_ataque (map_input, player_input, rstn, clk, out0, out1);
	input map_input, player_input;
	input rstn, clk;
	output out0, out1;
	
	wire T0, T1;

	
	and And0 (T0, map_input, player_input);
	
	wire out1 = T0;

	or Or0 (T1, T0, out0);

	
	d_ff d0 ( .d(T1), 
		.rstn(rstn),
		.clk(clk),
		.q(out0)
	);
	

endmodule 