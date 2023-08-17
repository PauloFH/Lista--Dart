//Paulo Roberto Fernandes Holanda
//18. Construa um programa que inverta a frase digitada pelo usuário.
// Por exemplo, se string1 for “bom dia”, então string2 será “aid mob”
import 'dart:io';

void q18() {
  String? a;

  a = stdin.readLineSync();
  List<String>? newa = a?.split('');
  List<String>? newa2 = [];
  String? string2;
  for (var i = newa!.length - 1; i >= 0; i--) {
    newa2.add(newa.removeLast());
  }
  string2 = newa2.join();
  print(string2);
}
