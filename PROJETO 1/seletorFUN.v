module seletorFUN( out, A, B, C, D, E, F);
   input A, B, C, D, E, F;
   output [2:0] out;
	wire A_not, B_not, C_not, D_not, E_not, F_not;
	wire SUP1, SUP2, SUP3, SUP4, SUP5, SUP6, SUP7, SUP8, SUP9, SUP10, SUP11, SUP12, SUP13, SUP14, SUP15;

	not A_inv (A_not, A);
	not B_inv (B_not, B);
	not C_inv (C_not, C);
	not D_inv (D_not, D);
	not E_inv (E_not, E);
	not F_inv (F_not, F);

	and And0 (SUP0, A, C, B_not);
	and And1 (SUP1, C, A_not, F_not) ;
	and And2 (SUP2, A, B, E, C_not, F_not);
	or Or0 (SUP4, SUP0, SUP1, SUP2);
	and And3 (out[0], D, SUP4);
	//D⋅((A⋅C⋅B)+(C⋅~A⋅~G)+(A⋅B⋅E⋅~C⋅ G))
	or Or1 (SUP5, A, C);
	or Or2 (SUP6, B, C);
	or Or3 (SUP7, C, D);
	or Or4 (SUP8, C, F_not);
	or Or5 (SUP9, A, B, D, F);
	or Or6 (SUP10, A, D_not, F_not);
	or Or7 (SUP11, A_not, B_not, C_not);
	and And4 (out[1], E, SUP5, SUP6, SUP7, SUP8, SUP9, SUP10, SUP11);
	//E⋅(A+C)⋅(B+C)⋅(C+D)⋅(C+~G)⋅(A+B+D+G)⋅(A+~D+~G)⋅(~A+~B+~C)
	and And5 (SUP12, A, C, B_not);
	and And6 (SUP13, C, A_not, D_not);
	and And7 (SUP14, A, B, C_not, D_not, E_not);
	or Or8 (SUP15, SUP12, SUP13, SUP14);
	and And8 (out[2], F, SUP15);
	// G⋅((A⋅C⋅~B)+(C⋅~A⋅~D)+(A⋅B⋅~C⋅~D⋅~E))
endmodule