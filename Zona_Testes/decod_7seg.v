module decod_7seg(a, b, c, d, e, f, g, MSB, B, LSB);

	input MSB, B, LSB;
	output a, b, c, d, e, f, g;
	
	wire notMSB, notB, notLSB;
	wire aux_1, aux_2,aux_3,aux_4, aux_a,aux_ligar;
	
	not INVERTER_MSB (notMSB, MSB);
	not INVERTER_B (notB, B);
	not INVERTER_LSB (notLSB, LSB);
	
	and POSSIBIDADE_NUM_4(aux_4, MSB, notB, LSB);
	and POSSIBIDADE_NUM_3(aux_3, notMSB, B, LSB);
	and POSSIBIDADE_NUM_2(aux_2, notMSB, notB, LSB);
	and POSSIBIDADE_NUM_1(aux_1, MSB, B, notLSB);
	nor LigarOuDesligar(aux_ligar, aux_1, aux_2, aux_3, aux_4);
	
	or POSSI_1_4(aux_a,aux_1, aux_4);
	or MOSTRAR_A(a, aux_a, aux_ligar);
	
	or MOSTRAR_B(b, aux_ligar);
	
	or MOSTRAR_C(c, aux_2, aux_ligar);
	
	or MOSTRAR_D(d, aux_a, aux_ligar);
	
	or MOSTRAR_E(e, aux_1, aux_3, aux_4, aux_ligar);
	
	or MOSTRAR_F(f, aux_1, aux_2, aux_3, aux_ligar);
	
	or MOSTRAR_G(g, aux_1, aux_ligar);
	
endmodule 