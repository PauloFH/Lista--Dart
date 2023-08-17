//Paulo Roberto Fernandes Holanda
//7. Construa um programa que leia do usuário um número inicial e um número final.
//Em seguida, exiba na tela uma sequencia apenas com os números ímpares dentro
// deste intervalo informado pelo usuário. Exemplo: caso o usuário entre com os
//números 4 e 10, o resultado seria: 5 7 9
//a) Construa este programa utilizando a estrutura while.
//b) Construa este programa utilizando a estrutura do-while.
//c) Construa este programa utilizando a estrutura for.
import 'dart:io';

void q7() {
  int? init;
  int? finz;
  stdout.write("Escreva o número inicial: ");
  init = int.parse(stdin.readLineSync()!);
  stdout.write("Escreva o número final: ");
  finz = int.parse(stdin.readLineSync()!);
  stdout.write("Com while: ");
  int? temp = init;
  while (temp! <= finz) {
    if (temp % 2 != 0) {
      stdout.write('$temp  ');
    }
    temp = temp + 1;
  }
  stdout.write("\n");
  stdout.write("Com do-while: ");
  temp = init;
  do {
    if (temp! % 2 != 0) {
      stdout.write('$temp  ');
    }
    temp = temp + 1;
  } while (temp <= finz);
  stdout.write("\n");
  stdout.write("Com for: ");
  for (int i = init; i <= finz; i++) {
    if (i % 2 != 0) {
      stdout.write('$i  ');
    }
  }
  stdout.write("\n");
}
