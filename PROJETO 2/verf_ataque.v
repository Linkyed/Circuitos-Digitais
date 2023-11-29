module verf_ataque(map_input, player_input, rstn, out);
	input [4:0] map_input, player_input;
	input rstn;
	output [4: 0]out;

	
	and And0 (T0, map_input[0], player_input[0]);
	and And0 (T1, map_input[1], player_input[1]);
	and And0 (T2, map_input[2], player_input[2]);
	and And0 (T3, map_input[3], player_input[3]);
	and And0 (T4, map_input[4], player_input[4]);
	
	d_ff d0 ( .d(T0), 
		.rstn(rstn),
		.clk(T0),
		.q(out[0])
	);
	
	d_ff d1 ( .d(T11), 
		.rstn(rstn),
		.clk(T1),
		.q(out[1])
	);
	
	d_ff d2 ( .d(T2), 
		.rstn(rstn),
		.clk(T2),
		.q(out[2])
	);
	
	d_ff d3 ( .d(T3), 
		.rstn(rstn),
		.clk(T3),
		.q(out[3])
	);
	
	d_ff d4 ( .d(T4), 
		.rstn(rstn),
		.clk(T4),
		.q(out[4])
	);
	

endmodule 