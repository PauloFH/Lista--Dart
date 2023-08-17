//Paulo Roberto Fernandes Holanda
//Calcule o somatório dos números inteiros do intervalo entre dois números.
//Resolva o problema com função recursiva.
import 'dart:io';

void q25() {
  int? ini, end;

  stdout.write('digite o número inicial: ');
  ini = int.parse(stdin.readLineSync()!);
  stdout.write('digite o número final: ');
  end = int.parse(stdin.readLineSync()!);
  ini = somatorio(ini, end);
  print(ini);
}

int somatorio(int n, int f) {
  if (n == f) {
    return n;
  } else {
    return n + somatorio(n - 1, f);
  }
}
