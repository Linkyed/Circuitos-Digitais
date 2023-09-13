module decod_Leds(MSB1, B1, LSB1,MSB2, B2, LSB2,Led0,Led2,Led3, Led5);
	input MSB1, B1, LSB1, MSB2, B2, LSB2;
	output Led0,Led2,Led3, Led5;
	
	wire not_MSB1, not_B1, not_LSB1, not_MSB2, not_B2, not_LSB2;
	wire aux1_Led0,aux1_Led2,aux1_Led3,aux1_Led5,aux2_Led0,aux2_Led2,aux2_Led3,aux2_Led5;
	
	not int_MSB1(not_MSB1, MSB1);
	not int_B1(not_B1, B1);
	not int_LSB1(not_LSB1, LSB1);
	
	not int_MSB2(not_MSB2, MSB2);
	not int_B2(not_B2, B2);
	not int_LSB2(not_LSB2, LSB2);
	
	and func1_1(aux1_Led0, not_MSB1, not_B1, LSB1);
	and func1_3(aux1_Led2, not_MSB1, B1, LSB1);
	and func1_4(aux1_Led3, MSB1, not_B1, not_LSB1);
	and func1_6(aux1_Led5, MSB1, B1, not_LSB1);
	
	and func2_1(aux2_Led0, not_MSB2, not_B2, LSB2);
	and func2_3(aux2_Led2, not_MSB2, B2, LSB2);
	and func2_4(aux2_Led3, MSB2, not_B2, not_LSB2);
	and func2_6(aux2_Led5, MSB2, B2, not_LSB2);
	
	or Ligarfunc1(Led0, aux1_Led0, aux2_Led0);
	or Ligarfunc3(Led2, aux1_Led2, aux2_Led2);
	or Ligarfunc4(Led3, aux1_Led3, aux2_Led3);
	or Ligarfunc6(Led5, aux1_Led5, aux2_Led5);
	
endmodule