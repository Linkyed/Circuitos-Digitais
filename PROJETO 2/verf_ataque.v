//module verf_ataque(map_input, player_input, rstn, clk, out);
//	input [4:0] map_input, player_input;
//	input rstn, clk;
//	output [4: 0]out;
//
//	
//	and And0 (T0, map_input[0], player_input[0]);
//	and And1 (T1, map_input[1], player_input[1]);
//	and And2 (T2, map_input[2], player_input[2]);
//	and And3 (T3, map_input[3], player_input[3]);
//	and And4 (T4, map_input[4], player_input[4]);
//
//	or Or0 (T5, T0, out[0]);
//	or Or1 (T6, T1, out[1]);
//	or Or2 (T7, T2, out[2]);
//	or Or3 (T8, T3, out[3]);
//	or Or4 (T9, T4, out[4]);
//	
//	d_ff d0 ( .d(T5), 
//		.rstn(rstn),
//		.clk(clk),
//		.q(out[0])
//	);
//	
//	d_ff d1 ( .d(T6), 
//		.rstn(rstn),
//		.clk(clk),
//		.q(out[1])
//	);
//	
//	d_ff d2 ( .d(T7), 
//		.rstn(rstn),
//		.clk(clk),
//		.q(out[2])
//	);
//	
//	d_ff d3 ( .d(T8), 
//		.rstn(rstn),
//		.clk(clk),
//		.q(out[3])
//	);
//	
//	d_ff d4 ( .d(T9), 
//		.rstn(rstn),
//		.clk(clk),
//		.q(out[4])
//	);
//	
//
//endmodule 