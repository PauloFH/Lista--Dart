//Paulo Roberto Fernandes Holanda
//17. Construa um programa que identifique o maior e o menor número
// de um vetor de inteiros.
import 'dart:io';

void q17() {
  int? maior, menor, entrada;
  List<int> inteiros = [];
  do {
    print(
        'Quer adicionar novos números ou realizar a inversão: \n qualquer numero- adicionar \n 0- fazer inversão');
    entrada = int.parse(stdin.readLineSync()!);
    if (entrada == 0) {
      print("Finalizada a adição do vetor");
      break;
    } else {
      inteiros.add(entrada);
    }
  } while (entrada != 0);
  maior = menor = inteiros[0];
  for (int? i in inteiros) {
    if (i! >= maior!) maior = i;
    if (i <= menor!) menor = i;
  }
  print("Maior número do vetor: $maior");
  print('Menor número do vetor: $menor');
}
