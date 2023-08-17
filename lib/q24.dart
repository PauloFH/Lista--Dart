//Paulo Roberto Fernandes Holanda
//Construa e use uma função para calcular o fatorial
// de um número utilizando recursividade.
import 'dart:io';

void q24() {
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
