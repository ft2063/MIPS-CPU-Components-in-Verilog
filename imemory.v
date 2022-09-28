module imemory(address, instr);
input [31:0] address;
output wire [31:0] instr;


reg [31:0] mem [0:255];
initial begin
mem[0] <= 32'b1000000010000111111000110000000; 
mem[1] <= 32'b1000000010001000000100000000000;
mem[2] <= 32'b1100000000000000001000000000000; 
mem[3] <= 32'b1000000000011110100000110000000; 
mem[4] <= 32'b1000000001100000000000010000100; 
mem[5] <= 32'b1000000111000000011000110000000; 
mem[6] <= 32'b1010000001100000000000000000000; 
mem[7] <= 32'b1000000010000011111111110000000; 
mem[8] <= 32'b1000000110000000000100110000000; 
mem[9] <= 32'b1000000000000000000000010000000; 
end


assign instr = mem[address] ;

endmodule
