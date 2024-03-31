import 'package:flutter/material.dart';
import 'package:waterpercent/waterpercent.dart';
// Custom StatefulWidget Cards that takes in color and percent values for the WaterWave widget.
class Cards extends StatefulWidget {
  final Color colors;
  final double percent;

  const Cards({super.key, required this.colors, required this.percent});

  @override
  State<Cards> createState() => _CardsState();
}

// State class for Cards.
class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Container(
        width: 292,
        height: 100,
        padding: const EdgeInsets.all(16),
        // Container styling.
        decoration: const ShapeDecoration(
          color: Color(0x196C6CFF), // Semi-transparent blue background.
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)), // Rounded corners.
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // WaterWave widget displaying water fill animation.
            WaterWave(
              size: 60,
              percent: widget.percent, // Using percent passed to the Cards widget.
              color: widget.colors, // Using color passed to the Cards widget.
              percentStyle: const TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            // Column for title and description texts.
            SizedBox(
              width: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    "It's your title example",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFF181B1C),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    "It's description",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFFA4A3A3),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            // Placeholder container for additional content or imagery.
            Container(
              width: 70,
              height: 70,
              decoration: ShapeDecoration(
                color: Colors.black.withOpacity(0.3), // Semi-transparent black.
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)), // Rounded corners.
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
