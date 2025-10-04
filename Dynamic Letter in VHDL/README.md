# Dynamic Letter in VHDL

## 📋 Description
VHDL project that displays animated characters or letters on a VGA screen. The letters can move, change color, or animate based on user input or programmed sequences.

## 🎯 Objectives
- Display alphanumeric characters on VGA
- Implement character ROM or pixel mapping
- Add animation and movement capabilities
- Control display through FPGA inputs

## 🛠️ Technologies
- **Language:** VHDL
- **Tools:** Xilinx Vivado
- **Target:** FPGA with VGA interface
- **Display:** VGA monitor (640x480)

## ✨ Features
- Character rendering from ROM/memory
- Dynamic positioning (movement)
- Color control
- Animation effects
- User input control

## 📦 Requirements
- FPGA development board with VGA (Basys 3/Nexys)
- VGA monitor and cable
- Xilinx Vivado Design Suite
- USB programming cable

## 🚀 Execution
1. Open the project in Vivado
2. Verify character ROM data
3. Synthesize and implement
4. Generate bitstream
5. Program FPGA
6. Connect VGA monitor
7. Use switches/buttons for control

## 🎮 Controls
Typical controls include:
- Position movement (up/down/left/right)
- Character selection
- Color change
- Animation speed

## 📐 Implementation Details
- Character pixel matrix (e.g., 8x8 or 16x16)
- VGA timing controller integration
- Position counters and state machines
- ROM for character patterns
