`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Digilent Inc 
// Engineer: Arthur Brown
// 
// Create Date: 07/27/2016 02:04:01 PM
// Design Name: Basys3 Keyboard Demo
// Module Name: top
// Project Name: Keyboard
// Target Devices: Basys3
// Tool Versions: 2016.X
// Description: 
//     Receives input from USB-HID in the form of a PS/2, displays keyboard key presses and releases over USB-UART.
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//     Known issue, when multiple buttons are pressed and one is released, the scan code of the one still held down is ometimes re-sent.
//////////////////////////////////////////////////////////////////////////////////


module top(
    input         clk,
    input reset, // reset
    input         PS2Data,
    input         PS2Clk,
    output        tx,
    output reg [3:0] Anode_Activate, // anode signals of the 7-segment LED display
    output reg [6:0] LED_out// cathode patterns of the 7-segment LED display
);
reg [19:0] refresh_counter; // 20-bit for creating 10.5ms refresh period or 380Hz refresh rate
             // the first 2 MSB bits for creating 4 LED-activating signals with 2.6ms digit period
    wire [1:0] LED_activating_counter; 
                 // count     0    ->  1  ->  2  ->  3
              // activates    LED1    LED2   LED3   LED4
             // and repeat
wire  [6:0] LED_N1;
wire  [6:0] LED_N2;
    wire        tready;
    wire        ready;
    wire        tstart;
    reg         start=0;
    reg         CLK50MHZ=0;
    wire [31:0] tbuf;
    reg  [15:0] keycodev=0;
    wire [15:0] keycode;
    wire [ 7:0] tbus;
    reg  [ 2:0] bcount=0;
    wire        flag;
    reg         cn=0;
    reg [ 7:0] tbus1;
    
    always @(posedge(clk))begin
        CLK50MHZ<=~CLK50MHZ;
    end
    
    PS2Receiver uut (
        .clk(CLK50MHZ),
        .kclk(PS2Clk),
        .kdata(PS2Data),
        .keycode(keycode),
        .oflag(flag)
    );
    
   
   

    always@(keycode)
        if (keycode[7:0] == 8'hf0) begin
            cn <= 1'b0;
            bcount <= 3'd0;
        end else if (keycode[15:8] == 8'hf0) begin
            cn <= keycode != keycodev;
            bcount <= 3'd5;
        end else begin
            cn <= keycode[7:0] != keycodev[7:0] || keycodev[15:8] == 8'hf0;
            bcount <= 3'd2;
        end
    
   always@(posedge clk)
   
        if (flag == 1'b1 && cn == 1'b1) begin
            start <= 1'b1;
            keycodev <= keycode;
            
        end else
        begin
            start <= 1'b0;
            
          
        end 
        
            
    bin2ascii #(
        .NBYTES(2)
    ) conv (
        .I(keycodev),
        .O(tbuf)
    );
    
led pantalla (
        .scan_code (keycodev),
        .LED_num1(LED_N1),
        .LED_num2(LED_N2)
        
    );
  always @(posedge clk or posedge reset)
    begin 
        if(reset==1)
            refresh_counter <= 0;
        else
            refresh_counter <= refresh_counter + 1;
    end 
    assign LED_activating_counter = refresh_counter[19:18];
    // anode activating signals for 4 LEDs, digit period of 2.6ms
    // decoder to generate anode signals 
    
    
    
    always @(*)
    begin
        case(LED_activating_counter)
        
        2'b00: begin
            Anode_Activate = 4'b1101; 
            // activate LED3 and Deactivate LED2, LED1, LED4
           LED_out=LED_N1;
            // the third digit of the 16-bit number
                end
        2'b01: begin
            Anode_Activate = 4'b1110; 
            // activate LED4 and Deactivate LED2, LED3, LED1
         LED_out=LED_N2;
            // the fourth digit of the 16-bit number    
               end
        
        
        2'b10: begin
            Anode_Activate = 4'b1101; 
            // activate LED3 and Deactivate LED2, LED1, LED4
           LED_out=LED_N1;
            // the third digit of the 16-bit number
                end
        2'b11: begin
            Anode_Activate = 4'b1110; 
            // activate LED4 and Deactivate LED2, LED3, LED1
         LED_out=LED_N2;
            // the fourth digit of the 16-bit number    
               end
        endcase
    end
    // Cathode patterns of the 7-segment LED display     
   

    uart_buf_con tx_con (
        .clk    (clk   ),
        .bcount (bcount),
        .tbuf   (tbuf  ),  
        .start  (start ), 
        .ready  (ready ), 
        .tstart (tstart),
        .tready (tready),
        .tbus   (tbus  )
    );
    
  
    uart_tx get_tx (
        .clk    (clk),
        .start  (tstart),
        .tbus   (tbus),
        .tx     (tx),
        .ready  (tready)
    );
    
    
endmodule
