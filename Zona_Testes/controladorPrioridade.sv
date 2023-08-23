module controladorPrioridade(A, B, C, D, E, F, G, H, I, J, K, L, out, LED_r, LED_g, LED_b);
   input A, B, C, D, E, F, G, H, I, J, K, L;
   output [11:0] out;
	output LED_r, LED_g, LED_b;
	wire [1:0] auxOUT;
	wire [1:0] BinPERFIL0, BinPERFIL1;
	wire  igual0, igual1, igual2, isIgual, isIgual_not;
	wire IE01_equal_IE02, IE01_less_IE02, IE01_greater_IE02;
	
	
	xnor Igualdade1 (igual0, D, J);
	xnor Igualdade2 (igual1, E, K);
	xnor Igualdade3 (igual2, F, L);
	
	and FuncionalidadesIGUAIS (isIgual, igual0, igual1, igual2);
	not isIgual_inv (isIgual_not, isIgual);
	
	conversor_perfil_binario conversorIE01(A, B, C, BinPERFIL0);
	conversor_perfil_binario conversorIE02(G, H, I, BinPERFIL1);
	comparador compararPerfis(BinPERFIL0, BinPERFIL1, isIgual, IE01_equal_IE02, IE01_less_IE02, IE01_greater_IE02);
	
	assign LED_r = IE01_less_IE02; // VERMELHO QUANDO A IE02 GANHAR
	assign LED_g = isIgual; // VERDE QUANDO FOR EMPATE
	assign LED_b = IE01_greater_IE02; // AZUL QUANDO A IE01 GANHAR
	
	//SAIDAS DOS PERFIS
	or auxOUT01 (auxOUT[0], IE01_equal_IE02, IE01_greater_IE02, isIgual_not);
	and IE01_0 (out[0], auxOUT[0], A);
	//or auxOUT02 (auxOUT[1], IE01_equal_IE02, IE01_greater_IE02, isIgual_not);
	and IE01_1 (out[1], auxOUT[0], B);
	//or auxOUT03 (auxOUT[2], IE01_equal_IE02, IE01_greater_IE02, isIgual_not);
	and IE01_2 (out[2], auxOUT[0], C);
	
	or auxOUT05 (auxOUT[1], IE01_less_IE02, isIgual_not);
	and IE02_0 (out[6], auxOUT[1], G);
	//or auxOUT06 (auxOUT[7], IE01_less_IE02, isIgual_not);
	and IE02_1 (out[7], auxOUT[1], H);
	//or auxOUT07 (auxOUT[8], IE01_less_IE02, isIgual_not);
	and IE02_3 (out[8], auxOUT[1], I);
	
	//SAIDAS DAS FUNCIONALIDADES
	and FUN_IE01_0 (out[3], auxOUT[0], D);
	and FUN_IE01_1 (out[4], auxOUT[0], E);
	and FUN_IE01_2 (out[5], auxOUT[0], F);
	
	and FUN_IE02_0 (out[9], auxOUT[1], J);
	and FUN_IE02_1 (out[10], auxOUT[1], K);
	and FUN_IE02_2 (out[11], auxOUT[1], L);
	
	
endmodule