import 'package:basecalculator/components/button_resultado.dart';
import 'package:basecalculator/components/funciones_conv.dart';
import 'package:basecalculator/controller/ctr_conv_base.dart';
import 'package:basecalculator/components/button_cal.dart';
import 'package:basecalculator/widgets/conv_result.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  final calculatorCtrl = Get.put(ConverterController());
  final converterctrl = Get.find<ConverterController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width - 2.0,
              height: 55.0,
              decoration: const BoxDecoration(
                color: Color(0xFF5E5E5E),
              ),
              child: Text(
                "BASE CONVERTER",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
              ),
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height / 3,
                child: Column(
                  children: [
                    Obx(
                      () => Column(
                        children: [
                          ButtonResultado(
                            white: calculatorCtrl.getBasePrincipal(2),
                            text: 'BIN = '
                                '${convBaseX(double.parse(converterctrl.obtenerNumero()), 2)}',
                            onPressed: () =>
                                calculatorCtrl.cambiarBasePrincipal(2),
                          ),
                          ButtonResultado(
                            white: calculatorCtrl.getBasePrincipal(8),
                            text: 'OCT = '
                                '${convBaseX(double.parse(converterctrl.obtenerNumero()), 8)}',
                            onPressed: () =>
                                calculatorCtrl.cambiarBasePrincipal(8),
                          ),
                          ButtonResultado(
                            white: calculatorCtrl.getBasePrincipal(10),
                            text: 'DEC = '
                                '${convBaseX(double.parse(converterctrl.obtenerNumero()), 10)}',
                            onPressed: () =>
                                calculatorCtrl.cambiarBasePrincipal(10),
                          ),
                          ButtonResultado(
                            white: calculatorCtrl.getBasePrincipal(16),
                            text: 'HEX = '
                                '${convBaseX(double.parse(converterctrl.obtenerNumero()), 16)}',
                            onPressed: () =>
                                calculatorCtrl.cambiarBasePrincipal(16),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
            ConverterResults(),
            Row(
              children: [
                CalculatorButtom(
                  text: 'AC',
                  big: true,
                  bgColor: const Color(0xffFF9F04),
                  onPressed: () => calculatorCtrl.resetAll(),
                ),
                CalculatorButtom(
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
                  text: '1',
                  onPressed: () => calculatorCtrl.addNumber('1'),
                ),
                CalculatorButtom(
                  text: '2',
                  onPressed: () => calculatorCtrl.desabilitarButton(2)
                      ? null
                      : () => calculatorCtrl.addNumber('2'),
                ),
                CalculatorButtom(
                  text: '3',
                  onPressed: () => calculatorCtrl.desabilitarButton(3)
                      ? null
                      : () => calculatorCtrl.addNumber('3'),
                ),
              ],
            ),
            Row(
              children: [
                CalculatorButtom(
                  text: '4',
                  onPressed: () => calculatorCtrl.desabilitarButton(4)
                      ? null
                      : () => calculatorCtrl.addNumber('4'),
                ),
                CalculatorButtom(
                  text: '5',
                  onPressed: () => calculatorCtrl.desabilitarButton(5)
                      ? null
                      : () => calculatorCtrl.addNumber('5'),
                ),
                CalculatorButtom(
                  text: '6',
                  onPressed: () => calculatorCtrl.desabilitarButton(6)
                      ? null
                      : () => calculatorCtrl.addNumber('6'),
                ),
              ],
            ),
            Row(
              children: [
                CalculatorButtom(
                  text: '7',
                  onPressed: () => calculatorCtrl.desabilitarButton(7)
                      ? null
                      : () => calculatorCtrl.addNumber('7'),
                ),
                CalculatorButtom(
                  text: '8',
                  onPressed: () => calculatorCtrl.desabilitarButton(8)
                      ? null
                      : () => calculatorCtrl.addNumber('8'),
                ),
                CalculatorButtom(
                  text: '9',
                  onPressed: () => calculatorCtrl.addNumber('9'),
                ),
              ],
            ),
            Row(
              children: [
                CalculatorButtom(
                  text: '0',
                  big: true,
                  onPressed: () => calculatorCtrl.addNumber('0'),
                ),
                CalculatorButtom(
                  text: '.',
                  big: true,
                  onPressed: () => calculatorCtrl.addNumber('1'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
