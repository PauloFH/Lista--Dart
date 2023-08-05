//Paulo Roberto Fernandes Holanda
//12. Construa um programa que calcule o somatório dos números inteiros
//de um intervalo, definido por um número inicial e um numero final.
//Exemplo: caso as entradas fossem 4 e 9, o resultado seria: 39
import 'dart:io';

void q12() {
  int? ini, end;

  stdout.write('digite o número inicial: ');
  ini = int.parse(stdin.readLineSync()!);
  stdout.write('digite o número final: ');
  end = int.parse(stdin.readLineSync()!);
  ini = somatorio(ini, end);
  print(ini);
}

int somatorio(int ini, int end) {
  if (ini == end) {
    return ini;
  } else {
    return ini + somatorio(ini + 1, end);
  }
}
