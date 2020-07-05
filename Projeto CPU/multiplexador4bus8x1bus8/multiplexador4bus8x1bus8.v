module multiplexador4bus8x1bus8
   (output reg [7:0] saida,
    input [1:0]seleciona, input [7:0]I0, I1, I2, I3);
    
    always @ (*) begin
      case (seleciona) 
       2'b00: saida = I0;      
       2'b01: saida = I1;       
       2'b10: saida = I2;       
       2'b11: saida = I3;
      endcase    
    end 
endmodule 

