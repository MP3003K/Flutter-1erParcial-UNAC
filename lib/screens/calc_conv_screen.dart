import 'package:basecalculator/components/button_resultado.dart';
import 'package:basecalculator/components/common_drawer.dart';
import 'package:basecalculator/components/funciones_conv.dart';
import 'package:basecalculator/controller/ctr_conv_base.dart';
import 'package:basecalculator/components/button_cal.dart';
import 'package:basecalculator/widgets/conv_result.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key? key}) : super(key: key);
  static String ruta = "/";
  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  final calculatorCtrl = Get.put(ConverterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF5E5E5E),
        titleSpacing: 50,
        title: Text(
          "BASE CONVERTER",
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
            SizedBox(
                child: Column(
              children: <Widget>[
                Obx(
                  () => Column(
                    children: <Widget>[
                      ButtonResultado(
                        white: calculatorCtrl.getBasePrincipal(2),
                        text: 'BIN = '
                            '${convBaseX(calculatorCtrl.mathResult.value, calculatorCtrl.basePrincipal.value, '2')}',
                        onPressed: () => calculatorCtrl.cambiarBasePrincipal(
                            2,
                            convBaseX(calculatorCtrl.mathResult.value,
                                calculatorCtrl.basePrincipal.value, '2')),
                      ),
                      ButtonResultado(
                        white: calculatorCtrl.getBasePrincipal(8),
                        text: 'OCT = '
                            '${convBaseX(calculatorCtrl.mathResult.value, calculatorCtrl.basePrincipal.value, '8')}',
                        onPressed: () => calculatorCtrl.cambiarBasePrincipal(
                            8,
                            convBaseX(calculatorCtrl.mathResult.value,
                                calculatorCtrl.basePrincipal.value, '8')),
                      ),
                      ButtonResultado(
                        white: calculatorCtrl.getBasePrincipal(10),
                        text: 'DEC = '
                            '${convBaseX(calculatorCtrl.mathResult.value, calculatorCtrl.basePrincipal.value, '10')}',
                        onPressed: () => calculatorCtrl.cambiarBasePrincipal(
                            10,
                            convBaseX(calculatorCtrl.mathResult.value,
                                calculatorCtrl.basePrincipal.value, '10')),
                      ),
                      ButtonResultado(
                        white: calculatorCtrl.getBasePrincipal(16),
                        text: 'HEX = '
                            '${convBaseX(calculatorCtrl.mathResult.value, calculatorCtrl.basePrincipal.value, '16')}',
                        onPressed: () => calculatorCtrl.cambiarBasePrincipal(
                            16,
                            convBaseX(calculatorCtrl.mathResult.value,
                                calculatorCtrl.basePrincipal.value, '16')),
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
                        : calculatorCtrl.addNumber('2')),
                CalculatorButtom(
                    text: '3',
                    onPressed: () => calculatorCtrl.desabilitarButton(3)
                        ? null
                        : calculatorCtrl.addNumber('3')),
              ],
            ),
            Row(
              children: [
                CalculatorButtom(
                    text: '4',
                    onPressed: () => calculatorCtrl.desabilitarButton(4)
                        ? null
                        : calculatorCtrl.addNumber('4')),
                CalculatorButtom(
                    text: '5',
                    onPressed: () => calculatorCtrl.desabilitarButton(5)
                        ? null
                        : calculatorCtrl.addNumber('5')),
                CalculatorButtom(
                    text: '6',
                    onPressed: () => calculatorCtrl.desabilitarButton(6)
                        ? null
                        : calculatorCtrl.addNumber('6')),
              ],
            ),
            Row(
              children: [
                CalculatorButtom(
                    text: '7',
                    onPressed: () => calculatorCtrl.desabilitarButton(7)
                        ? null
                        : calculatorCtrl.addNumber('7')),
                CalculatorButtom(
                    text: '8',
                    onPressed: () => calculatorCtrl.desabilitarButton(8)
                        ? null
                        : calculatorCtrl.addNumber('8')),
                CalculatorButtom(
                    text: '9',
                    onPressed: () => calculatorCtrl.desabilitarButton(9)
                        ? null
                        : calculatorCtrl.addNumber('9')),
              ],
            ),
            Center(
              child: CalculatorButtom(
                text: '0',
                big: true,
                onPressed: () => calculatorCtrl.addNumber('0'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
