module atv_PRIO (PRIO, FUN_IG, out);
   input PRIO, FUN_IG;
   output out;
	wire SUP0, SUP1, SUP2, FUN_IG_not, PRIO_not;
	
	
	not FUN_IG_inv (FUN_IG_not, FUN_IG);
	not PRIO_inv (PRIO_not, PRIO);
	
	and And0 (SUP0, FUN_IG_not, PRIO_not);
	and And1 (SUP1, FUN_IG_not, PRIO);
	and And2 (SUP2, FUN_IG, PRIO);
	
	or Or0 (out, SUP0, SUP1, SUP2);
	
endmodule