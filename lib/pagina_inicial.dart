import 'package:flutter/material.dart';

class PantallaInicio extends StatelessWidget {
  // ignore: use_super_parameters
  const PantallaInicio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff7b87ec), // Fondo rosa
        title: const Text(
          'Pantalla Inicial',
          style: TextStyle(
            color: Color(0xffffffff), // Letra negra
            fontSize: 25.0, // Tamaño de la letra 25 (corregido el comentario)
          ),
        ),
        centerTitle: true, // Centrar el texto
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla2');
              },
              child: const Text('Widget 07'),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla3');
              },
              child: const Text('Widget 14'),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla4');
              },
              child: const Text('Widget 21'),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla5');
              },
              child: const Text('Widget 28'),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla6');
              },
              child: const Text('Widget 35'),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla7');
              },
              child: const Text('Widget 42'),
            ),
          ),
        ],
      ),
    );
  }
}
