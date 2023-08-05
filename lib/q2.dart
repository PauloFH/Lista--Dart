// Paulo Roberto Fernandes Holanda
//Q2). Construa um programa que calcule a área de um círculo, tendo como entrada o valor do raio, que deve ser positivo. Use o valor da constante “pi” vindo da biblioteca matemática.
import 'dart:io';
import 'dart:math';

void q2() {
  double? raio = 0;

  do {
    stdout.write("Digite o valor do raio:(Deve ser positivo) ");
    raio = double.parse(stdin.readLineSync()!);
    raio <= 0
        ? print("O valor do raio deve ser positivo\n")
        : print("A área do círculo é: ${pi * pow(raio, 2)}\n");
  } while (raio <= 0);
}
