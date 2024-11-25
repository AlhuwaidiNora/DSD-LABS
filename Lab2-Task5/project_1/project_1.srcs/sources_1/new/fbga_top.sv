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
    input  logic [8:0] SW,  // Switches for inputs A and B
    output logic [4:0] LED  // LEDs to display the outputs S and C
);

    // Internal signals to connect to the half_adder module
    logic [3:0] a, b, sum;
    logic carryIn, carryOut;

    assign a = SW[7:4];
    assign b = SW[3:0];
    assign carryIn = SW[8];


    // Instantiate the half_adder module

    adder adder4bit_inst0 (        .*
    );
    
    
    

    // Connect the outputs S and C to the LEDs
    assign LED[3:0] = sum;  // Sum output
    assign LED[4] = carryOut;  // Carry output

endmodule    


