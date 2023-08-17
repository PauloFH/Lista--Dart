//Paulo Roberto Fernandes Holanda
//Construa um programa para exibir a tabuada de qualquer número “n” (1 a 9),
//sendo “n” um número fornecido pelo usuário. Utilize estrutura de repetição.
import 'dart:io';

void q9() {
  stdout.write("Digite o númer4o para taboada: ");
  int n = int.parse(stdin.readLineSync()!);
  tabuada(n);
}

void tabuada(int n) {
  print('TABOADA DO $n: ');
  for (int i = 0; i <= 9; i++) {
    int? temp = (n * i);
    print('$n x $i = $temp');
  }
}
