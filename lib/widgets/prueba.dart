import 'package:basecalculator/components/funciones_conv.dart';
import 'package:flutter/material.dart';

class prueba extends StatefulWidget {
  prueba({Key? key}) : super(key: key);

  @override
  _pruebaState createState() => _pruebaState();
}

class _pruebaState extends State<prueba> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Text('${resto(142, 8)}'),
        Text('${obtCociente(142, 8)}'),
        Text('${convBaseX(112, 2)}'),
      ],
    ));
  }
}
