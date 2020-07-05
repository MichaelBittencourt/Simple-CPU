     module mem_RAM4x8
       (output reg [7:0] saida ,
        input RD, OE, CS, clock,
        input [7:0] entrada,
        input [1:0] endereco);
        
        reg [7:0] mem [4];
        
        
       always @(posedge clock) // Memória RAM síncrona
        if (CS && !RD) 
         mem[endereco] = entrada;
          else 
           if (CS && RD && OE) saida = mem[endereco];
            else 
             if (!OE | !CS)  saida = 7'bz;
     endmodule
   