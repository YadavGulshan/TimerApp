import 'package:flutter/material.dart';
import 'package:timer/src/timer/view/background.dart';

class MyWaveAnimation extends StatefulWidget {
  const MyWaveAnimation({Key? key}) : super(key: key);

  @override
  _MyWaveAnimationState createState() => _MyWaveAnimationState();
}

class _MyWaveAnimationState extends State<MyWaveAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
      animationBehavior: AnimationBehavior.preserve,
      reverseDuration: const Duration(seconds: 3),
    )..repeat(reverse: true);

    animation = Tween<double>(begin: -100, end: 1).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.decelerate,
    ));
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Background(animation);
  }
}
