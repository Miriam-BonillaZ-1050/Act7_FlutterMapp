import 'package:flutter/material.dart';

class Widget05 extends StatefulWidget {
  const Widget05({Key? key}) : super(key: key);

  @override
  State<Widget05> createState() => _Widget05State();
}

class _Widget05State extends State<Widget05> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff422761),
        title: const Text(
          'Checkbox',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Checkbox(
          value: isChecked,
          activeColor: Colors.orangeAccent,
          tristate: true,
          onChanged: (newBool) {
            setState(() {
              isChecked = newBool;
            });
          },
        ),
      ),
    );
  }
}
