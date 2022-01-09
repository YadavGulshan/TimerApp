import 'package:flutter/material.dart';
import 'package:timer/src/timer/timer.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Timer',
      theme: ThemeData(
        primaryColor: Colors.purple,
        colorScheme: const ColorScheme.light(
          secondary: Colors.white,
        ),
      ),
      home: const TimerPage(),
    );
  }
}
