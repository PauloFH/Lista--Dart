// Paulo Roberto Fernandes Holanda
//Construa um programa que calcule uma equação do 2º grau. Crie uma função com retorno para calcular o delta. Crie uma função sem retorno para calcular as raízes.
import 'dart:io';
import 'dart:math';

void q4() {
  int? a, b, c;
  stdout.write("Digite o valor de a: ");
  a = int.parse(stdin.readLineSync()!);
  stdout.write("Digite o valor de b: ");
  b = int.parse(stdin.readLineSync()!);
  stdout.write("Digite o valor de c: ");
  c = int.parse(stdin.readLineSync()!);
  segundograu(a, b, c);
}

int delta(int a, int b, int c) {
  return ((b * b) - (4 * a * c));
}

void segundograu(int a, int b, int c) {
  double? x1 = 0;
  double? x2 = 0;
  x1 = ((b * (-1) + sqrt(delta(a, b, c))) / 2 * a);
  x2 = ((b * (-1) - sqrt(delta(a, b, c))) / 2 * a);
  print("X1 da equação é: ${(x1.toStringAsFixed(2))}");
  print("X2 da equação é: ${((x2.toStringAsFixed(2)))}");
}
