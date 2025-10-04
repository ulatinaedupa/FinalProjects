# Simple Terminal

## 📋 Description
Custom command-line terminal implementation on FPGA (Basys 3). This project emulates a simple terminal interface with keyboard input and VGA display output, demonstrating digital system integration.

## 🎯 Objectives
- Implement keyboard interface (PS/2) on FPGA
- Display text on VGA monitor
- Process and echo keyboard input
- Create character buffer and cursor management
- Implement basic terminal commands

## 🛠️ Technologies
- **Language:** VHDL
- **Platform:** Basys 3 FPGA Board
- **Tools:** Xilinx Vivado
- **Interfaces:** PS/2 Keyboard, VGA Display
- **Features:** Character ROM, text buffer, cursor control

## ⌨️ Features
- PS/2 keyboard input capture
- Character echo to VGA display
- Scrolling text buffer
- Cursor positioning
- Basic text editing (backspace)
- Line-based display
- Special key handling (Enter, Backspace, etc.)

## 📦 Requirements
- Basys 3 FPGA Development Board
- PS/2 Keyboard (or USB with PS/2 adapter)
- VGA Monitor and cable
- Xilinx Vivado Design Suite
- USB cable for programming

## 🚀 Execution

### 1. Hardware Setup:
- Connect PS/2 keyboard to Basys 3 PS/2 port
- Connect VGA monitor to VGA port
- Power the board

### 2. Programming:
1. Open project in Vivado
2. Synthesize and implement design
3. Generate bitstream
4. Program FPGA

### 3. Operation:
- Type on keyboard
- See characters appear on VGA monitor
- Use Enter for new line
- Use Backspace to delete characters

## 📐 System Architecture

### Main Components:
1. **PS/2 Controller:** Receives keyboard scan codes
2. **Scan Code Decoder:** Converts to ASCII
3. **Text Buffer:** Stores display characters (e.g., 80x30)
4. **VGA Controller:** Generates video timing signals
5. **Character Generator:** ROM with font data
6. **Cursor Logic:** Manages cursor position

### Display Specifications:
- **Resolution:** 640x480 @ 60Hz
- **Character Size:** 8x16 pixels (typical)
- **Display Area:** 80 columns × 30 rows
- **Colors:** Configurable (text + background)

## 🔌 Interfaces

### PS/2 Keyboard:
- Clock and Data lines
- Serial communication protocol
- Scan code reception and decoding

### VGA Output:
- RGB signals (3-bit or 12-bit color)
- HSYNC and VSYNC timing
- 25.175 MHz pixel clock

## 💻 Functionality
- Real-time character display
- Automatic line wrapping
- Screen scrolling when full
- Cursor blinking (optional)
- Upper/lower case support
- Special character handling

## 📄 Documentation
Complete design details, timing diagrams, and user manual available in:
- `informe final digitales.pdf`
- `Manual Programa Basys 3.pdf`

## 🎓 Learning Outcomes
- FPGA interface design
- PS/2 protocol implementation
- VGA timing and display generation
- Character encoding and display
- State machine design for I/O
