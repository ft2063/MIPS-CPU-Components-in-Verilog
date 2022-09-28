module registerf(reg_write, data, Rd, Rs, Rt, Out1, Out2);
input reg_write;
  input [31:0] data;
  input [4:0] Rd, Rs, Rt;
  output reg[31:0] Out1, Out2;
  reg [31:0] register [0:31];
  
  
  always @(reg_write) begin
    if (reg_write)
      register[Rd] <= data;
  
  Out1 = register[Rs];
  Out2 = register[Rt];
 
    end 
endmodule