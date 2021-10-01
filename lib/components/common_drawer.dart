import 'package:basecalculator/components/logo_aplic.dart';
import 'package:basecalculator/home.dart';
import 'package:basecalculator/screens/calc_conv_screen.dart';
import 'package:basecalculator/screens/oper_logicas_screen.dart';
import 'package:basecalculator/screens/oper_arim_screen.dart';
import 'package:flutter/material.dart';

class CommonDrawer {
  static ListTile obtenerElemento(
      Icon icono, String nombre, String ruta, BuildContext contexto) {
    return ListTile(
      leading: icono,
      title: Text(nombre),
      onTap: () {
        Navigator.pushNamed(contexto, ruta);
      },
    );
  }

  static Drawer obtenerDrawer(BuildContext contexto) {
    return Drawer(
      child: ListView(
        children: [
          const LogoAplicacion(),
          const SizedBox(
            height: 20,
          ),
          obtenerElemento(const Icon(Icons.calculate_outlined),
              "BASE CONVERTER", CalculatorScreen.ruta, contexto),
          obtenerElemento(const Icon(Icons.add_circle_outline_outlined),
              "ARITHMETIC OPERATIONS", OperacionesArimeticas.ruta, contexto),
          obtenerElemento(const Icon(Icons.add_task), "LOGICAL OPERATIONS",
              OperacionesLogicas.ruta, contexto),
        ],
      ),
    );
  }
}
