module conversor_perfil_binario(A, B, C, out);
   input A, B, C;
   output [1:0] out;
	wire A_not, B_not, SUP1, SUP2;
	
	//NEGAÇÕES NECESSARIAS
	not A_inv (A_not, A);
	not B_inv (B_not, B);
	
	//REPRESENTAÇÃO EM NUMEROS NA BASE 2
	and And3 (SUP1, A_not, B, C);
	and And2 (SUP2, B_not, A, C); 
	
	//SAIDAS QUE REPRESENTARÃO O PERFIL EM BINARIO DE 2 DIGITOS SEGUINDO A ORDEM:
   //(ADM = 11, TESTER = 10, USER = 01, GUEST = 00)
	or Or0 (out[0], SUP1, SUP2);
	and And0 (out[1], C, B_not);
	
endmodule