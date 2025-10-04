# Guessing Game

## 📋 Description
Interactive number guessing game implemented on FPGA or as software. The player tries to guess a randomly generated number within a limited number of attempts, receiving feedback after each guess.

## 🎯 Objectives
- Implement random number generation
- Process user input (switches, keyboard, or terminal)
- Provide feedback (higher/lower/correct)
- Track number of attempts
- Display game status and results
- Create engaging user experience

## 🛠️ Technologies

### FPGA Version:
- **Language:** VHDL/Verilog
- **Platform:** FPGA Board (Basys/Nexys)
- **Input:** Switches, buttons
- **Output:** 7-segment display, LEDs
- **Tools:** Xilinx Vivado

### Software Version:
- **Language:** Python, C++, or JavaScript
- **Platform:** PC, embedded system, or web
- **Interface:** Terminal, GUI, or web page

## 🎮 Game Rules
1. System generates random number (e.g., 1-100)
2. Player inputs guess
3. System responds:
   - "Too high!" - guess is above target
   - "Too low!" - guess is below target
   - "Correct!" - player wins
4. Limited attempts (e.g., 7 tries)
5. Display attempts remaining
6. Game over: win or lose
7. Option to play again

## 📦 Requirements

### FPGA Version:
- FPGA development board
- Xilinx Vivado or similar tools
- Switches for number input
- Display (7-segment or LED)

### Software Version:
```bash
# Python
python3 guessing_game.py

# Or for GUI version
pip install tkinter
```

## 🚀 Execution

### FPGA Version:
1. Program FPGA with bitstream
2. Use switches to set guess (binary or BCD)
3. Press "Submit" button
4. Read feedback on display/LEDs
5. Adjust guess and retry
6. Press "Reset" for new game

### Software Version:
```bash
# Terminal version
python guessing_game.py

# Web version
open index.html in browser
```

## 🎨 Features
- **Difficulty Levels:**
  - Easy: 1-50, 10 attempts
  - Medium: 1-100, 7 attempts
  - Hard: 1-500, 10 attempts

- **Feedback System:**
  - Visual indicators (LEDs/colors)
  - Numerical distance hints
  - Attempt counter
  - High score tracking

- **Enhanced Gameplay:**
  - Timer mode (beat the clock)
  - Multiplayer (take turns)
  - Progressive difficulty
  - Hints (e.g., even/odd)

## 📐 Implementation Details

### Random Number Generation:

**FPGA (LFSR):**
```vhdl
-- Linear Feedback Shift Register
lfsr <= lfsr(6 downto 0) & (lfsr(7) xor lfsr(5) xor lfsr(4) xor lfsr(3));
random_number <= lfsr mod 100 + 1;
```

**Software (Python):**
```python
import random
target = random.randint(1, 100)
```

### Game Logic:
```python
if guess < target:
    print("Too low!")
elif guess > target:
    print("Too high!")
else:
    print("Correct! You win!")
    game_won = True
```

## 📊 Display/Interface

### FPGA:
- **7-Segment:** Shows guess and attempt number
- **LEDs:** Indicate higher/lower/correct
- **Switches:** Input guess (binary encoding)

### Software:
- **Terminal:** Text-based interaction
- **GUI:** Buttons, text fields, status labels
- **Web:** HTML form with JavaScript logic

## 🔢 Input Methods

### FPGA:
- Binary switches (8 switches = 0-255)
- BCD switches with decoder
- Increment/decrement buttons
- Keypad (if available)

### Software:
- Keyboard input
- Mouse clicks (GUI)
- Touch input (mobile)

## 🏆 Scoring System
- Fewer attempts = higher score
- Time bonus (if timed mode)
- Difficulty multiplier
- High score leaderboard

## 📊 Game States
1. **Initialization:** Generate random number
2. **Input:** Wait for player guess
3. **Evaluation:** Compare guess to target
4. **Feedback:** Display result
5. **Check Win/Lose:** End game or continue
6. **Game Over:** Show results, offer replay

## 📄 Documentation
Project specifications and IEEE-style documentation in:
- `IEEE GUESS GAME.pdf`

## 🎓 Learning Outcomes
- Random number generation algorithms
- User input processing
- Game logic and state machines
- Display interfacing
- Conditional logic implementation
- Iterative development

## 🔧 Extensions
- Add sound effects
- Graphical animations
- Multiple difficulty levels
- Statistics tracking
- Networked multiplayer
- AI opponent mode
- Custom number ranges
