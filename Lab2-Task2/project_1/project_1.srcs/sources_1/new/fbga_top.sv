`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2024 09:31:45 AM
// Design Name: 
// Module Name: fbga_top
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

module fpga_top (
    input  logic [1:0] SW,  // Switches for inputs A and B
    output logic [1:0] LED  // LEDs to display the outputs S and C
);

    // Internal signals to connect to the half_adder module
    logic a, b;
    logic sum, carryOut;

    assign a = SW[0];
    assign b = SW[1];

    // Instantiate the half_adder module
    half_adder half_adder_inst0 (
        .*
    );

    // Connect the outputs S and C to the LEDs
    assign LED[0] = sum;  // Sum output
    assign LED[1] = carryOut;  // Carry output

endmodule

