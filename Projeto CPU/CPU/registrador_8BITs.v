module registrador_8BITs(output reg [7:0] saida, input [7:0] entrada, input clock, escreve);

	always@(posedge clock)begin
		if(escreve == 1)
			saida<=entrada;
	end
endmodule
