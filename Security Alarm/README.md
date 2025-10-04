# Security Alarm

## 📋 Description
Digital security alarm system implemented on FPGA. Features sensor input processing, alarm triggering, and user interface for arming/disarming the system.

## 🎯 Objectives
- Implement a functional security alarm system
- Process multiple sensor inputs
- Generate alarm signals (audio/visual)
- Provide user authentication/control interface
- Demonstrate real-world embedded system design

## 🛠️ Technologies
- **Language:** VHDL/Verilog
- **Tools:** Xilinx Vivado
- **Platform:** FPGA development board
- **Peripherals:** Sensors, buzzer/speaker, LEDs, keypad/buttons

## 🔐 Features
- Multiple sensor inputs (door, window, motion)
- Arm/Disarm functionality
- Password/code protection
- Entry/Exit delay timers
- Alarm activation (sound + visual)
- Status display
- Zone monitoring

## 📦 Requirements
- FPGA board (Basys 3/Nexys recommended)
- Sensors (switches simulate sensors for testing)
- Buzzer or audio output
- Xilinx Vivado Design Suite
- Optional: Keypad for password entry

## 🚀 Execution
1. Open project in Vivado
2. Configure sensor inputs
3. Synthesize and implement
4. Program FPGA
5. System operation:
   - Enter code to arm system
   - Trigger sensors to test alarm
   - Disarm using correct code

## 🎮 Controls
- **Arm/Disarm:** Button or keypad code
- **Sensors:** Switches or external sensors
- **Reset:** System reset button
- **Zone Select:** Individual sensor monitoring

## 📊 System States
- **Disarmed:** System inactive, sensors ignored
- **Armed:** Monitoring sensors
- **Entry Delay:** Grace period after trigger
- **Alarm:** Active alarm state
- **Exit Delay:** Time to leave after arming

## 🔔 Alarm Outputs
- Audible alarm (buzzer/speaker)
- Visual indicators (flashing LEDs)
- Status display (7-segment or LCD)
