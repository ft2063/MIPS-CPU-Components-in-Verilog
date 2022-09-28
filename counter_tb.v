`include "counter.v"
`timescale 1ns/1ns

module counter_tb;
reg clk, reset;
wire [3:0] pcounter;


counter counter(clk, reset, pcounter);
always @* begin
    #5 clk <= !clk;
end
initial begin 



end
initial begin
    $dumpfile("counter.vcd");
    $dumpvars(0, counter_tb);
        // Apply inputs.
clk=0;
reset=1;
#10;
reset=0;
#10;
reset=0;
#10;
reset=0;
#10;
reset=1;
#10;
reset=0;

$finish;
end
endmodule 