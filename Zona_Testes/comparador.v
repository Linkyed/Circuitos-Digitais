module comparador(A, B, A_equal_B, A_less_B, A_greater_B);
   input [1: 0] A, B;
   output A_equal_B, A_less_B, A_greater_B;
	wire equal1, equal2, tmp1,tmp2,tmp3,tmp4,tmp5, tmp6, tmp7, tmp8;
	wire supA_equal_B, supA_less_B, supA_greater_B;
	wire[1: 0] A_not, B_not;
	
	not A_inv0 (A_not[0], A[0]);
	not A_inv1 (A_not[1], A[1]);
	not B_inv0 (B_not[0], B[0]);
	not B_inv1 (B_not[1], B[1]);
	
	xnor testeIgual0 (equal1, A[0], B[0]);
	xnor testeIgual1 (equal2, A[1], B[1]);
	and A_equals_B_supOutput (A_equal_B, equal2, equal1);
	
	and condicao0_AlessB (tmp3, A_not[1], A_not[0], B[1]);
	and condicao1_AlessB (tmp4, A_not[0], B[0]);	
	and condicao2_AlessB (tmp5, A_not[1], B[0], B[1]);
	or A_less_B_supOutput (A_less_B, tmp3, tmp4, tmp5);
	
	and condicao0_AgreaterB (tmp6, B_not[1], B_not[0], A[1]);
	and condicao1_AgreaterB (tmp7, B_not[0], A[0]);	
	and condicao2_AgreaterB (tmp8, B_not[1], A[0], A[1]);
	or A_greater_B_supOutput (A_greater_B, tmp6, tmp7, tmp8);
	
	
	

endmodule