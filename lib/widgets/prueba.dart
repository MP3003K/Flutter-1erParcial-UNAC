import 'dart:math';

import 'package:flutter/material.dart';

class Prueba extends StatefulWidget {
  const Prueba({Key? key}) : super(key: key);

  @override
  _pruebaState createState() => _pruebaState();
}

class _pruebaState extends State<Prueba> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Text('${base10('11101100', 2)}'),
      ],
    ));
  }
}

double base10(String numero, int base) {
  int length = numero.length - 1;
  double resultado = 0;

  for (int x = 0; x < numero.length; x++) {
    resultado += double.parse(numero.substring(x, x + 1)) * pow(base, length);
    length--;
  }

  return resultado;
}
