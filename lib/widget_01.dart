import 'dart:math' as math;
import 'package:flutter/material.dart';

// Animated builder

class Widget01 extends StatefulWidget {
  const Widget01({super.key});

  @override
  State<Widget01> createState() => _Widget01State();
}

class _Widget01State extends State<Widget01> with TickerProviderStateMixin {
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
          'Animated builder',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          child: const FlutterLogo(
            size: 100,
          ),
          builder: (BuildContext context, Widget? child) {
            return Transform.rotate(
              angle: _controller.value * 2.0 * math.pi,
              child: child,
            );
          },
        ),
      ),
    );
  }
}
