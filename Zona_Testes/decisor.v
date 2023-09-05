module decisor (A, B, out);

   input   A, B;
   output  [1:0] out;
	 
	or out0 (out[0], A, B);
	or out1 (out[1], A);

endmodule