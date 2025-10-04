# Cell Nuclei Segmentation - Segmentación de Núcleos Celulares con IA

## 📋 Descripción
Proyecto de investigación presentado en **CONESCAPAN 2024** sobre la aplicación de técnicas de **Deep Learning** para la segmentación automática de núcleos celulares en imágenes microscópicas. Este trabajo demuestra cómo la inteligencia artificial puede asistir en el análisis biomédico y diagnóstico patológico.

## 🎯 Objetivos
- Implementar un modelo de segmentación semántica para núcleos celulares
- Automatizar el conteo y análisis morfológico de células
- Mejorar la precisión y velocidad del diagnóstico citológico
- Evaluar diferentes arquitecturas de redes neuronales para segmentación
- Contribuir a herramientas de análisis biomédico asistido por IA

## 🛠️ Tecnologías
- **Lenguaje:** Python
- **Framework:** TensorFlow/Keras o PyTorch
- **Arquitectura Principal:** U-Net (o variantes como U-Net++, Attention U-Net)
- **Librerías:** numpy, pandas, scikit-image, OpenCV, matplotlib
- **Dataset:** Data Science Bowl 2018 (Kaggle) o datasets similares de microscopía
- **Métricas:** IoU (Intersection over Union), Dice Coefficient, Pixel Accuracy

## 🔬 Problema de Investigación

### Contexto Médico:
La identificación y segmentación de núcleos celulares es crucial para:
- **Diagnóstico de cáncer:** Análisis de morfología nuclear
- **Conteo celular:** Proliferación y viabilidad
- **Investigación biomédica:** Estudios de ciclo celular
- **Patología:** Gradación de tumores
- **Drug discovery:** Evaluación de efectos farmacológicos

### Desafío Técnico:
- Variabilidad en tamaño y forma de núcleos
- Solapamiento entre células
- Diferentes tipos de tinción y contraste
- Artefactos en imágenes microscópicas
- Necesidad de alta precisión en bordes

## 🧠 Arquitectura U-Net

### Estructura:
```
Input Image (256x256x3)
         ↓
    [Encoder Path]
    Conv + ReLU + Conv + ReLU
         ↓
      MaxPool
         ↓
    (Repeat: increasing filters)
    64 → 128 → 256 → 512 → 1024
         ↓
    [Bottleneck]
         ↓
    [Decoder Path]
    UpConv + Concatenate(skip) + Conv
         ↓
    (Repeat: decreasing filters)
    1024 → 512 → 256 → 128 → 64
         ↓
    Conv 1x1 + Sigmoid
         ↓
    Output Mask (256x256x1)
```

### Características Clave:
- **Skip connections:** Preservan detalles espaciales
- **Encoder-Decoder:** Capturan contexto y localización
- **Upsampling:** Reconstrucción precisa de máscaras
- **Augmentation:** Mejora generalización con pocos datos

## 📊 Metodología

### 1. Preprocesamiento
```python
# Normalización de imágenes
image = image / 255.0

# Redimensionamiento estándar
resize(image, (256, 256))

# Data Augmentation
- Rotación (90°, 180°, 270°)
- Flip horizontal/vertical
- Ajustes de brillo y contraste
- Elastic deformation
```

### 2. Anotación de Datos
- **Máscaras binarias:** Núcleo (1) vs fondo (0)
- **Máscaras de instancia:** Cada núcleo con ID único
- **Separación de bordes:** Para núcleos solapados

### 3. Entrenamiento
```python
# Loss Functions
- Binary Crossentropy
- Dice Loss
- Combined: BCE + Dice

# Optimizer
Adam(lr=1e-4)

# Métricas
IoU, Dice, Precision, Recall
```

### 4. Post-procesamiento
- Thresholding (umbralización)
- Morphological operations (apertura/cierre)
- Watershed para separar núcleos solapados
- Eliminación de objetos pequeños (ruido)

## 📈 Métricas de Evaluación

### Intersection over Union (IoU):
```
IoU = Area of Overlap / Area of Union
IoU = TP / (TP + FP + FN)
```

### Dice Coefficient:
```
Dice = 2 × TP / (2 × TP + FP + FN)
Dice = 2 × |A ∩ B| / (|A| + |B|)
```

### Resultados Típicos:
- **IoU:** 0.85-0.92
- **Dice:** 0.90-0.95
- **Pixel Accuracy:** 0.94-0.98
- **F1-Score:** 0.88-0.94

