//Paulo Roberto Fernandes Holanda
//6. Construa um programa que leia do usuário um número inicial e um número final.
// Em seguida, exiba na tela uma sequencia com os números desse intervalo informado pelo usuário.
// Exemplo: caso o usuário entre com os números 4 e 10, o resultado do programa seria: 4 5 6 7 8 9 10
//a) Construa este programa utilizando a estrutura while.
//b) Construa este programa utilizando a estrutura do-while.
//c) Construa este programa utilizando a estrutura for.
import 'dart:io';

void q6() {
  int? init;
  int? finz;
  stdout.write("Escreva o número inicial: ");
  init = int.parse(stdin.readLineSync()!);
  stdout.write("Escreva o número final: ");
  finz = int.parse(stdin.readLineSync()!);
  stdout.write("Com while: ");
  int? temp = init;
  while (temp! <= finz) {
    stdout.write('$temp  ');
    temp = temp + 1;
  }
  stdout.write("\n");
  stdout.write("Com do-while: ");
  temp = init;
  do {
    stdout.write('$temp  ');
    temp = temp! + 1;
  } while (temp <= finz);
  stdout.write("\n");
  stdout.write("Com for: ");
  for (int i = init; i <= finz; i++) {
    stdout.write('$i  ');
  }
  stdout.write("\n");
}
