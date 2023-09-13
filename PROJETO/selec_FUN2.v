module selec_FUN2(A, B, C, on, atv_PRIO, out);
   input A, B, C, on, atv_PRIO;
   output [2:0] out;
	
	and (out[0], A, on, atv_PRIO);
	and (out[1], B, on, atv_PRIO);
	and (out[2], C, on, atv_PRIO);
	//PROXIMO PASSO É CRIAR UM MODULO ONDE RECEBE A SAIDA DESSE DAQUI SEPARADAMANETE E QUE ELE DETERMINARA
	//SE O CODIGO DO PERFIL CONTRARIO SERÁ MANTIDO OU NÃO, PRA AI SIM IREM PRO DECODIFICADOR FINAL
	
endmodule