
```markdown
# WaterPercent 🌊

`WaterPercent` is a Flutter package designed to visualize percentage values in a captivating and intuitive manner using water wave animations within a circular container. It's an excellent choice for apps that need to display data such as hydration levels, loading progress, or any percentage-based metrics in an engaging way.

## Features ✨

- **Dynamic Water Wave Animation**: Bring your data to life with a visually appealing water wave effect.
- **Fully Customizable**: Tailor the wave's color, size, and the percentage text style to seamlessly integrate with your app's design.
- **Versatile**: Whether you're building a fitness tracker, a task completion indicator, or a custom gauge, `WaterPercent` is designed to fit a wide range of use cases.

## Demo Videos 🎥

Experience `WaterPercent` in action by clicking on the demo videos below:

[![Water Percent Example](https://via.placeholder.com/200x150?text=Click+to+Watch+Water+Percent+Example)](https://github.com/setayeshce/water-percent-vid/raw/main/water%20percent%20example.mp4)

[![Percent Example](https://via.placeholder.com/200x150?text=Click+to+Watch+Percent+Example)](https://github.com/setayeshce/water-percent-vid/raw/main/percent.mp4)

_Replace the placeholder images with actual thumbnails of your videos for a better visual representation._

## Getting Started 🚀

To integrate `WaterPercent` into your Flutter app, start by adding it as a dependency in your `pubspec.yaml` file:

```yaml
dependencies:
  flutter:
    sdk: flutter
  waterpercent: ^latest_version
```

Remember to replace `^latest_version` with the current version of `WaterPercent`.

## Usage 🛠

Here's a quick example to get you started with `WaterPercent`:

```dart
import 'package:flutter/material.dart';
import 'package:waterpercent/waterpercent.dart';

class MyWaterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WaterWave(
      size: 150,
      percent: 0.75,
      color: Colors.blueAccent,
      percentStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }
}
```

This snippet creates a `WaterWave` widget displaying a 75% filled water wave animation.

## Customization 🎨

`WaterPercent` allows for the following customizations:

- `size`: Diameter of the wave container.
- `percent`: Water fill percentage (0.0 to 1.0).
- `color`: Color of the water wave.
- `percentStyle`: TextStyle for the percentage text overlay.

## Contributing 🤝

Contributions to `WaterPercent` are welcome! Whether it's reporting a bug, discussing new features, or submitting a pull request, your feedback and contributions are highly appreciated.

## License ⚖️

`WaterPercent` is available under the MIT license. See the [LICENSE](LICENSE) file for more info.

---

For more detailed examples, please refer to the `/example` folder. Should you have any questions or require further assistance, feel free to open an issue on our [GitHub repository](https://github.com/setayeshce/water-percent/issues).
```
