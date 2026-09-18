`timescale 1ns/1ps

module tb_and_gate;
    reg a, b;
    wire y;

    // Connect our design to the testbench
    and_gate uut (
        .a(a),
        .b(b),
        .y(y)
    );

    initial begin
        // Generate a file to view the waveforms later
        $dumpfile("and_gate.vcd");
        $dumpvars(0, tb_and_gate);

        // Apply input combinations (Truth Table)
        a = 0; b = 0; #10; // Wait 10 time units
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        $finish; // End the simulation
    end
endmodule

