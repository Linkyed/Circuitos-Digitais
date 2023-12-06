module mux_display(D1, D2, D3,  D4, a, b, c, d, e, f, g, dp, clk);
	input clk;
	wire [1:0] contador;
	wire [17:0] clk_divided;
   output D1, D2, D3, D4;   
   output a, b, c, d, e, f, g, dp; 

   assign dp = 1'b1;
   
   divided_frequecy did_f(clk, 1'b1 , clk_divided);
	Contador_2bits cont_2(clk_divided[15], 1'b1, contador);
	
   Demux1_4_7seg demux2(D1, D2, D3, D4, 1'b1, contador);
	decod_7seg dec_7(a, b, c, d, e, f, g, contador);
	 
endmodule