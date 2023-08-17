//Paulo Roberto Fernandes Holanda
//Construa um programa que conte a quantidade de vezes
// que as palavras de uma frase aparecem.
//Exemplo: “estude muito sempre sempre estude”
//Resultado: estude=2 muito=1 sempre=2
import 'dart:io';

void q22() {
  String? frase;
  List<String> palavras;
  do {
    stdout.write('Digite uma frase: ');
    frase = stdin.readLineSync()!;
    if (frase.isEmpty) {
      print('Digite uma palavra');
    }
  } while (frase.isEmpty);
  palavras = frase.split(" ");
  Map<String, int> palavrasMap = {};

  for (String palavra in palavras) {
    if (palavrasMap.containsKey(palavra)) {
      palavrasMap[palavra] = palavrasMap[palavra]! + 1;
    } else {
      palavrasMap[palavra] = 1;
    }
  }
  int i = 0;
  while (palavrasMap.length > i) {
    var palavra = palavrasMap.keys.elementAt(i);
    var quantidade = palavrasMap[palavra];
    stdout.write('$palavra = $quantidade ');
    i++;
  }
  print("\n");
}
