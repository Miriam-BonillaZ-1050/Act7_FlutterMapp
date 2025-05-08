import 'package:flutter/material.dart';
import 'package:act7_flutter_mapp/pagina_inicial.dart';
import 'package:act7_flutter_mapp/widget_01.dart';
import 'package:act7_flutter_mapp/widget_02.dart';
import 'package:act7_flutter_mapp/widget_03.dart';
import 'package:act7_flutter_mapp/widget_04.dart';
import 'package:act7_flutter_mapp/widget_05.dart';
import 'package:act7_flutter_mapp/widget_06.dart';

// ignore: prefer_const_constructors
void main() => runApp(Rutas());

class Rutas extends StatelessWidget {
  // ignore: use_super_parameters
  const Rutas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas entre paginas',
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaInicio(),
        '/pantalla2': (context) => const Widget01(),
        '/pantalla3': (context) => const Widget02(),
        '/pantalla4': (context) => const Widget03(),
        '/pantalla5': (context) => const Widget04(),
        '/pantalla6': (context) => const Widget05(),
        '/pantalla7': (context) => const Widget06(),
      },
    );
  }
}
