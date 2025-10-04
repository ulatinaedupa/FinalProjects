# PWM Modes

## 📋 Description
Exploration and implementation of various Pulse Width Modulation (PWM) modes on microcontrollers. Demonstrates different PWM techniques for motor control, LED dimming, and signal generation.

## 🎯 Objectives
- Understand PWM principles and applications
- Implement different PWM modes (Fast PWM, Phase-Correct PWM)
- Control LED brightness and motor speed
- Generate variable frequency signals
- Compare PWM modes and their characteristics

## 🛠️ Technologies
- **Platform:** Arduino / ATmega / STM32
- **Language:** C/C++ (Arduino) or Assembly
- **Hardware:** LEDs, DC motors, oscilloscope (for analysis)
- **Peripherals:** Timer/Counter modules

## 📡 PWM Modes Implemented

### 1. Fast PWM
- Maximum frequency
- Non-inverted and inverted output
- Applications: LED dimming, motor speed control

### 2. Phase-Correct PWM
- Symmetric waveform
- Better for motor control (reduced noise)
- Lower frequency than Fast PWM

### 3. Phase & Frequency Correct PWM
- Adjustable frequency
- Maintains symmetry
- Precision applications

### 4. Variable Frequency PWM
- Dynamic frequency adjustment
- Tone generation
- Advanced motor control

## 📦 Requirements

### Hardware:
- Microcontroller board (Arduino Uno/Mega)
- LEDs with resistors
- DC motor with driver (L298N, L293D)
- Potentiometer (for control)
- Oscilloscope (optional, for analysis)
- Power supply

### Software:
```cpp
// Timer configuration for PWM
#include <Arduino.h>
// Timer registers: TCCR1A, TCCR1B, OCR1A, etc.
```

## 🚀 Execution

### 1. Hardware Setup:
- Connect LED to PWM pin (e.g., Pin 9, 10)
- Connect motor to PWM-capable pin with driver
- Add potentiometer to analog input for control

### 2. Upload Code:
```bash
# Arduino IDE
1. Select desired PWM mode sketch
2. Upload to board
3. Adjust potentiometer to change duty cycle/frequency
```

### 3. Observation:
- LED brightness varies with duty cycle
- Motor speed changes with PWM value
- Use oscilloscope to view waveforms

## ⚙️ Features
- Multiple PWM modes selectable
- Adjustable duty cycle (0-100%)
- Variable frequency generation
- Real-time control via potentiometer or serial
- Visual feedback (LED brightness)
- Motor speed control demonstration

## 📊 PWM Parameters

### Frequency Calculation:
```
PWM_Frequency = CPU_Clock / (Prescaler × (TOP + 1))
```

### Duty Cycle:
```
Duty_Cycle (%) = (OCRnx / TOP) × 100
```

### Typical Values:
- **Fast PWM:** 490 Hz or 980 Hz (Arduino default)
- **Phase-Correct:** 245 Hz or 490 Hz
- **Custom:** Adjustable via timer configuration

## 🔌 Pin Configuration (Arduino Uno)
- **Pin 3, 11:** Timer2 (8-bit)
- **Pin 9, 10:** Timer1 (16-bit)
- **Pin 5, 6:** Timer0 (8-bit, used by delay())

## 🎯 Applications Demonstrated
1. **LED Dimming:** Smooth brightness control
2. **Motor Speed Control:** DC motor variable speed
3. **Servo Control:** Position control via PWM
4. **Audio Tones:** Sound generation
5. **Analog Signal Simulation:** DAC alternative

## 📈 Waveform Analysis
Compare modes using oscilloscope:
- Frequency stability
- Duty cycle accuracy
- Rise/fall times
- Noise characteristics
- Switching frequency

## 💡 Code Examples

### Fast PWM on Timer1:
```cpp
void setup() {
  TCCR1A = _BV(COM1A1) | _BV(WGM11);
  TCCR1B = _BV(WGM13) | _BV(WGM12) | _BV(CS11);
  ICR1 = 40000; // TOP value
  OCR1A = 20000; // 50% duty cycle
}
```

### Arduino analogWrite:
```cpp
void loop() {
  int val = analogRead(A0);
  int pwm = map(val, 0, 1023, 0, 255);
  analogWrite(9, pwm);
}
```
