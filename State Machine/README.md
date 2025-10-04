# State Machine

## 📋 Description
Implementation of finite state machines (FSM) in VHDL/Verilog for FPGA. Demonstrates fundamental sequential logic design used in digital systems control.

## 🎯 Objectives
- Design and implement various types of state machines
- Understand Mealy and Moore machine architectures
- Apply FSM to practical control applications
- Verify state transitions and outputs

## 🛠️ Technologies
- **Language:** VHDL/Verilog
- **Tools:** Xilinx Vivado
- **Target:** FPGA development board
- **Simulation:** Vivado Simulator/ModelSim

## 🔄 State Machine Types
- **Moore Machine:** Outputs depend only on current state
- **Mealy Machine:** Outputs depend on current state and inputs
- **Examples:**
  - Traffic light controller
  - Vending machine
  - Sequence detector
  - Game controllers

## 📦 Requirements
- FPGA development board
- Xilinx Vivado Design Suite
- USB programming cable

## 🚀 Execution
1. Open project in Vivado
2. Review state diagram and HDL code
3. Run behavioral simulation
4. Verify state transitions
5. Synthesize and implement
6. Program FPGA
7. Test with inputs and observe outputs

## 📐 Design Components
- **State Encoding:** Binary, One-hot, Gray code
- **State Register:** Flip-flops to store current state
- **Next State Logic:** Combinational logic for transitions
- **Output Logic:** Generates outputs based on state/inputs

## 📊 Inputs/Outputs
- **Inputs:** Clock, reset, control signals, sensors
- **Outputs:** Status LEDs, control signals, displays

## 🎓 Learning Outcomes
- FSM design methodology
- State diagram to HDL translation
- Debugging sequential circuits
- Timing and synchronization concepts
