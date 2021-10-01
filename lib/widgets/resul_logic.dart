import 'package:basecalculator/controller/logic_ctr.dart';
import 'package:basecalculator/widgets/main_num_conv.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResultadoLogic extends StatelessWidget {
  final converterctrl = Get.find<LogicCtr>();

  ResultadoLogic({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(() => Expanded(
          child: NumberToChangeBase(text: '${converterctrl.resp}'),
        ));
  }
}
