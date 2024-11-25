`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2024 10:38:37 AM
// Design Name: 
// Module Name: addsub
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module addsub(
    input logic M,
    input logic [3:0] a,
    input logic [3:0] b,
    output logic [3:0] sum,
    output logic carryOut
);
    logic C[2:0];
    logic Xor_o[3:0];
    xor (Xor_o[0], b[0], M);
    xor (Xor_o[1], b[1], M);
    xor (Xor_o[2], b[2], M);
    xor (Xor_o[3], b[3], M);

    full_adder fa_inst0(M, a[0], Xor_o[0], sum[0], C[0]);
    full_adder fa_inst1(C[0], a[1], Xor_o[1], sum[1], C[1]);
    full_adder fa_inst2(C[1], a[2], Xor_o[2], sum[2], C[2]);
    full_adder fa_inst3(C[2], a[3], Xor_o[3], sum[3], carryOut);


endmodule : addsub