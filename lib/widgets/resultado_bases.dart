import 'package:basecalculator/components/button_resultado.dart';
import 'package:basecalculator/components/funciones_conv.dart';
import 'package:basecalculator/controller/ctr_conv_base.dart';
import 'package:basecalculator/widgets/main_num_conv.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResultadoBases extends StatelessWidget {
  final converterctrl = Get.find<ConverterController>();

  ResultadoBases({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SizedBox(
        height: MediaQuery.of(context).size.height / 3.4,
        child: Column(
          children: [
            Obx(
              () => Column(
                children: [
                  ButtonResultado(
                    white: converterctrl.getBasePrincipal(2),
                    text: 'BIN = '
                        '${convBaseX(converterctrl.mathResult.value, converterctrl.basePrincipal.value, '2')}',
                    onPressed: () => converterctrl.cambiarBasePrincipal(
                        2,
                        convBaseX(converterctrl.mathResult.value,
                            converterctrl.basePrincipal.value, '2')),
                  ),
                  ButtonResultado(
                    white: converterctrl.getBasePrincipal(8),
                    text: 'OCT = '
                        '${convBaseX(converterctrl.mathResult.value, converterctrl.basePrincipal.value, '8')}',
                    onPressed: () => converterctrl.cambiarBasePrincipal(
                        8,
                        convBaseX(converterctrl.mathResult.value,
                            converterctrl.basePrincipal.value, '8')),
                  ),
                  ButtonResultado(
                    white: converterctrl.getBasePrincipal(10),
                    text: 'DEC = '
                        '${convBaseX(converterctrl.mathResult.value, converterctrl.basePrincipal.value, '10')}',
                    onPressed: () => converterctrl.cambiarBasePrincipal(
                        10,
                        convBaseX(converterctrl.mathResult.value,
                            converterctrl.basePrincipal.value, '10')),
                  ),
                  ButtonResultado(
                    white: converterctrl.getBasePrincipal(16),
                    text: 'HEX = '
                        '${convBaseX(converterctrl.mathResult.value, converterctrl.basePrincipal.value, '16')}',
                    onPressed: () => converterctrl.cambiarBasePrincipal(
                        16,
                        convBaseX(converterctrl.mathResult.value,
                            converterctrl.basePrincipal.value, '16')),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
