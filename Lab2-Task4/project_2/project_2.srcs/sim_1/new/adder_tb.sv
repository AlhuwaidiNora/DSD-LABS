`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2024 10:30:01 AM
// Design Name: 
// Module Name: adder_tb
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

module adder_tb;

  // Declare testbench signals
  logic carryIn;
  logic [3:0] a, b;
  logic [3:0] sum;
  logic carryOut;

  // Instantiate the adder module using .*
  adder dut (
    .*
  );

  // Testbench logic
  initial begin
    // Display header
    $display("Time\t Cin\t A\t    B\t    S\t    Cout");
    $display("---------------------------------------------------");

    // Randomly generate values for A, B, and Cin
    for (int i = 0; i < 10; i++) begin
      a = $urandom_range(0, 15); // Random 4-bit value for A
      b = $urandom_range(0, 15); // Random 4-bit value for B
      carryIn = $urandom_range(0, 1); // Random value for Cin (0 or 1)
      #10; // Wait for 10 time units
      $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, Cin, A, B, S, Cout);
    end

    // End simulation
    $finish;
  end
endmodule