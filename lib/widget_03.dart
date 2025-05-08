import 'dart:math' as math;

import 'package:flutter/material.dart';

class Widget03 extends StatefulWidget {
  const Widget03({super.key});

  @override
  State<Widget03> createState() => _Widget03State();
}

/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _Widget03State extends State<Widget03> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff422761),
        title: const Text(
          'Animated Widget',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
          ),
        ),
        centerTitle: true,
      ),
      body: TheWidget(controller: _controller),
    );
  }
}

class TheWidget extends AnimatedWidget {
  const TheWidget({
    super.key,
    required AnimationController controller,
  }) : super(listenable: controller);

  Animation<double> get _progress => listenable as Animation<double>;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: _progress.value * 5.0 * math.pi,
      child: Container(
          width: 300.0, height: 300.0, color: const Color(0xff3debf1)),
    );
  }
}
