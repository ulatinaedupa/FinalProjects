# Digital Voltimeter

## 📋 Description
Digital voltmeter project using microcontroller and ADC to measure and display voltage levels. Demonstrates analog-to-digital conversion, calibration, and display interfacing.

## 🎯 Objectives
- Measure DC voltage accurately using ADC
- Display voltage reading on LCD/OLED/7-segment
- Implement voltage divider for extended range
- Calibrate for accurate measurements
- Add safety features for overvoltage protection

## 🛠️ Technologies
- **Platform:** Arduino / PIC / ATmega microcontroller
- **Language:** C/C++
- **ADC Resolution:** 10-bit or 12-bit
- **Display:** LCD 16x2, OLED, or 7-segment
- **Components:** Voltage divider, op-amp (optional)

## 📐 Measurement Specifications
- **Range:** 0-5V (direct) or 0-30V (with voltage divider)
- **Resolution:** Depends on ADC (e.g., 10-bit = 1024 steps)
- **Accuracy:** ±1-2% with calibration
- **Display:** Up to 2-3 decimal places

## 📦 Requirements

### Hardware:
- Microcontroller board (Arduino Uno/Nano recommended)
- LCD display (16x2 with I2C) or OLED
- Resistors for voltage divider (if measuring >5V)
- Input terminals/connectors
- Optional: Op-amp for buffering
- Power supply (USB or battery)

### Software:
```cpp
#include <LiquidCrystal.h>
// or
#include <Wire.h>
#include <LiquidCrystal_I2C.h>
```

## 🚀 Execution

### 1. Circuit Assembly:
- Connect voltage divider to ADC input
- Wire LCD to microcontroller
- Add input protection (Zener diode recommended)

### 2. Upload Code:
```bash
# Using Arduino IDE
1. Open .ino file
2. Select board and port
3. Upload to microcontroller
```

### 3. Calibration:
- Measure known reference voltage
- Adjust calibration factor in code
- Verify accuracy with multimeter

### 4. Operation:
- Connect voltage source to input terminals
- Read value from display
- Observe real-time updates

## ⚙️ Features
- Real-time voltage measurement
- Auto-ranging (if multiple scales)
- Min/Max value tracking
- Averaging for noise reduction
- Overvoltage warning
- Battery/AC voltage measurement modes

## 🔌 Circuit Design

### Voltage Divider (for >5V):
```
Vin ----[R1]----+----[R2]---- GND
                |
              ADC Pin

Vout = Vin × (R2 / (R1 + R2))
```

### Typical Values:
- For 0-25V: R1=39kΩ, R2=10kΩ (divides by ~5)
- Adjust based on max input voltage

## 📊 Calibration Formula
```
Actual Voltage = (ADC_Value / ADC_Max) × Vref × Divider_Ratio
```

Example for 10-bit ADC:
```
Voltage = (ADC_Reading / 1023) × 5.0 × Divider
```

## 🛡️ Safety Features
- Zener diode clamp at ADC input
- Series resistor for current limiting
- Fuse on input (optional)
- Maximum voltage warning on display
- Reverse polarity protection (diode)

## 📄 Documentation
Detailed circuit diagrams, calibration procedures, and results available in project documentation files.

## 🔍 Troubleshooting
- **Incorrect readings:** Check calibration and voltage divider
- **Fluctuating values:** Add capacitor for filtering
- **No display:** Verify LCD connections and contrast
- **Out of range:** Adjust voltage divider ratio
