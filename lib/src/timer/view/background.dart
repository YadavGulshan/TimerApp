import 'package:flutter/material.dart';
import 'package:timer/src/timer/view/animation/tools/wave.dart';
import 'dart:math';

class Background extends AnimatedWidget {
  final Animation<double> animation;
  Background(this.animation, {Key? key})
      : super(listenable: animation, key: key);
  // final Color backgroundColor = getRandomColor();
  final Color backgroundColor = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          right: animation.value,
          child: ClipPath(
            clipper: Wave(),
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    backgroundColor,
                    backgroundColor.withOpacity(0.0),
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: animation.value,
          child: ClipPath(
            clipper: Wave(),
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    backgroundColor,
                    backgroundColor.withOpacity(0.0),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// Function that will generate a random color
Color getRandomColor() {
  return Color.fromARGB(
      255, Random().nextInt(255), Random().nextInt(255), Random().nextInt(255));
}
