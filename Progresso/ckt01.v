module ckt01(a, b, c, d, e, f, g, MSB, B, LSB);

	input MSB, B, LSB;
	output a, b, c, d, e, f, g;
	
	wire notMSB, notB, notLSB;
	wire aux_1, aux_2,aux_3,aux_4, aux_d1,mix_d;
	
	not INVERTER_MSB (notMSB, MSB);
	not INVERTER_B (notB, B);
	not INVERTER_LSB (notLSB, LSB);
	
	and POSSIBIDADE_NUM_1(aux_1, MSB, notB, LSB);
	and POSSIBIDADE_NUM_2(aux_2, notMSB, B, LSB);
	and POSSIBIDADE_NUM_3(aux_3, notMSB, notB, LSB);
	and POSSIBIDADE_NUM_4(aux_4, MSB, B, notLSB);
	
	or MOSTRAR_A(a, aux_1, aux_4);
	
	and MOSTRAR_C(c, notMSB, B, LSB);
	
	or SEMPRE_1(aux_d1, MSB, notMSB);
	nor MIX_2_E_3(mix_d, aux_2, aux_3);
	and MOSTRAR_D(d,SEMPRE_1,mix_d);
	
	or MOSTRAR_E(e, aux_1, aux_3, aux_4);
	
	or MOSTRAR_F(f, aux_1, aux_2, aux_3);
	
	or MOSTRAR_G(g, aux_1);
	
endmodule 
