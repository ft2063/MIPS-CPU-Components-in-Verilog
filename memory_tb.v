`include "memory.v"
`timescale 1ns/1ps
module memory_tb;
  reg clk;
  reg [31:0] address;          
  reg [31:0] data;   
reg MW, MD; 
  wire [31:0] out;
  
memory memory(clk, address, data, MW, MD, out);
always @* begin
    #5 clk <= !clk;
end 
  initial begin 
     
    $dumpfile("memory.vcd");
    $dumpvars(1, memory_tb);
    MD = 0;
    MW = 0;
clk=0;
 address = 32'b0000000000000000000000000000010;
 data = 32'b0000000000000000000000000000101;
    #10
 MW = 1;
    #10
 MW = 0;
 address = 32'b0000000000000000000000000000101;  //I EXPECT 5 IN out
    #10
 MD = 1;
    #10
 MD = 0;
  #10
  MD = 1;
  #10
  MD = 0;
  
 $finish;
end
  
endmodule