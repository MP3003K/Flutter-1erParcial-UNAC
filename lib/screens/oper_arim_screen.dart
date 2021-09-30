import 'package:basecalculator/components/button_cal.dart';
import 'package:basecalculator/components/common_drawer.dart';
import 'package:flutter/material.dart';

class OperacionesArimeticas extends StatelessWidget {
  const OperacionesArimeticas({Key? key}) : super(key: key);
  static String ruta = "/ope_mat";

  get calculatorCtrl => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF5E5E5E),
        titleSpacing: 50,
        title: Text(
          "CALCULATOR",
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
          children: <Widget>[
            Expanded(child: Column()),
            Row(
              children: [
                CalculatorButtom(
                  altura: true,
                  text: 'AC',
                  big: true,
                  bgColor: const Color(0xffFF9F04),
                  onPressed: () => calculatorCtrl.resetAll(),
                ),
                CalculatorButtom(
                  altura: true,
                  text: 'x',
                  big: true,
                  bgColor: const Color(0xffFF9F04),
                  onPressed: () => calculatorCtrl.deleteLastEntry(),
                ),
              ],
            ),
            Row(
              children: [
                CalculatorButtom(
                  altura: true,
                  text: '1',
                  big: true,
                  onPressed: () => calculatorCtrl.resetAll(),
                ),
                CalculatorButtom(
                  altura: true,
                  text: '+',
                  big: true,
                  bgColor: const Color(0xffFF9F04),
                  onPressed: () => calculatorCtrl.deleteLastEntry(),
                ),
              ],
            ),
            Row(
              children: [
                CalculatorButtom(
                  altura: true,
                  text: '0',
                  big: true,
                  onPressed: () => calculatorCtrl.resetAll(),
                ),
                CalculatorButtom(
                  text: '-',
                  altura: true,
                  big: true,
                  bgColor: const Color(0xffFF9F04),
                  onPressed: () => calculatorCtrl.deleteLastEntry(),
                ),
              ],
            ),
            Row(
              children: [
                CalculatorButtom(
                  text: '0',
                  altura: true,
                  big: true,
                  onPressed: () => calculatorCtrl.resetAll(),
                ),
                CalculatorButtom(
                  text: '=',
                  altura: true,
                  big: true,
                  onPressed: () => calculatorCtrl.deleteLastEntry(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
