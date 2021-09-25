import 'package:basecalculator/controller/conversor_controller.dart';
import 'package:basecalculator/widgets/cal_buttons.dart';
import 'package:basecalculator/widgets/conv_result.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorScreen extends StatelessWidget {
  final calculatorCtrl = Get.put(ConverterController());

  CalculatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              const Expanded(child: SizedBox()),
              ConverterResults(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButtom(
                    text: 'AC',
                    bgColor: const Color(0xffA5A5A5),
                    onPressed: () => calculatorCtrl.addNumber('1'),
                  ),
                  CalculatorButtom(
                    text: '+/-',
                    bgColor: const Color(0xffA5A5A5),
                    onPressed: () => calculatorCtrl.addNumber('1'),
                  ),
                  CalculatorButtom(
                    text: 'del',
                    bgColor: const Color(0xffA5A5A5),
                    onPressed: () => calculatorCtrl.addNumber('1'),
                  ),
                  CalculatorButtom(
                    text: '/',
                    bgColor: const Color(0xffF0A23B),
                    onPressed: () => calculatorCtrl.addNumber('1'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
                  CalculatorButtom(
                    text: 'X',
                    bgColor: const Color(0xffF0A23B),
                    onPressed: () => calculatorCtrl.addNumber('1'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
                  CalculatorButtom(
                    text: '-',
                    bgColor: const Color(0xffF0A23B),
                    onPressed: () => calculatorCtrl.addNumber('1'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
                  CalculatorButtom(
                    text: '+',
                    bgColor: const Color(0xffF0A23B),
                    onPressed: () => calculatorCtrl.addNumber('1'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButtom(
                    text: '0',
                    big: true,
                    onPressed: () => calculatorCtrl.addNumber('0'),
                  ),
                  CalculatorButtom(
                    text: '.',
                    onPressed: () => calculatorCtrl.addNumber('1'),
                  ),
                  CalculatorButtom(
                    text: '=',
                    bgColor: const Color(0xffF0A23B),
                    onPressed: () => calculatorCtrl.calculateResult(),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
