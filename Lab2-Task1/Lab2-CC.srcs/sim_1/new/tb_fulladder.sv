`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2024 02:51:44 PM
// Design Name: 
// Module Name: tb_full_adder
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


module tb_full_adder;
    logic a, b, carryIn, sum, carryOut;

    full_adder dut (
    .a(a),
    .b(b),
    .carryIn(carryIn),
    .sum(sum),
    .carryOut(carryOut)
     );

    initial begin
    $display("Time\t a\t b\t cIn\t s\t cOut");
    $display("-------------------");
    
    
	a = 0; b = 0; carryIn=0; #5
	$display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, carryIn, sum, carryOut);
	a = 0; b = 0; carryIn=1; #5
	$display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, carryIn, sum, carryOut);
	a = 0; b = 1; carryIn=0; #5
	$display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, carryIn, sum, carryOut);
	a = 0; b = 1; carryIn=1; #5
	$display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, carryIn, sum, carryOut);
	a = 1; b = 0; carryIn=0; #5
	$display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, carryIn, sum, carryOut);
	a = 1; b = 0; carryIn=1; #5
	$display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, carryIn, sum, carryOut);
	a = 1; b = 1; carryIn=0; #5
	$display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, carryIn, sum, carryOut);
	a = 1; b = 1; carryIn=1; #5
	$display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, carryIn, sum, carryOut);

    
    end

endmodule