import 'dart:math';
import 'package:flutter/material.dart';

// Custom painter class to draw the water wave animation.
class WaterWavePainter extends CustomPainter {
  final double progress; // Current progress of the animation.
  final double waterLevel; // Water level as a percentage of the container's height.
  final Color customColor; // Color of the water wave.

  WaterWavePainter(this.progress, this.waterLevel, this.customColor);

  @override
  void paint(Canvas canvas, Size size) {
    Paint waterPaint = Paint()
      ..color = customColor // Sets the paint color to the custom color of the water wave.
      ..style = PaintingStyle.fill; // Fills the wave shape with color.

    double waveWidthFactor = 0.4; // Controls the width of the waves.
    double waveLength = 2 * pi / (size.width / waveWidthFactor); // Calculates the wave length.
    double radius = size.width / 2; // Radius of the circular container.
    double baseHeight = size.height * (1 - waterLevel); // Base height of the water level.
    double waveAmplitude = min(10, size.height * waterLevel); // Amplitude of the waves.
    double phase = progress * 2 * pi; // Phase shift based on the animation progress.
    double phaseOffset = pi / 4; // Additional phase offset to vary the wave pattern.

    Path path = Path(); // Path to draw the water wave.
    path.moveTo(0, baseHeight); // Starts the path at the base height of the water level.

    // Loops through the width of the container to calculate the Y position of the wave at each X position.
    for (double x = 0; x <= size.width; x++) {
      double y1 = waveAmplitude * sin(waveLength * x + phase); // Y position for the first wave.
      double y2 = waveAmplitude * sin(waveLength * x + phase + phaseOffset); // Y position for the second wave.
      double y = (y1 + y2) / 2 + baseHeight; // Averages the two waves and adjusts based on the base height.

      // Only draws the wave inside the circular container.
      if (pow(x - radius, 2) + pow(y - radius, 2) <= pow(radius, 2)) {
        path.lineTo(x, y);
      }
    }

    // Completes the path to create a closed shape.
    path.lineTo(size.width, baseHeight);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    // Creates a clipping path to ensure the wave is only drawn inside the circular container.
    Path clipPath = Path()..addOval(Rect.fromCircle(center: Offset(radius, radius), radius: radius));
    // Intersects the wave path with the clip path to create the final wave shape.
    path = Path.combine(PathOperation.intersect, path, clipPath);

    // Draws the final wave path on the canvas.
    canvas.drawPath(path, waterPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // Always repaints to animate the wave.
    return true;
  }
}
