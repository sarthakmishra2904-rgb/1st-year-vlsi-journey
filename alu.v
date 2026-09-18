module alu (
    input [3:0] A, B,      // Two 4-bit inputs
    input [1:0] OpCode,    // 2-bit control signal to choose operation
    output reg [3:0] ALU_Out // 4-bit output
);

always @(*) begin
    case(OpCode)
        2'b00: ALU_Out = A + B;  // Addition
        2'b01: ALU_Out = A - B;  // Subtraction
        2'b10: ALU_Out = A & B;  // Bitwise AND (Critical for masking)
        2'b11: ALU_Out = A ^ B;  // Bitwise XOR
        default: ALU_Out = 4'b0000;
    endcase
end
endmodule
