`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.08.2019 17:43:12
// Design Name: 
// Module Name: led
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

module led(
   input wire [7:0] scan_code,
   output reg  [6:0] LED_num1,
   output reg  [6:0] LED_num2
	
	
    );
   
    always @(*)
    begin
            case(scan_code)
             8'h45: 
             begin 
             // "0" 
              LED_num1= 7'b1001100; // "4" 
              LED_num2= 7'b0100100; // "5"      
             end 
             8'h16: 
             // "1" 
             begin 
              LED_num1= 7'b1001111; // "1"
              LED_num2= 7'b0100000; // "6"     
             end 
             8'h1e: 
             begin 
             // "2"
              LED_num1= 7'b1001111; // "1" 
              LED_num2= 7'b0110000; // "E"     
             end 
             8'h26: 
             begin 
              // "3" 
              LED_num1= 7'b0010010; // "2" 
              LED_num2= 7'b0100000; // "6"    
             end 
              8'h25: 
             begin 
             // "4" 
              LED_num1= 7'b0010010; // "2"  
              LED_num2= 7'b0100100; // "5" 
             end 
            8'h2e: 
             begin
             // "5"  
              LED_num1= 7'b0010010; // "2" 
              LED_num2= 7'b0110000; // "E"     
             end 
             8'h36: 
             begin 
             // "6" 
              LED_num1= 7'b0000110; // "3" 
              LED_num2= 7'b0100000; // "6"    
             end 
              8'h3d: 
             begin 
             // "7" 
              LED_num1= 7'b0000110; // "3"
              LED_num2= 7'b1000010; // "d"    
             end 
             
             8'h3e: 
             begin 
             // "8" 
              LED_num1= 7'b0000110; // "3" 
              LED_num2= 7'b0110000; // "E"    
             end 
            8'h46: 
             begin 
             // "9" 
              LED_num1= 7'b1001100; // "4" 
              LED_num2= 7'b0100000; // "6"     
             end 

             default:
             begin 
             // "0" 
              LED_num1= 7'b0000001; // "0"
              LED_num2= 7'b0000001; // "0"   
             end  
           
		   endcase
        
    end
   
   
endmodule
