module counter(input clk, reset, output[3:0] pcounter);
reg [3:0] next;

// up counter
always @(posedge clk )
begin
if(reset==1)
 next <= 0;
else
 next <= next + 4;
end 
assign pcounter = next;
endmodule
