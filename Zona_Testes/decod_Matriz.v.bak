module decod_Matriz(MSB1, B1, LSB1,MSB2, B2, LSB2, MLed0, MLed2, MLed3, MLed4, MLed5, MLed6);
	input MSB1, B1, LSB1,MSB2, B2, LSB2;
	output MLed0, MLed2, MLed3, MLed4, MLed5, MLed6;
	
	wire not_MSB1, not_B1, not_LSB1, not_MSB2, not_B2, not_LSB2;
	wire aux1_MLed0, aux1_MLed2, aux1_MLed3, aux1_MLed4, aux1_MLed5, aux1_MLed6,
	aux2_MLed0, aux2_MLed2, aux2_MLed3, aux2_MLed4, aux2_MLed5, aux2_MLed6;
	
	not int_MSB1(not_MSB1, MSB1);
	not int_B1(not_B1, B1);
	not int_LSB1(not_LSB1, LSB1);
	
	not int_MSB2(not_MSB2, MSB2);
	not int_B2(not_B2, B2);
	not int_LSB2(not_LSB2, LSB2);
	
	and func1_1(aux1_MLed0, not_MSB1, not_B1, LSB1);
	and func1_3(aux1_MLed2, not_MSB1, B1, LSB1);
	and func1_4(aux1_MLed3, MSB1, not_B1, not_LSB1);
	and func1_5(aux1_MLed4, MSB1, not_B1, LSB1);
	and func1_6(aux1_MLed5, MSB1, B1, not_LSB1);
	and func1_7(aux1_MLed6, MSB1, B1, LSB1);
	
	and func2_1(aux2_MLed0, not_MSB2, not_B2, LSB2);
	and func2_3(aux2_MLed2, not_MSB2, B2, LSB2);
	and func2_4(aux2_MLed3, MSB2, not_B2, not_LSB2);
	and func2_5(aux2_MLed4, MSB2, not_B2, LSB2);
	and func2_6(aux2_MLed5, MSB2, B2, not_LSB2);
	and func2_7(aux2_MLed6, MSB2, B2, LSB2);
	
	nor(MLed0, aux1_MLed0, aux2_MLed0);
	nor(MLed2, aux1_MLed2, aux2_MLed2);
	nor(MLed3, aux1_MLed3, aux2_MLed3);
	nor(MLed4, aux1_MLed4, aux2_MLed4);
	nor(MLed5, aux1_MLed5, aux2_MLed5);
	nor(MLed6, aux1_MLed6, aux2_MLed6);
	
endmodule