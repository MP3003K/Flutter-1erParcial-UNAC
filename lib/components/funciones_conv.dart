String invertirPalabra(String texto) {
  String resultado = '';

  for (int x = texto.length; x > 0; x--) {
    resultado += texto.substring(x - 1, x);
  }

  return resultado;
}

double resto(double dividendo, double divisor) {
  double cociente = 0;
  double resto = 1;
  while (dividendo >= (divisor * cociente)) {
    resto = dividendo - (divisor * cociente);
    cociente++;
  }
  return resto;
}

String resultado = '';

double obtCociente(double dividendo, double divisor) {
  double cociente;
  double residuoTemp = resto(dividendo, divisor);
  resultado = resultado + '$residuoTemp';
  cociente = (dividendo - residuoTemp) / divisor;
  return cociente;
}

String convBaseX(double numero, double base) {
  resultado = '';
  double cociente = numero;

  while (cociente >= base) {
    cociente = obtCociente(cociente, base);
  }
  resultado = invertirPalabra(resultado + '$cociente');
  return resultado;
}
