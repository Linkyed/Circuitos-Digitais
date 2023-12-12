module decod_7seg(a, b, c, d, e, f, g, contador);
    output a,b,c,d,e,f,g; // SEGMENTOS DO DISPLAY;
   
	 input [1:0] contador;
	 wire D0, D1, D2, D3;
	 wire not_cont_0,not_cont_1;
	 not (not_cont_0,contador[0]);
	 not (not_cont_1,contador[1]);
	 
	 and digito1 (D0, not_cont_1,not_cont_0);
	 and digito2 (D1, contador[0],not_cont_1);
	 and digito3 (D2, contador[1],not_cont_0);
	 and digito4 (D3, contador[0],contador[1]);
	 
	 nor defA(a, D0, D3);
	 nor defB(b, D0, D2);
	 nor defC(c, D0, D2);
	 nor defD(d, D3);
	 nor defE(e, D0, D3);
	 nor defF(f, D0, D2, D3);
	 nor defG(g, D0, D2);
	 
   
endmodule