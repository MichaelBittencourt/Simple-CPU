module registrador_2BITs(output reg [1:0] saida, input [1:0] entrada, input clock, escreve);

	always@(posedge clock)begin
		if(escreve == 1)
			saida<=entrada;
	end
endmodule
