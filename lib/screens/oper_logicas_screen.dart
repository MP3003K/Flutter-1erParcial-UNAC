import 'package:basecalculator/components/common_drawer.dart';
import 'package:flutter/material.dart';

class OperacionesLogicas extends StatelessWidget {
  const OperacionesLogicas({Key? key}) : super(key: key);
  static String ruta = "/ope_log";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF5E5E5E),
        titleSpacing: 50,
        title: Text(
          "LOGICAL OPERATIONS",
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
        ),
      ),
      drawer: CommonDrawer.obtenerDrawer(context),
      body: SafeArea(
          child: Column(
        children: <Widget>[Text('Operaciones Logicas')],
      )),
    );
  }
}
