# Game Counter 1 - 15

## 📋 Description
Digital game counter implemented on FPGA that counts from 1 to 15. This project can be used as a game component, timer, or educational tool for understanding sequential logic.

## 🎯 Objectives
- Implement a 4-bit counter (1-15 range)
- Display count on 7-segment displays or LEDs
- Add game controls (start, stop, reset)
- Implement variable counting speed

## 🛠️ Technologies
- **Language:** VHDL/Verilog
- **Tools:** Xilinx Vivado
- **Target:** FPGA development board
- **Display:** 7-segment display or LEDs

## 🎮 Features
- Count from 1 to 15
- Adjustable speed/frequency
- Start/Stop functionality
- Reset to initial value
- Optional: Random stop for game mode
- Visual display of current count

## 📦 Requirements
- FPGA board (Basys 3, Nexys, or similar)
- Xilinx Vivado Design Suite
- USB programming cable

## 🚀 Execution
1. Load project in Vivado
2. Synthesize and implement
3. Generate bitstream
4. Program FPGA
5. Use buttons to control counter:
   - Start/Stop counting
   - Reset to 1
   - Adjust speed (if implemented)

## 📊 Implementation Details
- **Counter Logic:** 4-bit binary counter with BCD conversion
- **Clock Divider:** For visible counting speed
- **State Machine:** Control counting states
- **Display Driver:** 7-segment decoder or LED control

## 🎯 Applications
- Board game timer
- Random number generator (stop at random time)
- Educational demonstration of counters
- Turn indicator for multiplayer games