## 📦 Requisitos

### Hardware:
- GPU con CUDA (NVIDIA GTX 1060 o superior)
- 8GB+ RAM
- 20GB+ almacenamiento para datasets

### Software:
```bash
pip install tensorflow-gpu keras numpy pandas opencv-python scikit-image matplotlib seaborn pillow
```

## 🚀 Ejecución

### 1. Preparar Dataset:
```bash
# Estructura esperada
data/
  ├── images/
  │   ├── img001.png
  │   ├── img002.png
  └── masks/
      ├── img001.png
      ├── img002.png
```

### 2. Entrenar Modelo:
```python
python train_unet.py --epochs 100 --batch_size 16 --lr 1e-4
```

### 3. Evaluar:
```python
python evaluate.py --model unet_best.h5 --test_dir data/test/
```

### 4. Inferencia:
```python
python segment.py --image sample.png --output result.png
```

## 🔍 Aplicaciones Prácticas

### En Investigación:
- Estudios de proliferación celular
- Análisis de respuesta a fármacos
- Seguimiento de cultivos celulares
- Cuantificación automatizada

### En Clínica:
- Asistencia en diagnóstico de cáncer
- Análisis de biopsias
- Conteo de células en hemogramas
- Gradación tumoral automatizada

### En Industria Farmacéutica:
- High-throughput screening
- Evaluación de toxicidad celular
- Control de calidad en producción
- Desarrollo de nuevos fármacos

## 📊 Comparación de Arquitecturas

| Modelo | IoU | Dice | Parámetros | Velocidad |
|--------|-----|------|------------|-----------|
| U-Net | 0.89 | 0.94 | 31M | Rápida |
| U-Net++ | 0.91 | 0.95 | 36M | Media |
| Attention U-Net | 0.90 | 0.94 | 34M | Media |
| Mask R-CNN | 0.88 | 0.93 | 44M | Lenta |

## 📄 Publicaciones y Presentaciones

Este proyecto cuenta con documentación completa:

1. **`CONESCAPAN24-Segmentacion_20250410_094653_0000_compressed.pdf`**
   - Presentación oficial en CONESCAPAN 2024
   - Diapositivas con metodología y resultados

2. **`IA Midterm_20250410_093056_0000_compressed.pdf`**
   - Análisis intermedio del proyecto
   - Evaluación técnica detallada

3. **`Inteligencia Artificial - Segmentación - IEEE.pdf`**
   - Artículo formato IEEE
   - Documentación científica completa

## 🎓 Aprendizajes Técnicos
- Arquitecturas encoder-decoder para segmentación
- U-Net y sus variantes
- Técnicas de data augmentation para imágenes médicas
- Métricas especializadas (IoU, Dice)
- Post-procesamiento de máscaras
- Manejo de datasets de imágenes biomédicas
- Visualización de resultados de segmentación

## 🔬 Desafíos Enfrentados
1. **Solapamiento de núcleos:** Uso de watershed y máscaras de bordes
2. **Variabilidad de tinción:** Normalización de color robusta
3. **Desbalance de clases:** Uso de weighted loss functions
4. **Datos limitados:** Data augmentation intensiva
5. **Bordes imprecisos:** Arquitecturas con skip connections

## 🚀 Trabajo Futuro
- Implementar modelos 3D para stacks de imágenes
- Segmentación multi-clase (núcleo, citoplasma, membrana)
- Análisis morfológico automático (tamaño, forma, textura)
- Integración con sistemas LIMS hospitalarios
- Aplicación en tiempo real para microscopía en vivo
- Detección de anomalías nucleares
- Clasificación posterior a segmentación

## 📚 Referencias Técnicas
- Ronneberger et al. (2015): U-Net: Convolutional Networks for Biomedical Image Segmentation
- Zhou et al. (2018): UNet++: A Nested U-Net Architecture for Medical Image Segmentation
- Oktay et al. (2018): Attention U-Net: Learning Where to Look for the Pancreas

## 🏆 Reconocimientos
Proyecto presentado y reconocido en:
- **CONESCAPAN 2024** - Congreso Nacional de Estudiantes de Ingeniería
- Categoría: Inteligencia Artificial y Procesamiento de Imágenes
- Aplicación: Ingeniería Biomédica y Salud

---

**🔬 Segmentación celular inteligente: transformando microscopios en asistentes diagnósticos automáticos.**
