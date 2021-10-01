import 'package:basecalculator/components/button_cal.dart';
import 'package:basecalculator/components/button_num.dart';
import 'package:basecalculator/components/button_resultado.dart';
import 'package:basecalculator/components/common_drawer.dart';
import 'package:basecalculator/controller/arimetic_ctr.dart';
import 'package:basecalculator/widgets/main_num_conv.dart';
import 'package:basecalculator/widgets/resul_arimeticas.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class OperacionesArimeticas extends StatelessWidget {
  OperacionesArimeticas({Key? key}) : super(key: key);
  static String ruta = "/ope_mat";

  final calculatorCtrl = Get.put(ArimeticCtr());
  final getCtrl = Get.put(ArimeticCtr());

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
            Container(
                alignment: Alignment.center,
                child: Obx(
                  () => Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          'PRIMER NUMERO',
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2!
                              .copyWith(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      ButtonNumb(
                          white: calculatorCtrl.getBoton(1),
                          text: '     ' + getCtrl.num1.value,
                          onPressed: () => calculatorCtrl.cambiarBoton(1)),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          'SEGUNDO NUMERO',
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2!
                              .copyWith(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      ButtonNumb(
                          white: calculatorCtrl.getBoton(2),
                          text: '     ' + getCtrl.num2.value,
                          onPressed: () => calculatorCtrl.cambiarBoton(2)),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                )),
            ResulArimeticas(),
            Row(
              children: [
                CalculatorButtom(
                  altura: true,
                  text: 'SUMAR',
                  big: true,
                  bgColor: const Color(0xff04B22A),
                  onPressed: () => calculatorCtrl.resultadoSumar(),
                ),
                CalculatorButtom(
                  altura: true,
                  text: 'RESTAR',
                  big: true,
                  bgColor: const Color(0xffDF3C3C),
                  onPressed: () => calculatorCtrl.resultadoRestar(),
                ),
              ],
            ),
            Row(
              children: [
                CalculatorButtom(
                  altura: true,
                  text: '1',
                  big: true,
                  onPressed: () => calculatorCtrl.addNumber('1'),
                ),
                CalculatorButtom(
                  altura: true,
                  text: 'AC',
                  big: true,
                  bgColor: const Color(0xffFF9F04),
                  onPressed: () => calculatorCtrl.resetAll(),
                ),
              ],
            ),
            Row(
              children: [
                CalculatorButtom(
                  altura: true,
                  text: '0',
                  big: true,
                  onPressed: () => calculatorCtrl.addNumber('0'),
                ),
                CalculatorButtom(
                  text: 'x',
                  altura: true,
                  big: true,
                  bgColor: const Color(0xffFF9F04),
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
