import 'package:basecalculator/controller/conversor_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'cal_buttons.dart';

class KeyboardConverter extends StatelessWidget {
  final calculatorCtrl = Get.put(ConverterController());

  KeyboardConverter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [],
    );
  }
}
