module seletorFUN( out, A, B, C, D, E, F);
   input A, B, C, D, E, F;
   output [5:0] out;
	wire A_not, B_not, C_not, ADM, USER, TESTER, GUEST, AUTO, IS01, IS02;
	wire Fun1_Possivel, Fun2_Possivel, Fun3_Possivel, Fun4_Possivel, Fun5_Possivel, Fun6_Possivel, Fun7_Possivel,
	FUN01, FUN02, FUN03, FUN04, FUN05, FUN06, FUN07, PerfilFUN01, PerfilFUN02, PerfilFUN03, PerfilFUN04,
	PerfilFUN05, PerfilFUN06, PerfilFUN07, Possibilidade	; 
	//[0, 0] BIT0 = displey (1 = IS01, 0 = IS02), BIT1 = possibilidade (1 = É possivel, 0 = Não é possivel
	not A_inv (A_not, A);
	not B_inv (B_not, B);
	not C_inv (C_not, C);
	not D_inv (D_not, D);
	not E_inv (E_not, E);
	not F_inv (F_not, F);
	
	and AndADM (ADM, A, B_not, C); //ADMIN
	and AndTESTER (TESTER, A_not, B, C); //TESTE
	and AndUSER (USER, A_not, B_not, C); //USER
	and AndGUEST (GUEST, A, B, C_not); //GUEST
	and AndAUTO (AUTO, A_not, B_not, C_not); //PILOTO AUTOMATICO
	
	xor V_P_FUN1 (Fun1_Possivel, ADM, GUEST, USER, TESTER);
	xor V_P_FUN2 (Fun2_Possivel, ADM, TESTER);
	xor V_P_FUN3 (Fun3_Possivel, ADM, USER, TESTER);
	xor V_P_FUN4 (Fun4_Possivel, ADM, USER, TESTER);
	assign Fun5_Possivel =  ADM;
	xor V_P_FUN6 (Fun6_Possivel, ADM, GUEST, USER, TESTER);
	assign Fun7_Possivel =  ADM;
	
	xor PerfilValido0 (out[0], ADM, GUEST);
	xor PerfilValido1 (out[1], TESTER, GUEST);
	xor PerfilValido2 (out[2], TESTER, USER, ADM);
	
	and Funcionlidade1 (FUN01, D_not, E_not, F);
	and Funcionlidade2 (FUN02, D_not, E, F_not);
	and Funcionlidade3 (FUN03, D_not, E, F);
	and Funcionlidade4 (FUN04, D, E_not, F_not);
	and Funcionlidade5 (FUN05, D, E_not, F);
	and Funcionlidade6 (FUN06, D, E, F_not);
	and Funcionlidade7 (FUN07, D, E, F);
	
	and SaidaFUN01 (PerfilFUN01, Fun1_Possivel, FUN01);
	and SaidaFUN02 (PerfilFUN02, Fun2_Possivel, FUN02);
	and SaidaFUN03 (PerfilFUN03, Fun3_Possivel, FUN03);
	and SaidaFUN04 (PerfilFUN04, Fun4_Possivel, FUN04);
	and SaidaFUN05 (PerfilFUN05, Fun5_Possivel, FUN05);
	and SaidaFUN06 (PerfilFUN06, Fun6_Possivel, FUN06);
	and SaidaFUN07 (PerfilFUN07, Fun7_Possivel, FUN07);
	
	xor PossbilidadeReal (Possibilidade, PerfilFUN01, PerfilFUN02, PerfilFUN03, PerfilFUN04, PerfilFUN05, PerfilFUN06, PerfilFUN07);
	
	and Saida0Funcionlidade (out[3], Possibilidade, D);
	and Saida1Funcionlidade (out[4], Possibilidade, E);
	and Saida2Funcionlidade (out[5], Possibilidade, F);
endmodule