//Paulo Roberto Fernandes Holanda
//11. Construa um programa que identifique se um número é primo.
import 'dart:io';

void q11() {
  stdout.write("Digite um numero primo: ");
  int? primo = int.parse(stdin.readLineSync()!);
  int? ct = 0;
  for (int i = 1; i <= primo; i++) {
    primo % i == 0 ? ct = ct! + 1 : ct = ct;
  }
  ct! > 2 ? print('não é primo') : print('é primo');
}
