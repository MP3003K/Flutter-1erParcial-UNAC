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
    print('------------------------');
    print(numero);
    print(basePrincipal);
    if (numero >= double.parse(basePrincipal.value)) {
      resp = true;
      print('Desabilitando botom = ' '$numero');
    }
    print('------------------------');
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
        print(resultado);

        break;

      case 10:
        basePrincipal.value = '10';
        print(resultado);

        break;

      case 16:
        basePrincipal.value = '16';
        print(resultado);

        break;

      default:
        return;
    }
    mathResult.value = resultado;

    print(basePrincipal.value);
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
