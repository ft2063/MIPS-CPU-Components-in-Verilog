module memory (input clk,
input [31:0] address,          
input  [31:0] data,    
input  MW, MD,                 
output reg [31:0] out      
);

  reg [31:0] dmem[0:128];  

integer i;

  
initial begin
  out <= 0;
  for (i = 0; i < 128; i = i + 1) begin
    dmem[i] = i;
  end
end
  

always @(posedge clk) begin
  

  if (MD == 1) begin
    out <= dmem[address];
  end

  if (MW == 1) begin
    dmem[address] <= data;
  end
end

endmodule