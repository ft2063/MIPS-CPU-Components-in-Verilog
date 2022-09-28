`include "registerf.v"
`timescale 1ns/1ps
module registerf_tb;
  
  reg reg_write;
  reg [31:0] data;
  reg [4:0] Rd, Rs, Rt;
  wire [31:0] Out1, Out2;
  
  registerf registerf(reg_write, data, Rd, Rs, Rt, Out1, Out2);
  initial begin 
    $dumpfile("registerf.vcd");
    $dumpvars(1, registerf_tb);
    
    Rs = 5'b00001;
    Rd = 5'b00001;
    Rt = 5'b00010;
    reg_write = 0;
    data = 32'b1000000110000000000000110000000;
    
      begin 
        data = 32'b1100000110000000000000110000000;
        #10;
        reg_write = 1;
        #10
        reg_write = 0;
        data = 32'b1100000110000000000000110000001;
        Rd = 5'b00010;
        #10
        reg_write = 1;
        #10
        reg_write = 0;
         #10
        reg_write = 1;
        
        
      end
    $finish;
  end
endmodule
        