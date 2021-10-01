import 'dart:math';

import 'package:basecalculator/components/funciones_conv.dart';
import 'package:get/get.dart';

class LogicCtr extends GetxController {
  var operacion = '+'.obs;
  var resp = ' '.obs;
  var num1 = ''.obs;
  var num2 = ''.obs;
  var botom = '1'.obs;

  var and = ''.obs;

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

  int c = 0;
  double resultado = 0;
  gregarResultado(double valor) {
    print('*-------------------*');
    print(resultado);
    resultado = resultado + (valor * pow(10, c));
    print(resultado);
    print('*-------------------*');

    c++;
  }

  compararXOR() {
    resultado = 0;
    resp.value = '';
    c = 0;
    completar();

    String a = num1.value;
    String b = num2.value;
    print('*-----------------------------------');
    print(a);
    print(b);
    int t = a.length;
    int contador = t;
    for (int i = t; i > 0; i--) {
      if (a.substring(contador - 1, contador) ==
          b.substring(contador - 1, contador)) {
        gregarResultado(0);
        print('00');
      } else {
        gregarResultado(1);
        print('11');
      }
      contador--;
    }
    resp.value = '$resultado';
  }

  completar() {
    int t = num1.value.length - num2.value.length;
    print(t);
    if (t > 0) {
      for (int i = 0; i < t; i++) {
        num2.value = '0' + num2.value;
      }
    } else {
      for (int i = 0; i < t; i++) {
        num1.value = '0' + num1.value;
      }
    }
  }

  compararOR() {
    resultado = 0;
    resp.value = '';
    c = 0;
    completar();

    String a = num1.value;
    String b = num2.value;
    print('*-----------------------------------');
    print(a);
    print(b);
    int t = a.length;
    int contador = t;
    for (int i = t; i > 0; i--) {
      if (a.substring(contador - 1, contador) == '1') {
        gregarResultado(1);
        print('1');
      } else {
        if (b.substring(contador - 1, contador) == '1') {
          gregarResultado(1);
          print('1');
        } else {
          gregarResultado(0);
          print('0');
        }
      }
      contador--;
    }
    resp.value = '$resultado';
  }
/*
  compararAND() {
    resultado = 0;
    resp.value = '';
    c = 0;
    completar();

    String a = num1.value;
    String b = num2.value;
    print('*-----------------------------------');
    print(a);
    print(b);
    int t = a.length;
    int contador = t;
    for (int i = t; i > 0; i--) {
      if (a.substring(contador - 1, contador) == '1') {
        if (b.substring(contador - 1, contador) == '1') {
          gregarResultado(1);
          print('1');
        } else {
          gregarResultado(0);
          print('0');
        }
      } else {
        gregarResultado(0);
        print('0');
      }
      contador--;
    }
    resp.value = '$resultado';
  }*/
}
