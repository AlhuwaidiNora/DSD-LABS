`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2024 10:41:13 AM
// Design Name: 
// Module Name: addsum_tb
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

module addsub_tb;
  // Declare testbench signals
  logic M;              // Mode: 0 for Addition, 1 for Subtraction
  logic [3:0] a, b;     // 4-bit inputs
  logic [3:0] sum;        // 4-bit result (Sum/Difference)
  logic carryOut;           // Carry-out

  // Instantiate the addsub module
  addsub DUT (
    .*
  );

  // Testbench logic
  initial begin
    // Display header
    $display("Time\t M\t a\t b\t sum\t carryOut");
    $display("-------------------------------------------");

    // Generate random test cases
    for (int i = 0; i < 100; i++) begin
      M = $urandom_range(0, 1);        // Randomly choose addition (0) or subtraction (1)
      a = $urandom_range(0, 15);      // Random 4-bit value for A
      b = $urandom_range(0, 15);      // Random 4-bit value for B
      #10;                            // Wait for 10 time units
      $display("%0t\t %b\t %0d\t %0d\t %0d\t %0d", $time, M, a, b, sum, carryOut);
    end

    // End simulation
    $finish;
  end
endmodule