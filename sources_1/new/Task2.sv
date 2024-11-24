`timescale 1ns / 1ps

module Task2(
    input logic [1:0] a,
    input logic [3:0] b,
    input logic carry_in,
    output logic [3:0] sum
);

   
    logic [2:0] a_shifted;


    assign a_shifted = {a, 1'b0}; // Concatenation to add zero at the end and also shifting left


    assign sum = a_shifted + b;

endmodule
