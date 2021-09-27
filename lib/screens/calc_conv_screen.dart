import 'package:basecalculator/components/funciones_conv.dart';
import 'package:basecalculator/controller/ctr_conv_base.dart';
import 'package:basecalculator/components/button_cal.dart';
import 'package:basecalculator/widgets/conv_result.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorScreen extends StatefulWidget {
  CalculatorScreen({Key? key}) : super(key: key);

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
                          Text(
                            convBaseX(
                                double.parse(converterctrl.obtenerNumero()), 2),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      convBaseX(30, 2),
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    Text(
                      "Hex: ",
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    Text(
                      "Oct: ",
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    Text(
                      "Dec: ",
                      style: Theme.of(context).textTheme.subtitle2,
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
                  onPressed: () => calculatorCtrl.addNumber('2'),
                ),
                CalculatorButtom(
                  text: '3',
                  onPressed: () => calculatorCtrl.addNumber('3'),
                ),
              ],
            ),
            Row(
              children: [
                CalculatorButtom(
                  text: '4',
                  onPressed: () => calculatorCtrl.addNumber('4'),
                ),
                CalculatorButtom(
                  text: '5',
                  onPressed: () => calculatorCtrl.addNumber('5'),
                ),
                CalculatorButtom(
                  text: '6',
                  onPressed: () => calculatorCtrl.addNumber('6'),
                ),
              ],
            ),
            Row(
              children: [
                CalculatorButtom(
                  text: '7',
                  onPressed: () => calculatorCtrl.addNumber('7'),
                ),
                CalculatorButtom(
                  text: '8',
                  onPressed: () => calculatorCtrl.addNumber('8'),
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
