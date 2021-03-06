import 'package:get/get.dart';

class ConverterController extends GetxController {
  var mathResult = '25'.obs;
  var basePrincipal = '8'.obs;

  var bin = ''.obs;
  var oct = ''.obs;
  var dec = ''.obs;
  var hex = ''.obs;

  bool desabilitarButton(double numero) {
    bool resp = false;
    if (numero >= double.parse(basePrincipal.value)) {
      resp = true;
    }
    return resp;
  }

  bool getBasePrincipal(double base) {
    bool resp = false;
    if (base == double.parse(basePrincipal.value)) {
      resp = true;
    }
    return resp;
  }

// FASE 2 ////

  cambiarBasePrincipal(int base, String resultado) {
    switch (base) {
      case 2:
        basePrincipal.value = '2';
        break;

      case 8:
        basePrincipal.value = '8';

        break;

      case 10:
        basePrincipal.value = '10';
        break;

      case 16:
        basePrincipal.value = '16';

        break;

      default:
        return;
    }
    mathResult.value = resultado;
  }

  resetAll() {
    mathResult.value = '0';
  }

  String obtenerNumero() {
    String numero = mathResult.value;
    return numero;
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
