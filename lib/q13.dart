//Paulo Roberto Fernandes Holanda
//13. Construa um programa que calcule o fatorial de um número.
//Use uma estrutura de repetição. Fatorial: n! = n (n − 1)!
//Exemplo: 5! = 5 x 4 x 3 x 2 x 1 = 120 ou 5! = 1 x 2 x 3 x 4 x 5 = 120
import 'dart:io';

void q13() {
  stdout.write('digite o número: ');
  int n = int.parse(stdin.readLineSync()!);
  stdout.write('fatorial de $n é: ');
  n = fatorial(n);
  stdout.write('$n ');
}

int fatorial(int n) {
  if (n == 1) {
    return n;
  } else {
    return n * fatorial(n - 1);
  }
}
