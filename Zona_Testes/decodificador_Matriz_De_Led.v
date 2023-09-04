module decodificador_Matriz_De_Led(A1,A2,A3,B1,B2,B3,S0,S1,S2,S3,S4,S5);

	input A1,A2,A3,B1,B2,B3;
	
	output S0,S1,S2,S3,S4,S5;
	wire result01, result02, result03, result04, result05, result06, 
	result07, result08, result09, result10, result11, result12, result13;
	
	
	not not01(nB100,B3);
	or or01_S0(result01, B1, B2, nB100);
	not not02(nA300,A3);
	or or02_S0(result02, A1, A2, nA300);
	and and01(S0,result01,result02);
	
	not not03(nB200,B2);
	not not04(nB301,B3);
	or or03_S1(result03, B1, nB200, nB301);
	not not06(nA201,A2);
	not not07(nA302,A3);
	or or05_S2(result05, A1, nA201, nA302);
	and and02(S1,result03, result05);
	
	not not08(nB101,B1);
	or or06_S3(result06,nB101,B2,B3);
	not not09(nA100,A1);
	or or07_S3(result07,nA100,A2,A3);
	and and03(S2,result06,result07);

	not not10(nB103,B1);
	not not11(nB302,B3);
	or or08_S4(result08,nB103,B2,nB302);
	not not12(nA101,A1);
	not not13(nA303,A3);
	or or09_S4(result09,nA101,A2,nA303);
	and and04(S3,result08,result09);
	
	not not14(nB104,B1);
	not not15(nB201,B2);
	or or10_S5(result10,nB104,nB201,B3);
	not not16(nA102,A1);
	not not17(nA202,A2);
	or or11_S5(result11,nA102,nA202,A3);
	and and05(S4,result10,result11);
	
	not not18(nB105,B1);
	not not19(nB202,B2);
	not not20(nB303,B3);
	or or12_S6(result12,nB105,nB202,nB303);
	not not21(nA103,A1);
	not not22(nA203,A2);
	not not23(nA304,A3);
	or or13_S6(result13,nA103,nA203,nA304);
	and and06(S5,result12,result13);
	
endmodule