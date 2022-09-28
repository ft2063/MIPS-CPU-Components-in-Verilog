`include "alu.v"
`timescale 1ns/1ps
module alu_tb;
  reg[31:0] A,B;
  reg[3:0] Sel;
  wire[31:0] Out;
  reg zero;
  
 
  alu alu(A,B, Sel, Out, zero);
  initial begin 
    $dumpfile("alu.vcd");
    $dumpvars(1, alu_tb);
    A = 8'h09;
    B = 8'h02;
    Sel = 4'h0;
    
    #10
    Sel = 1;
    #10
    Sel = 2;
    #10
    Sel = 3;
    #10
    Sel = 0;
 $finish;
  end
endmodule