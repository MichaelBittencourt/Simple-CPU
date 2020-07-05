module pinos_entrada_saida(input clock_e, escreve_R1_e,escreve_R2_e,escreve_R3_e,escreve_R4_e,escreve_R5_e,escreve_R6_e,escreve_RDM_e,escreve_REM_e,
input [1:0] seleciona_mux1_e, seleciona_mux2_e, input seleciona_mux3_e, seleciona_mux4_e, seleciona_mux5_e, RD_e, OE_e, CS_e,
input [2:0] codigo_e, output reg clock, escreve_R1,escreve_R2,escreve_R3,escreve_R4,escreve_R5,escreve_R6,escreve_RDM,escreve_REM, output reg [1:0] seleciona_mux1, 

seleciona_mux2, output reg seleciona_mux3, seleciona_mux4, seleciona_mux5, RD, OE, CS, output reg [2:0] codigo);

	always @ (*) begin
		clock = clock_e;
		escreve_R1 = escreve_R1_e;
		escreve_R2 = escreve_R2_e;
		escreve_R3 = escreve_R3_e;
		escreve_R4 = escreve_R4_e;
		escreve_R5 = escreve_R5_e;
		escreve_R6 = escreve_R6_e;
		escreve_RDM = escreve_RDM_e;
		escreve_REM = escreve_REM_e;
		seleciona_mux1 = seleciona_mux1_e;
		seleciona_mux2 = seleciona_mux2_e;
		seleciona_mux3 = seleciona_mux3_e;
		seleciona_mux4 = seleciona_mux4_e;
		seleciona_mux5 = seleciona_mux5_e;
		RD = RD_e;
		OE = OE_e;
		CS = CS_e;
		codigo = codigo_e;
	end
endmodule