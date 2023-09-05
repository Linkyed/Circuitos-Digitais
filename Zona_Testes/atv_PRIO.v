module atv_PRIO (PRIO, FUN_IG, out);
   input PRIO, FUN_IG;
   output out;
	wire FUN_IG_not;
	
	
	not FUN_IG_inv (FUN_IG_not, FUN_IG);
	
	or Out (out, FUN_IG_not, PRIO);
	
endmodule