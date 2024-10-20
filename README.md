# Downsize

**Downsize** is a pure Dart package designed for image compression across multiple formats, including JPG, PNG, GIF, BMP, TIFF, TGA, PVR, and ICO. It efficiently reduces file sizes while maintaining quality and dynamically resizes large images, making it ideal for optimizing images in web or mobile applications.

This package is built on top of the **[image](https://pub.dev/packages/image)** Dart package, providing additional functionality for compression and resizing with an easy-to-use API.

## Features

- Supports compression for a wide range of image formats: JPG, PNG, GIF, BMP, TIFF, TGA, PVR, ICO, and more.
- Automatically resizes images based on predefined size thresholds.
- Customizable compression quality and target file size.
- Specific compression techniques for different formats, such as reducing color depth for PNG files.
- Fully integrates with Dart projects without requiring external dependencies beyond this package.

## Getting started

### Prerequisites

- Dart SDK version **2.12.0** or higher: [Install Dart](https://dart.dev/get-dart).

### Installation

1. Add **downsize** to your project’s `pubspec.yaml` file:

```yaml
dependencies:
  downsize:
```

2. Install the dependencies:

```bash
dart pub get
```

## Usage

Here’s a simple example to compress an image using **Downsize**:

```dart
import 'dart:io';
import 'package:downsize/downsize.dart';

void main() async {
  File imageFile = File('path/to/your/image.jpg'); // Replace with any supported format
  Uint8List imageData = await imageFile.readAsBytes();

  // Uint8List? compressedData = await Downsizer.downsize(data: imageData); // Compress with default options.

  Uint8List? compressedData = await Downsizer.downsize(data: imageData, maxSize: 500, minQuality: 60); // Compress to 500 KB with 60% as minimum quality
  
  if (compressedData != null) {
    await File('path/to/save/compressed_image.jpg').writeAsBytes(compressedData);
    print('Image compressed and saved.');
  }
}
```

The same function works with all supported image formats. Simply provide the image data and specify the desired file size or compression quality.

## Additional information

For more information, visit the [repository](https://github.com/YassineDabbous/downsize). You can report issues or contribute by opening a pull request or an issue on GitHub.

### Contributing

Contributions are welcome! Please ensure your code follows best practices and the included lints. To contribute:
1. Fork the repository.
2. Create a feature branch.
3. Submit a pull request.

Thank you for using **Downsize**!