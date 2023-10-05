module contr_7SEG(A, B, C, fun2, out);
   input A, B, C, fun2;
   output [2:0] out;
	
	and And0 (out[0], A, fun2);
	and And1 (out[1], B, fun2);
	and And2 (out[2], C, fun2);
	
	
endmodule