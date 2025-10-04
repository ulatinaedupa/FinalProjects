# VGA Patterns

## 📋 Description
VHDL project for generating various visual patterns on a VGA display. Demonstrates timing control, pixel manipulation, and graphic generation using FPGA.

## 🎯 Objectives
- Implement VGA timing controller (horizontal and vertical sync)
- Generate multiple display patterns
- Control pattern selection via FPGA inputs
- Display graphics at standard VGA resolution

## 🛠️ Technologies
- **Language:** VHDL
- **Tools:** Xilinx Vivado
- **Target:** FPGA with VGA output
- **Resolution:** 640x480 @ 60Hz (standard VGA)

## 🎨 Pattern Examples
- Solid colors
- Vertical/horizontal stripes
- Checkerboard patterns
- Color gradients
- Geometric shapes
- Test patterns

## 📦 Requirements
- FPGA board with VGA port (Basys 3/Nexys recommended)
- VGA cable
- VGA-compatible monitor
- Xilinx Vivado Design Suite

## 🚀 Execution
1. Load project in Vivado
2. Synthesize and implement design
3. Generate bitstream
4. Connect FPGA to VGA monitor
5. Program the FPGA
6. Use switches/buttons to select patterns

## 📐 Technical Specifications
- **VGA Timing:** 25.175 MHz pixel clock
- **Resolution:** 640x480 pixels
- **Color Depth:** Varies (typically 12-bit RGB)
- **Sync Signals:** HSYNC, VSYNC

## 📊 Inputs/Outputs
- **Inputs:** Pattern selector switches, reset
- **Outputs:** VGA RGB signals, HSYNC, VSYNC
