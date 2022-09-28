module alu(input [31:0] A,B,
           input [3:0] Sel,
           output [31:0] Out,
           output wire zero);
  reg [31:0] Result;
  assign Out = Result;

  
  always @(*) begin
    case(Sel)
      0:
        Result = A + B;
      1:
        Result = A - B;
      2:
        Result = A * B;
      3:
        Result = A / B;
      default: Result = A + B;
    endcase
  assign zero = !Result;
  end
  
endmodule

      
  