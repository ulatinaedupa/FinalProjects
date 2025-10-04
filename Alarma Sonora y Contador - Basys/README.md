# Alarma Sonora y Contador - Basys

## 📋 Descripción
Sistema digital implementado en FPGA Basys que combina una alarma sonora con un contador. El proyecto demuestra control de señales de audio y displays de 7 segmentos.

## 🎯 Objetivos
- Implementar un contador digital configurable
- Generar señales de audio para alarma
- Controlar displays de 7 segmentos
- Integrar entrada de usuario para configuración

## 🛠️ Tecnologías
- **Lenguaje:** VHDL
- **Herramientas:** Xilinx Vivado/ISE
- **Plataforma:** Basys 3 FPGA Board
- **Periféricos:** Display 7 segmentos, altavoz/buzzer

## ⚙️ Funcionalidades
- Contador ascendente/descendente
- Alarma al alcanzar valores límite
- Generación de tonos audibles
- Visualización en displays de 7 segmentos
- Control mediante switches y botones

## 📦 Requisitos
- Tarjeta FPGA Basys 3
- Xilinx Vivado Design Suite
- Cable USB para programación
- Altavoz o buzzer conectado (si no está integrado)

## 🚀 Ejecución
1. Abrir proyecto en Vivado
2. Sintetizar el diseño
3. Implementar y generar bitstream
4. Programar la FPGA Basys
5. Configurar contador con switches
6. Observar contador en displays
7. Verificar activación de alarma

## 📊 Entradas/Salidas
- **Entradas:** Botones (reset, start/stop), switches (configuración)
- **Salidas:** Displays 7 segmentos, señal de audio, LEDs

## 🔊 Generación de Audio
La alarma utiliza:
- Generador de frecuencia PWM
- Tonos configurable (ej. 1kHz - 3kHz)
- Modulación para efectos de alarma
