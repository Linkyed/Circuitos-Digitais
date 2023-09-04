module decod_7seg(a, b, c, d, e, f, g, MSB, B, LSB, Func);

	input MSB, B, LSB, Func;
	output a, b, c, d, e, f, g;
	
	wire notMSB, notB, notLSB;
	wire aux_1, aux_2,aux_3,aux_4, aux_d1,mix_d, aux_a, LD, aux_d;
	
	not INVERTER_MSB (notMSB, MSB);
	not INVERTER_B (notB, B);
	not INVERTER_LSB (notLSB, LSB);
	
	and POSSIBIDADE_NUM_1(aux_4, MSB, notB, LSB);
	and POSSIBIDADE_NUM_2(aux_3, notMSB, B, LSB);
	and POSSIBIDADE_NUM_3(aux_2, notMSB, notB, LSB);
	and POSSIBIDADE_NUM_4(aux_1, MSB, B, notLSB);
	
	nand Ligar_DESLIGAR(LD, Func);
	
	or POSSI_1_4(aux_a,aux_1, aux_4);
	or MOSTRAR_A(a, aux_a, LD);
	
	and MOSTRAR_B(b, LD);
	
	or MOSTRAR_C(c, aux_2, LD);
	
	or SEMPRE_1(aux_d1, MSB, notMSB);
	nor MIX_2_E_3(mix_d, aux_2, aux_3);
	and LIGAR_D(aux_d, SEMPRE_1, mix_d);
	or MOSTRAR_D(d, aux_d, LD);
	
	or MOSTRAR_E(e, aux_1, aux_3, aux_4, LD);
	
	or MOSTRAR_F(f, aux_1, aux_2, aux_3, LD);
	
	or MOSTRAR_G(g, aux_1, LD);
	
endmodule 