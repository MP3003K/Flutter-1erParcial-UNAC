import 'dart:math';

import 'package:basecalculator/components/funciones_conv.dart';
import 'package:get/get.dart';

class ArimeticCtr extends GetxController {
  var operacion = '+'.obs;
  var res = '  '.obs;
  var num1 = ''.obs;
  var num2 = ''.obs;
  var botom = '1'.obs;

  bool getBoton(double base) {
    bool resp = false;
    if (base == double.parse(botom.value)) {
      resp = true;
    }
    return resp;
  }

  cambiarBoton(int boton) {
    switch (boton) {
      case 1:
        botom.value = '1';
        break;

      case 2:
        botom.value = '2';

        break;

      default:
        return;
    }
  }

  resetAll() {
    if (botom.value == '1') {
      num1.value = '';
    }
    if (botom.value == '2') {
      num2.value = '';
    }
  }

  addNumber(String number) {
    if (botom.value == '1') {
      if (num1.value == '0') return num1.value = number;

      if (num1.value == '-0') {}

      num1.value = num1.value + number;
    }
    if (botom.value == '2') {
      if (num2.value == '0') return num2.value = number;

      if (num2.value == '-0') {}

      num2.value = num2.value + number;
    }
  }

  deleteLastEntry() {
    if (botom.value == '1') {
      if (num1.value.replaceAll('-', '').length > 1) {
        num1.value = num1.value.substring(0, num1.value.length - 1);
      } else {
        num1.value = '0';
      }
    }

    if (botom.value == '2') {
      if (num2.value.replaceAll('-', '').length > 1) {
        num2.value = num2.value.substring(0, num2.value.length - 1);
      } else {
        num2.value = '0';
      }
      num2.value = '';
    }
  }

  resultadoSumar() {
    double a = base10(double.parse(num1.value), 2);
    double b = base10(double.parse(num2.value), 2);
    a = b + a;
    res.value = convBaseX('$a', '10', '2');
  }

  resultadoRestar() {
    double a = base10(double.parse(num1.value), 2);
    double b = base10(double.parse(num2.value), 2);
    a = a - b;
    print(a);
    if (a > 0) {
      convBaseX('$a', '10', '2');
      res.value = convBaseX('$a', '10', '2');
    } else {
      a = a * -1;
      convBaseX('$a', '10', '2');

      res.value = '-' + convBaseX('$a', '10', '2');
    }
  }
}
