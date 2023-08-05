// Paulo Roberto Fernandes Holanda
//Construa um programa que calcule para o aluno sua média parcial e informe sua situação parcial (Aprovado, Recuperação ou Reprovado).
//Caso ele esteja em Recuperação, calcule quanto ele precisa tirar na 4ª prova para ser aprovado (média final maior ou igual que 5,0).

import 'dart:io';

void q3() {
  double? nota1, nota2, nota3;
  do {
    stdout.write("Digite a primeira nota: ");
    nota1 = double.parse(stdin.readLineSync()!);
  } while (nota1 < 0 || nota1 > 10);
  do {
    stdout.write("Digite a Segunda nota: ");
    nota2 = double.parse(stdin.readLineSync()!);
  } while (nota2 < 0 || nota2 > 10);
  do {
    stdout.write("Digite a terceira nota: ");
    nota3 = double.parse(stdin.readLineSync()!);
  } while (nota3 < 0 || nota3 > 10);
  double nota4 = 0;
  double media = (nota1 + nota2 + nota3) / 3;
  if (media < 5) {
    print("Aluno reprovado\n");
  } else if (media >= 5 && media < 7) {
    print("Aluno em recuperação\n");
    do {
      stdout.write("Digite a quarta nota: ");
      nota4 = double.parse(stdin.readLineSync()!);
    } while (nota4 < 0 || nota4 > 10);
    if ((media * 6 + nota4 * 4) / 10 >= 5) {
      print("Aluno aprovado\n");
    } else {
      print("Aluno reprovado\n");
    }
  } else if (media >= 7) {
    print("Aluno aprovado\n");
  }
}
