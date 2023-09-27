module associado( out, A, B, C );
   input A, B, C;
   output [2:0] out;
	wire A_not, B_not, C_not, ADM, USER, TESTER, GUEST, VerifDig1, VerifDig2, VerifDig3;
	not A_inv (A_not, A);
	not B_inv (B_not, B);
	not C_int (C_not, C);
	
	and AndADM (ADM, A, B_not, C); //ADMIN
	and AndTESTER (TESTER, A_not, B, C); //TESTE
	and AndUSER (USER, A_not, B_not, C); //USER
	and AndGUEST (GUEST, A, B, C_not); //GUEST
	
	xor PerfilValido0 (VerifDig1, ADM, GUEST);
	xor PerfilValido1 (VerifDig2, TESTER, GUEST);
	xor PerfilValido2 (VerifDig3, TESTER, USER, ADM);
	
	assign out[0] = VerifDig1;
	assign out[1] = VerifDig2;
	assign out[2] = VerifDig3;
endmodule