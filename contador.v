module Contador (
    input  wire clk,
    input  wire rst_n,

    input  wire acrescer,
    input  wire decrecer,

    output reg [7:0] saida
);

// Insira seu código aqui
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        
        saida <= 8'd106;
    end else begin
        
        case ({acrescer, decrecer})
            2'b10:   saida <= saida + 1; 
            2'b01:   saida <= saida - 1;  
            2'b11:   saida <= saida;      
            default: saida <= saida;      
        endcase
    end
end

endmodule
