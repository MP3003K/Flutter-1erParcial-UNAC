import 'package:flutter/material.dart';

int sumar(int a, int b) {
  int c = -1;
  c = a + b;
  return c;
}

class Operacion extends StatefulWidget {
  const Operacion(int a, int b, {Key? key}) : super(key: key);

  @override
  _OperacionState createState() => _OperacionState();
}

class _OperacionState extends State<Operacion> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
    );
  }
}
