# Keyboard Synthetizer

## 📋 Description
Digital music synthesizer implemented on FPGA (Basys 3) that generates musical notes and plays them through audio output. Uses keyboard or switches as input to create a playable instrument.

## 🎯 Objectives
- Generate audio waveforms (sine, square, sawtooth)
- Map keyboard/switches to musical notes
- Implement multiple octaves
- Create PWM audio output
- Design polyphonic or monophonic synthesis
- Add sound effects and envelopes

## 🛠️ Technologies
- **Language:** VHDL
- **Platform:** Basys 3 FPGA Board
- **Tools:** Xilinx Vivado
- **Audio:** PWM output to speaker/amplifier
- **Input:** PS/2 keyboard or board switches
- **Components:** Frequency dividers, waveform generators

## 🎵 Features
- Multiple waveform generation:
  - Square wave (basic tone)
  - Sine wave (pure tone)
  - Sawtooth wave
  - Triangle wave
- Note frequency generation (A4 = 440 Hz, etc.)
- Octave selection (multiple ranges)
- Volume control
- Attack-Decay-Sustain-Release (ADSR) envelope
- Multiple voices/polyphony (if implemented)
- Visual feedback on LEDs/7-segment

## 📦 Requirements
- Basys 3 FPGA Development Board
- Speaker or headphones (3.5mm audio)
- Audio amplifier (optional, for louder output)
- PS/2 Keyboard (optional, for piano-style input)
- Xilinx Vivado Design Suite

## 🚀 Execution

### 1. Hardware Setup:
- Connect speaker/headphones to audio jack
- Connect PS/2 keyboard (if used)
- Power the Basys 3 board

### 2. Programming:
1. Open project in Vivado
2. Synthesize and implement
3. Generate bitstream
4. Program FPGA

### 3. Playing:
- Use switches for note selection
- Or type keys on PS/2 keyboard for notes
- Press buttons for octave change
- Adjust switches for volume/waveform

## 🎹 Note Mapping

### Keyboard Layout (Piano Style):
```
Key:  A S D F G H J K L
Note: C D E F G A B C D
```

### Frequency Table (Equal Temperament):
- C4: 261.63 Hz
- D4: 293.66 Hz
- E4: 329.63 Hz
- F4: 349.23 Hz
- G4: 392.00 Hz
- A4: 440.00 Hz
- B4: 493.88 Hz
- C5: 523.25 Hz

## ⚙️ System Architecture

### Main Components:
1. **Frequency Generator:** Creates note frequencies
2. **Waveform Generator:** Produces audio waveforms
3. **PWM Modulator:** Converts digital to analog (audio)
4. **Input Handler:** Processes keyboard/switch input
5. **Envelope Generator:** ADSR shaping (optional)
6. **Mixer:** Combines multiple voices (if polyphonic)

### Clock Division:
- System clock (100 MHz on Basys 3)
- Dividers for audio sample rate
- Note frequency synthesis using NCO or lookup tables

## 🔊 Audio Output
- **Method:** PWM (Pulse Width Modulation)
- **Sample Rate:** 44.1 kHz or 48 kHz
- **Bit Depth:** 8-bit or 12-bit
- **Output:** Mono (can be extended to stereo)

## 🎚️ Controls
- **Switches:** Note selection, waveform type, volume
- **Buttons:** Octave up/down, sustain pedal
- **Keyboard:** Direct note input
- **LEDs:** Active note indicator
- **7-Segment:** Current note display

## 📐 Waveform Generation

### Square Wave:
```vhdl
-- Toggle at note frequency
if counter >= half_period then
    output <= not output;
end if;
```

### PWM DAC:
```vhdl
-- Convert digital sample to PWM
pwm_output <= '1' when pwm_counter < sample_value else '0';
```

## 🎼 Musical Features
- Chromatic scale (all 12 notes)
- Multiple octaves (selectable)
- Chord capability (if polyphonic)
- Portamento/glide (smooth transitions)
- Vibrato effect (pitch modulation)
- Tremolo effect (amplitude modulation)

## 📊 Display Feedback
- Current note name on 7-segment
- Active octave indicator
- Waveform type on LEDs
- Volume level visualization

## 📄 Documentation
Complete implementation details in:
- `Basys 3 - Sintetizador de Teclado.pdf`

## 🎓 Learning Outcomes
- Digital signal processing (DSP)
- Audio synthesis fundamentals
- PWM and DAC principles
- Musical note frequencies
- Real-time input processing
- FPGA audio applications

## 🔧 Extensions & Improvements
- Add more complex waveforms
- Implement filters (low-pass, high-pass)
- Record and playback sequences
- MIDI input support
- Effects: reverb, delay, chorus
- Save/load presets
