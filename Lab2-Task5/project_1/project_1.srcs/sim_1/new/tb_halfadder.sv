`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2024 02:14:22 PM
// Design Name: 
// Module Name: tb_half_adder
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


module tb_half_adder;
    logic a, b, sum, carry;

    half_adder dut (
    .a(a),
    .b(b),
    .sum(sum),
    .carry(carry)
     );

    initial begin
    $display("Time\t a\t b\t s\t c");
    $display("-------------------");
    
    
	a = 0; b = 0; #5
	$display("%0t\t %b\t %b\t %b\t %b", $time, a, b, sum, carry);
	a = 0; b = 1; #5
	$display("%0t\t %b\t %b\t %b\t %b", $time, a, b, sum, carry);
	a = 1; b = 0; #5
	$display("%0t\t %b\t %b\t %b\t %b", $time, a, b, sum, carry);
	a = 1; b = 1; #5
	$display("%0t\t %b\t %b\t %b\t %b", $time, a, b, sum, carry);
    
    end

endmodule