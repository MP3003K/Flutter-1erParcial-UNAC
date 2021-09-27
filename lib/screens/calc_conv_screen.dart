import 'package:basecalculator/controller/conv_bases_controller.dart';
import 'package:basecalculator/components/button_cal.dart';
import 'package:basecalculator/widgets/conv_result.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorScreen extends StatelessWidget {
  final calculatorCtrl = Get.put(ConverterController());

  CalculatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width - 2.0,
            height: 40.0,
            decoration: const BoxDecoration(
              color: Color(0xFF5E5E5E),
            ),
            child: Text(
              "BASE CONVERTER",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
            ),
          ),
          Expanded(
              flex: 5,
              child: Column(
                children: [
                  Text(
                    "Bin: ",
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
                bgColor: const Color(0xffA5A5A5),
                onPressed: () => calculatorCtrl.addNumber('1'),
              ),
              CalculatorButtom(
                text: 'x',
                big: true,
                bgColor: const Color(0xffA5A5A5),
                onPressed: () => calculatorCtrl.addNumber('1'),
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
                text: '0',
                big: true,
                onPressed: () => calculatorCtrl.addNumber('0'),
              ),
              CalculatorButtom(
                text: '.',
                onPressed: () => calculatorCtrl.addNumber('1'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
