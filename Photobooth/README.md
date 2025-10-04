# Photobooth

## 📋 Description
Interactive photobooth application that captures photos using a webcam, applies filters and effects, and saves images. Perfect for events, parties, or learning computer vision and GUI programming.

## 🎯 Objectives
- Capture images from webcam in real-time
- Apply various filters and effects
- Implement countdown timer for photo capture
- Save photos with timestamps
- Create user-friendly graphical interface
- Add fun photo frames and overlays

## 🛠️ Technologies
- **Language:** Python
- **Libraries:** OpenCV, tkinter/PyQt, PIL/Pillow, numpy
- **Camera:** Webcam (USB or built-in)
- **Features:** Real-time video processing, image filters, GUI

## 📸 Features
- Live camera preview
- Countdown timer (3-2-1-Smile!)
- Photo capture with effects:
  - Black & White
  - Sepia tone
  - Blur/Sharpen
  - Edge detection
  - Color adjustments
  - Fun filters (cartoon, sketch)
- Photo frames and overlays
- Gallery view of captured photos
- Print or share functionality

## 📦 Requirements

### Hardware:
- Computer with webcam
- Sufficient storage for photos
- Optional: External USB webcam
- Optional: Printer for photo printing

### Software:
```bash
pip install opencv-python pillow numpy
# For GUI (choose one):
pip install tkinter  # Usually pre-installed
# or
pip install PyQt5
```

## 🚀 Execution

### 1. Install Dependencies:
```bash
pip install -r requirements.txt
```

### 2. Run Application:
```bash
python photobooth.py
```

### 3. Usage:
1. Allow camera access if prompted
2. Position yourself in frame
3. Select desired filter/effect
4. Click "Capture" button
5. Review photo in preview
6. Save or retake
7. Access saved photos in output folder

## 🎨 Available Filters/Effects
- **Grayscale:** Classic black and white
- **Sepia:** Vintage brown tone
- **Negative:** Inverted colors
- **Brightness/Contrast:** Adjustable
- **Blur:** Smooth/Gaussian blur
- **Sharpen:** Enhanced edges
- **Cartoon:** Comic book effect
- **Sketch:** Pencil drawing effect
- **Color Pop:** Selective color highlighting
- **Vintage:** Retro film look

## 🖼️ Frames & Overlays
- Birthday frames
- Holiday themes
- Custom text overlays
- Stickers and emojis
- Photo strips (multiple shots)

## 📁 File Structure
```
Photobooth/
├── photobooth.py          # Main application
├── filters.py             # Image filter functions
├── gui.py                 # GUI components
├── frames/                # Frame images
├── output/                # Saved photos
└── requirements.txt       # Dependencies
```

## ⚙️ Configuration
Customize in settings/code:
- Photo resolution (e.g., 1280x720, 1920x1080)
- Countdown duration
- Output directory
- Image format (JPEG, PNG)
- Default filter
- Camera device index

## 🎮 Controls
- **Spacebar/Click:** Capture photo
- **Arrow Keys:** Navigate filters
- **ESC:** Exit application
- **S:** Save current frame
- **R:** Reset/retake
- **G:** Open gallery

## 📊 Output
Photos saved with format:
```
photobooth_YYYYMMDD_HHMMSS.jpg
```

Organized in dated folders for easy management.

## 🎓 Educational Value
- Image processing with OpenCV
- GUI development
- Webcam interfacing
- Real-time video manipulation
- Event handling
- File I/O operations

## 📄 Documentation
Complete project details and examples in `Photobooth.pdf`.

## 🔧 Customization Ideas
- Add face detection/recognition
- Implement green screen effect
- Create GIF animations
- Social media integration
- Custom filter designer
- Photo printing queue
- QR code for instant download
