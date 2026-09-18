module alu_tb;
    reg [3:0] A, B;
    reg [1:0] OpCode;
    wire [3:0] ALU_Out;

    // Instantiate your physical ALU
    alu uut (.A(A), .B(B), .OpCode(OpCode), .ALU_Out(ALU_Out));

    initial begin
        // Tell the simulator to save waveforms
        $dumpfile("alu_dump.vcd");
        $dumpvars(0, alu_tb);

        // Test Case 1: Add 5 + 3
        A = 4'd5; B = 4'd3; OpCode = 2'b00; #10;
        
        // Test Case 2: Bitwise XOR 12 and 5
        A = 4'd12; B = 4'd5; OpCode = 2'b11; #10;
        
        $finish;
    end
endmodule
