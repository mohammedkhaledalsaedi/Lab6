`timescale 1ns / 1ps

module tb_Task2;

    logic [1:0] a;
    logic [3:0] b;
    logic carry_in;
    logic [3:0] sum;

    Task2 dut (
        .a(a),
        .b(b),
        .carry_in(carry_in),
        .sum(sum)
    );

    initial begin

        a = 2'b0_1;
        b = 4'b00_11;
        carry_in = 1'b0;
        #10;

        a = 2'b1_0;
        b = 4'b01_01;
        carry_in = 1'b1;
        #10;

        a = 2'b1_1;
        b = 4'b11_11;
        carry_in = 1'b1;
        #10;

        a = 2'b0_0;
        b = 4'b00_00;
        carry_in = 1'b0;
        #10;

        a = 2'b0_1;
        b = 4'b10_10;
        carry_in = 1'b1;
        #10;

        $finish;
    end

endmodule
