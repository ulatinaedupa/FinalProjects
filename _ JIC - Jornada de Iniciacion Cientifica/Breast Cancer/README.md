# Breast Cancer Detection with Deep Learning

## 📋 Descripción
Proyecto de investigación sobre la aplicación de técnicas de **Deep Learning** para la detección y clasificación automática de cáncer de mama mediante el análisis de imágenes histopatológicas. Este trabajo fue presentado en la **Jornada de Iniciación Científica (JIC)**.

## 🎯 Objetivos
- Desarrollar un modelo de Deep Learning para clasificación de imágenes médicas
- Detectar automáticamente la presencia de células cancerígenas en tejido mamario
- Evaluar la precisión y sensibilidad del modelo en datos reales
- Contribuir a herramientas de diagnóstico asistido por computadora
- Reducir el tiempo de diagnóstico y mejorar la detección temprana

## 🛠️ Tecnologías
- **Lenguaje:** Python
- **Framework:** TensorFlow/Keras o PyTorch
- **Arquitectura:** Convolutional Neural Networks (CNN)
- **Librerías:** numpy, pandas, scikit-learn, matplotlib, OpenCV
- **Dataset:** Imágenes histopatológicas de cáncer de mama
- **Métricas:** Accuracy, Precision, Recall, F1-Score, ROC-AUC

## 🔬 Metodología

### 1. Adquisición de Datos
- **Dataset:** Histopathologic Cancer Detection (Kaggle) o similar
- **Tipo:** Imágenes de tejido mamario (benigno vs maligno)
- **Preprocesamiento:** Normalización, redimensionamiento, data augmentation

### 2. Arquitectura del Modelo
**Posibles arquitecturas implementadas:**
- **CNN personalizada:** Capas convolucionales + pooling + dense
- **Transfer Learning:** VGG16, ResNet50, InceptionV3, EfficientNet
- **Fine-tuning:** Ajuste de pesos pre-entrenados en ImageNet

### 3. Entrenamiento
- División de datos: Train (70%), Validation (15%), Test (15%)
- Técnicas de regularización: Dropout, Batch Normalization
- Data Augmentation: Rotación, flip, zoom, brightness
- Optimizador: Adam, SGD
- Loss Function: Binary Crossentropy

### 4. Evaluación
- **Métricas principales:**
  - Accuracy (Exactitud general)
  - Sensitivity/Recall (Tasa de verdaderos positivos)
  - Specificity (Tasa de verdaderos negativos)
  - F1-Score (Balance entre precision y recall)
  - ROC-AUC Curve

## 📊 Resultados

### Rendimiento del Modelo
Los resultados detallados están disponibles en los artículos científicos. Métricas típicas esperadas:
- **Accuracy:** ~85-95%
- **Sensitivity:** ~90-98% (crucial para no perder casos positivos)
- **Specificity:** ~85-93%
- **AUC-ROC:** ~0.92-0.98

### Matriz de Confusión
Análisis de:
- Verdaderos Positivos (TP): Casos correctamente clasificados como cáncer
- Verdaderos Negativos (TN): Casos correctamente clasificados como benignos
- Falsos Positivos (FP): Falsa alarma
- Falsos Negativos (FN): Casos no detectados (más críticos)

## 📦 Requisitos

### Software:
```bash
pip install tensorflow keras numpy pandas scikit-learn matplotlib seaborn opencv-python pillow
```

### Hardware Recomendado:
- GPU (NVIDIA CUDA compatible) para entrenamiento
- Mínimo 8GB RAM
- 10-20GB espacio en disco para datasets

## 🚀 Ejecución

### 1. Preparar Dataset:
```python
# Descargar dataset (ejemplo Kaggle)
# Organizar en carpetas: train/benign, train/malignant
```

### 2. Entrenar Modelo:
```python
python train_model.py --epochs 50 --batch_size 32 --model resnet50
```

### 3. Evaluar Modelo:
```python
python evaluate_model.py --model_path best_model.h5 --test_data test/
```

### 4. Inferencia:
```python
python predict.py --image path/to/sample.png
```

## 🧬 Aplicación Clínica

### Impacto Médico:
- **Diagnóstico asistido:** Apoyo a patólogos en la revisión de biopsias
- **Screening masivo:** Procesamiento rápido de grandes volúmenes
- **Segunda opinión:** Validación de diagnósticos
- **Detección temprana:** Mejora en tasa de supervivencia
- **Reducción de costos:** Optimización de recursos médicos

### Limitaciones:
- No reemplaza el diagnóstico médico profesional
- Requiere validación clínica extensa
- Sensibilidad a calidad de imagen
- Necesidad de datasets diversos y balanceados

## 📄 Publicaciones

Este proyecto cuenta con documentación científica formal:

1. **`1268_articulo.pdf`** - Artículo científico completo con metodología y resultados
2. **`1268_poster.pdf`** - Póster de presentación en JIC
3. **`Artículo preliminar JIC - DL Cancer de Mama.pdf`** - Versión preliminar del trabajo
4. **`paper_86.pdf`** - Paper adicional con análisis extendido

## 📈 Arquitectura CNN Típica

```
Input (224x224x3)
    ↓
Conv2D (32 filters, 3x3) + ReLU
    ↓
MaxPooling (2x2)
    ↓
Conv2D (64 filters, 3x3) + ReLU
    ↓
MaxPooling (2x2)
    ↓
Conv2D (128 filters, 3x3) + ReLU
    ↓
MaxPooling (2x2)
    ↓
Flatten
    ↓
Dense (256) + ReLU + Dropout(0.5)
    ↓
Dense (1) + Sigmoid
    ↓
Output (Benign/Malignant)
```

## 🎓 Aprendizajes Clave
- Aplicación de Deep Learning en medicina
- Procesamiento de imágenes médicas
- Transfer Learning y fine-tuning
- Evaluación de modelos en contextos críticos
- Importancia de métricas más allá de accuracy
- Comunicación científica (artículos, pósters)

## 🔍 Trabajo Futuro
- Implementación de modelos de ensemble
- Segmentación de regiones específicas
- Clasificación multi-clase (subtipos de cáncer)
- Explicabilidad (Grad-CAM, LIME)
- Integración en sistemas hospitalarios
- Estudios clínicos prospectivos

## 📚 Referencias
Consultar los artículos científicos en este directorio para:
- Referencias bibliográficas completas
- Metodología detallada
- Análisis estadístico de resultados
- Comparación con estado del arte

---

**🩺 Inteligencia Artificial al servicio de la salud: salvando vidas a través de la detección temprana.**
