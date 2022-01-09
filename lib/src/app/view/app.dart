import 'package:flutter/material.dart';
import 'package:timer/src/timer/timer.dart';
import 'dart:math';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color color = getRandomColor();

    return MaterialApp(
      title: 'Flutter Timer',
      theme: ThemeData(
        scaffoldBackgroundColor: color,
        colorScheme: ColorScheme.light(
          primary: color,
        ),
        // color of all widgets
        textTheme: TextTheme(
          headline1: TextStyle(
            color:
                (color.computeLuminance() > 0.5) ? Colors.black : Colors.white,
          ),
        ),
      ),
      home: const TimerPage(),
    );
  }
}

Color getRandomColor() {
  // Randomly generate a color which is not too bright or too dark.
  return Color.fromARGB(
      255, Random().nextInt(255), Random().nextInt(255), Random().nextInt(255));
}
