import 'package:example/widget/cards.dart';
import 'package:flutter/material.dart';

// Main application entry point.
void main() {
  runApp(const MyApp());
}

// Defines the MyApp widget which sets up the main structure of the application.
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

// State class for MyApp.
class _MyAppState extends State<MyApp> {
  // Example color list to be used in Cards.
  List<Color> colorsExample = [Colors.deepPurple, Colors.purple, Colors.green, Colors.blueAccent, Colors.deepOrange];

  // Example percent values to demonstrate different water fill levels.
  List<double> percentExample = [0.2, 0.4, 0.8, 0.6, 0.9];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('WaterWave Demo'),
        ),
        // Using ListView.builder for dynamic card creation.
        body: Center(
          child: ListView.builder(
            itemCount: colorsExample.length, // Number of items in the list.
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              // Generating Cards for each color and percent in the lists.
              return Cards(
                colors: colorsExample[index],
                percent: percentExample[index],
              );
            },
          ),
        ),
      ),
    );
  }
}
