// A StatefulWidget for displaying a wave animation inside a circular container,
// along with a percentage text in the center.
import 'package:flutter/material.dart';
import 'package:waterpercent/paint/custom-water-percent.dart';

class WaterWave extends StatefulWidget {
  // Size of the circular container.
  final double size;
  // The current fill percentage of the water wave, ranging from 0.0 to 1.0.
  final double percent;
  // Color of the wave and the border of the container.
  final Color color;
  // TextStyle for the percentage text displayed in the center.
  final TextStyle percentStyle;

  const WaterWave({
    Key? key,
    required this.size,
    required this.percent,
    required this.color,
    required this.percentStyle,
  }) : super(key: key);

  @override
  _WaterWaveState createState() => _WaterWaveState();
}

class _WaterWaveState extends State<WaterWave> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    // Initializes the animation controller with a 6-second repeating animation.
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 6),
    )..addListener(() => setState(() {})) // Triggers a rebuild on every tick.
      ..repeat();
  }

  @override
  void dispose() {
    _controller.dispose(); // Disposes the animation controller to free up resources.
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: widget.size,
          height: widget.size,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: widget.color, width: 1),
          ),
          // CustomPaint widget uses WaterWavePainter to draw the animated wave.
          child: Padding(
            padding: const EdgeInsets.all(3),
            child: CustomPaint(
              painter: WaterWavePainter(
                _controller.value, // Progress of the animation.
                widget.percent, // Water level percentage.
                widget.color, // Wave color.
              ),
            ),
          ),
        ),
        // Displays the percentage text in the center.
        Center(
          child: Text(
            '${(widget.percent * 100).toInt()} %',
            style: widget.percentStyle,
          ),
        ),
      ],
    );
  }
}
