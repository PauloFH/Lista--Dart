//Paulo Roberto Fernandes Holanda
//Construa um programa que simule uma calculadora. Disponibilize um menu de opções e simule a opção desejada, exibindo
//novamente o menu, até que o usuário escolha sair. Menu de opções:
//1 - potenciação Dica: utilize a função da biblioteca matemática.
//2 - raiz quadrada Dica: utilize a função da biblioteca matemática.
//3 - fatorial Dica: crie e utilize uma função com a solução da questão anterior.
//0 - sair
import 'dart:io';
import 'dart:math';

import 'package:lista/q13.dart';

void q14() {
  int x;
  do {
    stdout.write(
        "1 - potenciação\n 2 - raiz quadrada\n3 - fatorial \n0 - sair\n digite a opção:");
    x = int.parse(stdin.readLineSync()!);
    x > 3 || x < 0 ? print('VALOR INVÁLIDO') : print('');
    switch (x) {
      case 1:
        int? i, e;
        stdout.write('digite o número a ser elevado: ');
        i = int.parse(stdin.readLineSync()!);
        stdout.write('digite o valor da potência: ');
        e = int.parse(stdin.readLineSync()!);
        stdout.write('AS potência de $i^$e é : ');
        stdout.write(pow(i, e));
        print('');
        break;
      case 2:
        int? i;
        stdout.write('digite o número da raiz: ');
        i = int.parse(stdin.readLineSync()!);
        stdout.write('A raiz quadrade de $i é : ');
        stdout.write(sqrt(i));
        print('');
        break;
      case 0:
        print('Fechando o programa!');
        break;
      case 3:
        q13();
        print('');
        break;
    }
  } while (x != 0);
}
