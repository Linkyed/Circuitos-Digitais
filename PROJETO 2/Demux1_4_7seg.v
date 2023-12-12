module Demux1_4_7seg(D0, D1, D2, D3, ligado, contador);
    input ligado;
    input [1:0] contador;
    
    output D0, D1, D2, D3;
	 wire not_cont_0,not_cont_1;
	 not (not_cont_0,contador[0]);
	 not (not_cont_1,contador[1]);
	 
	 nand digito1 (D0, ligado ,not_cont_1,not_cont_0);
	 nand digito2 (D1, ligado ,contador[0],not_cont_1);
	 nand digito3 (D2, ligado ,contador[1],not_cont_0);
	 nand digito4 (D3, ligado ,contador[0],contador[1]);
     
endmodule