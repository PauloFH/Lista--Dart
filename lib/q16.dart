//Paulo Roberto Fernandes Holanda
//16. Construa e use uma função que produz um novo vetor de inteiros
// com a ordem inversa do vetor original passado por parâmetro.
import 'dart:io';

void q16() {
  List<int> lista = [];
  int ct;
  do {
    print(
        'Quer adicionar novos números ou realizar a inversão: \n qualquer numero- adicionar \n 0- fazer inversão');
    ct = int.parse(stdin.readLineSync()!);
    if (ct == 0) {
      lista = inverso(lista);
    } else {
      print('Digite numero para adicionar:');
      lista.add(int.parse(stdin.readLineSync()!));
    }
  } while (ct != 0);
  print(lista);
}

List<int> inverso(List<int> a) {
  List<int> reversa = [];
  for (int i = a.length - 1; i >= 0; i--) {
    reversa.add(a[i]);
  }
  return reversa;
}
