import 'package:flutter/material.dart';

class Widget04 extends StatelessWidget {
  const Widget04({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff422761),
        title: const Text(
          'Baseline',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.orange.withOpacity(0.3),
          child: Stack(
            children: [
              // Línea base visual para referencia
              Positioned(
                top: 50,
                left: 0,
                right: 0,
                child: Container(
                  height: 1,
                  color: Colors.red,
                ),
              ),
              const Baseline(
                baseline: 50,
                baselineType: TextBaseline.alphabetic,
                child: FlutterLogo(size: 50),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
