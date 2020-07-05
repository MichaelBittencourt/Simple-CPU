module ULA(output reg [8:0] C, output reg zero, negativo, Carry, maior, menor, igual, input [7:0] A, B, input [2:0] cod);
	always @ (*) begin
		case (cod) 
			3'b000: C = A+B;
			3'b001: C = A-B;
			3'b010: C = A&B;
			3'b011: C = A|B;
			3'b100: C = ~A;
			3'b101: C = 2*A;
			3'b110: C = A;
			3'b111: C = B;
		endcase
	end
	
	always @(*) begin
		zero=0;
		negativo=0;
		Carry=0;
		maior=0;
		menor=0;
		igual=0;
		if(A>B)
			maior=1;
		else begin
			if(A<B)begin
				menor=1;
				if(cod==1)
					negativo=1;
			end
			else
				igual=1;
		end
		if(C==0)
			zero=1;
		Carry=C[8];
		if (C>255)
			negativo=1;
	end
			
 endmodule
 