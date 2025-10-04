# Estación Meteorológica

## 📋 Descripción
Estación meteorológica basada en microcontrolador que mide y registra variables ambientales. Sistema completo con sensores, display y opcionalmente conexión a Internet para monitoreo remoto.

## 🎯 Objetivos
- Medir variables meteorológicas en tiempo real
- Mostrar datos en display local
- Registrar histórico de mediciones
- Implementar interfaz de usuario
- Opcional: Transmitir datos a plataforma en la nube

## 🛠️ Tecnologías
- **Plataforma:** Arduino / ESP32 / Raspberry Pi
- **Lenguaje:** C/C++ (Arduino) o Python
- **Sensores:** DHT22, BMP280, anemómetro, pluviómetro
- **Display:** LCD 16x2/20x4, OLED, o interfaz web
- **Comunicación:** WiFi (ESP32), Serial, opcional IoT

## 🌡️ Variables Medidas
- **Temperatura** (°C)
- **Humedad relativa** (%)
- **Presión atmosférica** (hPa)
- **Velocidad del viento** (km/h)
- **Dirección del viento**
- **Precipitación** (mm)
- **Índice UV** (opcional)

## 📦 Requisitos

### Hardware:
- Microcontrolador (Arduino Uno/Mega, ESP32, o Raspberry Pi)
- Sensor DHT22 (temperatura y humedad)
- Sensor BMP280 (presión)
- Anemómetro (velocidad de viento)
- Veleta (dirección de viento)
- Pluviómetro
- Display LCD o OLED
- Fuente de alimentación
- Carcasa resistente a la intemperie

### Software:
```cpp
// Librerías Arduino
#include <DHT.h>
#include <Adafruit_BMP280.h>
#include <LiquidCrystal.h>
#include <SD.h>
```

## 🚀 Ejecución

### 1. Montaje de Hardware:
- Conectar sensores según diagrama de pines
- Instalar en ubicación exterior protegida
- Asegurar alimentación estable

### 2. Programación:
- Cargar código al microcontrolador
- Configurar intervalos de muestreo
- Calibrar sensores si es necesario

### 3. Operación:
- El sistema inicia automáticamente
- Toma lecturas periódicas
- Muestra datos en display
- Guarda histórico (tarjeta SD o nube)

## 📊 Funcionalidades
- Lecturas cada 1-5 minutos (configurable)
- Cálculo de promedios y máximos/mínimos
- Almacenamiento local en tarjeta SD
- Display rotativo de variables
- Registro temporal con marca de tiempo
- Interfaz web (si usa ESP32/Raspberry Pi)

## 🔌 Diagrama de Conexiones
Consultar esquemático en documentación del proyecto para:
- Conexiones de sensores (I2C, digital, analógico)
- Alimentación de componentes
- Display LCD/OLED
- Módulo SD (opcional)

## 📈 Visualización de Datos
- Display local: Valores en tiempo real
- Gráficos históricos (si tiene interfaz web)
- Exportación a CSV para análisis
- Dashboard en la nube (ThingSpeak, Blynk, etc.)

## 🌐 Conectividad IoT (Opcional)
Con ESP32 o módulo WiFi:
- Envío de datos a plataforma IoT
- Acceso remoto vía web
- Alertas y notificaciones
- Integración con servicios meteorológicos
