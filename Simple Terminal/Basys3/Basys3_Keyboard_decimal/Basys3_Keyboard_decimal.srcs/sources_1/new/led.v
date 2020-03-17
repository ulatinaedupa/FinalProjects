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
   output reg [3:0] Anode_in, // anode signals of the 7-segment LED display
    output reg  [6:0] LED_sal
	
	
    );
   
    always @(*)
    begin
        Anode_in=4'b0111;
            case(scan_code)
             8'h45: LED_sal = 7'b0000001; // "0"     
             8'h16: LED_sal = 7'b1001111; // "1" 
             8'h1e: LED_sal = 7'b0010010; // "2" 
             8'h26: LED_sal = 7'b0000110; // "3" 
             8'h25: LED_sal = 7'b1001100; // "4" 
             8'h2e: LED_sal = 7'b0100100; // "5" 
             8'h36: LED_sal = 7'b0100000; // "6" 
             8'h3d: LED_sal = 7'b0001111; // "7" 
             8'h3e: LED_sal = 7'b0000000; // "8"     
             8'h46: LED_sal = 7'b0000100; // "9" 
             default: LED_sal = 7'b0000001; // "0"
           
		   endcase
        
    end
   
   
endmodule
