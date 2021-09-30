import 'package:get/get.dart';

class ArimeticCtr extends GetxController {
  var operacion = '+'.obs;
  var numero_anterior = ''.obs;

  var mathResult = '0'.obs;

/*
  cambiarBasePrincipal(int base, String resultado) {
    switch (base) {
      case 2:
        break;

      case 8:

        break;

      case 10:
        break;

      case 16:

        break;

      default:
        return;
    }
    mathResult.value = resultado;
  }
*/
  resetAll() {
    mathResult.value = '0';
  }

  changeNegativePositive() {
    if (mathResult.startsWith('-')) {
      mathResult.value = mathResult.value.replaceFirst('-', '');
    } else {
      mathResult.value = '-' + mathResult.value;
    }
  }

  addNumber(String number) {
    if (mathResult.value == '0') return mathResult.value = number;

    if (mathResult.value == '-0') {
      return mathResult.value = '-' + number;
    }

    mathResult.value = mathResult.value + number;
  }

  selectOperation(String newOperation) {
    mathResult.value = '0';
  }

  deleteLastEntry() {
    if (mathResult.value.replaceAll('-', '').length > 1) {
      mathResult.value =
          mathResult.value.substring(0, mathResult.value.length - 1);
    } else {
      mathResult.value = '0';
    }
  }
}
