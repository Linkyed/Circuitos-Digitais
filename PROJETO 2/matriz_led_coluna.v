module matriz_led_coluna(
						input [3:0] clk,
						input ch6, ch7,
						input [34:0] codigoMap, codigoAtk,
						output A, B, C, D, E
);
	wire not_clk0, not_clk1, not_clk2, not_ch6, not_ch7, aux_ativo1, aux_ativo2, aux_ativo;
	
	not(not_clk0, clk[0]);
	not(not_clk1, clk[1]);
	not(not_clk2, clk[2]);
	not(not_ch6, ch6);
	
	and(aux_ativo1,ch7, not_ch6);
	and(aux_ativo2,ch7, ch6);
	or(aux_ativo, aux_ativo1, aux_ativo2);
	
	and(A, not_clk0, not_clk1, not_clk2, aux_ativo);
	and(B, not_clk0, not_clk1, clk[2], aux_ativo);
	and(C, not_clk0, clk[1], not_clk2, aux_ativo);
	and(D, not_clk0, clk[1], clk[2], aux_ativo);
	and(E, clk[0], not_clk1, not_clk2, aux_ativo);

endmodule