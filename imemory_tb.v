`include "imemory.v"
`timescale 1ns/1ns

module imemory_tb();

reg [31:0] address;
wire [31:0] instr;


imemory imemory (address, instr);

initial begin
    $dumpfile("imemory.vcd");
    $dumpvars(0, imemory_tb);

    #10;
    address = 2;
    

    #10;
    address = 1;

    #10;
    address = 2;

    #10;
    address = 4;

    #10;
    address = 1;
    #10;
    $finish;
end

endmodule
