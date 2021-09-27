import 'package:get/get.dart';

class ConverterController extends GetxController {
  var firstNumber = '10'.obs;
  var secondNumber = '20'.obs;
  var mathResult = '30'.obs;
  var operation = '+'.obs;

  addNumber(String number) {
    if (mathResult.value == '0') {
      return mathResult.value == number;
    }

    if (mathResult.value == '-0') {
      return mathResult.value = '-' + mathResult.value;
    }
    mathResult.value = mathResult.value + number;
  }

  calculateResult() {
    double num1 = double.parse(firstNumber.value);
    double num2 = double.parse(mathResult.value);
    secondNumber.value = mathResult.value;
    switch (operation.value) {
      case '+':
        mathResult.value = '${num1 + num2}';
        break;
    }
  }
}
