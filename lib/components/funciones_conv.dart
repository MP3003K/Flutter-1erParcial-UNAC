import 'dart:math';

double resto(double dividendo, double divisor) {
  double cociente = 0;
  double resto = 1;
  while (dividendo >= (divisor * cociente)) {
    resto = dividendo - (divisor * cociente);
    cociente++;
  }
  return resto;
}

double resultado = 0;
int contador = 0;

agregarResultado(double valor) {
  resultado = resultado + (valor * pow(10, contador));

  contador++;
}

double obtCociente(double dividendo, double divisor) {
  double cociente;
  double residuoTemp = resto(dividendo, divisor);
  agregarResultado(residuoTemp);
  cociente = (dividendo - residuoTemp) / divisor;
  return cociente;
}

String convBaseX(String numero, String bInicial, String bFinal) {
  resultado = 0;
  contador = 0;
  double cociente = double.parse(numero);
  double divisor = double.parse(bFinal);
  cociente = base10(cociente, double.parse(bInicial));
  while (cociente >= divisor) {
    cociente = obtCociente(cociente, divisor);
  }
  agregarResultado(cociente);

  return '$resultado'.substring(0, '$resultado'.length - 2);
}

double base10(double numero, double base) {
  int length = '$numero'.length - 3;
  double resultado = 0;
  String variable = '$numero';

  for (int x = 0; x < '$numero'.length - 2; x++) {
    resultado += double.parse(variable.substring(x, x + 1)) * pow(base, length);
    length--;
  }

  return resultado;
}
