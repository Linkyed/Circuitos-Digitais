module decod_linha_matriz(A, out);
	input [4:0] A;
	output [5: 0]out;

	
	or Or0(out[0], A[0], A[1], A[2], A[3], A[4]);
	
	assign out[1] = A[0];
	assign out[2] = A[1];
	assign out[3] = A[2];
	assign out[4] = A[3];
	assign out[5] = A[4];
	

endmodule 