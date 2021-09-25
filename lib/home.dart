import 'package:flutter/material.dart';

import 'screens/cal_screen.dart';

class BaseConverter extends StatefulWidget {
  const BaseConverter({Key? key}) : super(key: key);

  @override
  _BaseConverterState createState() => _BaseConverterState();
}

class _BaseConverterState extends State<BaseConverter> {
  TextEditingController controladorInput = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[CalculatorScreen()],
    ));
  }
}
