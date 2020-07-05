module multiplexador2bus8x1bus8
   (output reg [7:0] saida,
    input seleciona, input [7:0]I0, I1);
    
    always @ (*) begin
      case (seleciona) 
       1'b0: saida = I0;      
       1'b1: saida = I1;       
      endcase    
    end 
endmodule 

