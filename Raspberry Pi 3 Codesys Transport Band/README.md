# Raspberry Pi 3 CODESYS Transport Band

## 📋 Description
Industrial automation project using Raspberry Pi 3 with CODESYS runtime to control a transport/conveyor band system. Demonstrates PLC-style programming for embedded systems.

## 🎯 Objectives
- Implement PLC logic using CODESYS on Raspberry Pi
- Control conveyor belt motor and sensors
- Create HMI for system monitoring and control
- Apply industrial automation concepts

## 🛠️ Technologies
- **Platform:** Raspberry Pi 3
- **Software:** CODESYS V3
- **Programming:** Ladder Logic, Structured Text, Function Block Diagram
- **Hardware:** Motors, sensors, relays/motor drivers

## ⚙️ System Components
- **Conveyor motor control** (start/stop/speed)
- **Sensors:** Position sensors, object detection
- **Safety interlocks**
- **Emergency stop functionality**
- **Status indicators**

## 📦 Requirements
- Raspberry Pi 3 Model B/B+
- CODESYS Control for Raspberry Pi (Runtime)
- CODESYS Development System V3
- Motor driver/relay module
- DC motor (conveyor simulation)
- Sensors (IR, ultrasonic, or limit switches)
- Power supply

## 🚀 Installation & Execution

### Setup CODESYS Runtime on Raspberry Pi:
1. Install Raspberry Pi OS
2. Download and install CODESYS Control for Raspberry Pi
3. Configure network settings
4. Connect to Raspberry Pi from CODESYS IDE

### Deploy Project:
1. Open CODESYS Development System
2. Load the transport band project
3. Configure I/O mapping
4. Connect to Raspberry Pi runtime
5. Download and start application
6. Monitor via visualization/HMI

## 🔌 I/O Configuration
**Inputs:**
- Start/Stop buttons
- Emergency stop
- Position sensors
- Object detection sensors

**Outputs:**
- Motor control (PWM or relay)
- Status LEDs
- Alarm indicators

## 📊 Features
- Automatic/Manual operation modes
- Variable speed control
- Object counting
- Fault detection and handling
- Real-time monitoring via HMI

## 📚 Programming Languages Used
- Ladder Diagram (LD)
- Structured Text (ST)
- Function Block Diagram (FBD)
