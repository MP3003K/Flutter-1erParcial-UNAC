import 'package:basecalculator/controller/conversor_controller.dart';
import 'package:basecalculator/widgets/main_num_conv.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConverterResults extends StatelessWidget {
  final converterctrl = Get.find<ConverterController>();

  ConverterResults({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(
          children: [
            NumberToChangeBase(
              text: '${converterctrl.mathResult}',
            )
          ],
        ));
  }
}
