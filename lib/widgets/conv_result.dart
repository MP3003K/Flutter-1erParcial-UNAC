import 'package:basecalculator/controller/ctr_conv_base.dart';
import 'package:basecalculator/widgets/main_num_conv.dart';
import 'package:basecalculator/widgets/resul_base.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConverterResults extends StatelessWidget {
  final converterctrl = Get.find<ConverterController>();

  ConverterResults({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(() => Expanded(
          child: NumberToChangeBase(text: '${converterctrl.mathResult}'),
        ));
  }
}
