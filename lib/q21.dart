//Paulo Roberto Fernandes Holanda
//Construa um programa que conte a quantidade de
// letras de uma palavra. Exemplo: “casa”
//Resultado: c=1 a =2 s =1
import 'dart:io';

void q21() {
  String? palavra;
  List<String> letras;
  do {
    stdout.write('Digite uma palavra: ');
    palavra = stdin.readLineSync()!;
    letras = palavra.split(" ");
    if (letras.length > 1) {
      print('Digite apenas uma palavra');
    } else {
      if (palavra.isEmpty) {
        print('Digite uma palavra');
      }
    }
  } while (palavra.isEmpty || letras.length > 1);
  letras = palavra.split("");
  Map<String, int> letrasMap = {};
  for (String letra in letras) {
    if (letrasMap.containsKey(letra)) {
      letrasMap[letra] = letrasMap[letra]! + 1;
    } else {
      letrasMap[letra] = 1;
    }
  }
  int i = 0;
  while (letrasMap.length > i) {
    var letra = letrasMap.keys.elementAt(i);
    var quantidade = letrasMap[letra];
    stdout.write('$letra = $quantidade ');
    i++;
  }
}
