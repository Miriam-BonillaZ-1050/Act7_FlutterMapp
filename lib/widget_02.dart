import 'package:flutter/material.dart';

// AnimatedOpacity

class Widget02 extends StatefulWidget {
  const Widget02({Key? key}) : super(key: key);

  @override
  State<Widget02> createState() => Widget02State();
}

class Widget02State extends State<Widget02> {
  double opacityLevel = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff422761),
        title: const Text(
          'Animated opacity',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            AnimatedOpacity(
              opacity: opacityLevel,
              duration: const Duration(seconds: 2),
              child: const FlutterLogo(
                size: 50,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
              child: const Text('Fade Logo'),
              onPressed: () {
                setState(() {
                  opacityLevel = opacityLevel == 0 ? 1.0 : 0.0;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
