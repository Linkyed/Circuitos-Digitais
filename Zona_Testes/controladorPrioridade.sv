module controladorPrioridade(PERF_IE01, PERF_IE02, out, LED_r, LED_g, LED_b);
	input [1:0] PERF_IE01, PERF_IE02;
	output LED_r, LED_g, LED_b, out;
	wire IE01_equal_IE02, IE01_less_IE02, IE01_greater_IE02, PERF_IE02_not0, PERF_IE02_not1,
	SUP1, SUP2, SUP3, SUP4, SUP5;
	
	not PERF_IE02_inv0(PERF_IE02_not0, PERF_IE02[0]);
	not PERF_IE02_inv1(PERF_IE02_not1, PERF_IE02[1]);
//	comparador compararPerfis(PERF_IE01, PERF_IE02, IE01_equal_IE02, IE01_less_IE02, IE01_greater_IE02);
//	
//	wire LED_r = IE01_less_IE02; // VERMELHO QUANDO A IE02 GANHAR
//	wire LED_g = IE01_equal_IE02; // VERDE QUANDO FOR EMPATE
//	wire LED_b = IE01_greater_IE02; // AZUL QUANDO A IE01 GANHAR
//	
//	//SAIDAS DOS PERFIS
//	or PRIO_OUT (out, IE01_equal_IE02, IE01_greater_IE02); // SAI 1 PRA QUANDO É IGUAL OU IE01 GANHA
	//(A⋅B)+(A⋅~C)+(A⋅~D)+(B⋅~C)
	and And0 (SUP1, PERF_IE01[0], PERF_IE01[1]);
	and And1 (SUP2, PERF_IE01[0], PERF_IE02_not0);
	and And2 (SUP3, PERF_IE01[0], PERF_IE02_not1);
	and And3 (SUP4, PERF_IE01[1], PERF_IE02_not0);
	and And4 (SUP5, PERF_IE02_not0, PERF_IE02_not1);
	or Or0 (out, SUP1, SUP2, SUP3, SUP4, SUP5);
	
	
endmodule