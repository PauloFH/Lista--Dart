//Paulo Roberto Fernandes Holada
//Q5)Construa um programa que leia um número inteiro digitado pelo usuário. Caso o número pertença ao intervalo de 1 a 5, exiba o número por extenso. Caso o número não pertença a este intervalo, exiba a mensagem "valor invalido".

import 'dart:io';

void q5() {
  int? x = 0;
  do {
    stdout.write("Escreva um número de 1 a 5:");

    x = int.parse(stdin.readLineSync()!);

    if (x < 1 || x > 5) {
      print("Inválido");
    }
  } while (x < 1 || x > 5);
  switch (x) {
    case 1:
      print("UM");
      break;
    case 2:
      print("DOIS");
      break;
    case 3:
      print("TRÊS");
      break;
    case 4:
      print("QUATRO");
      break;
    case 5:
      print("CINC0");
      break;
  }
}
