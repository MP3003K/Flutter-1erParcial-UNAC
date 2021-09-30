import 'package:basecalculator/screens/calc_conv_screen.dart';
import 'package:basecalculator/screens/oper_arim_screen.dart';
import 'package:basecalculator/screens/oper_logicas_screen.dart';
import 'package:flutter/material.dart';

import 'constants.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Calculadora',
        // we are using dark theme and we modify it as our need
        theme: ThemeData.dark().copyWith(
          primaryColor: primaryColor,
          scaffoldBackgroundColor: bgColor,
          canvasColor: bgColor,
          textTheme: GoogleFonts.quanticoTextTheme(Theme.of(context).textTheme)
              .apply(bodyColor: Colors.white)
              .copyWith(
                bodyText1: const TextStyle(color: bodyTextColor),
                bodyText2: const TextStyle(color: bodyTextColor),
              ),
        ),
        routes: {
          HomeDrawer.ruta: (BuildContext context) => HomeDrawer(),
          CalculatorScreen.ruta: (BuildContext context) =>
              const CalculatorScreen(),
          OperacionesArimeticas.ruta: (BuildContext context) =>
              const OperacionesArimeticas(),
          OperacionesLogicas.ruta: (BuildContext context) =>
              const OperacionesLogicas(),
        });
  }
}
