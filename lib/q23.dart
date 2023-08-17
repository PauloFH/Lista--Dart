//Paulo Roberto Fernandes Holanda
//Evolua a questão anterior. Permita que o programa
// salve o resultado em um arquivo de texto CSV.
//Permita que o programa abra o arquivo de texto CSV
// e exiba o conteúdo na tela.
import 'dart:io';

void q23() {
  String? frase;
  List<String> palavras;
  if (File('resultado.csv').existsSync()) {
    stdout.write(
        '\nDeseja exibir o conteúdo do arquivo CSV existente? (S/N) - Arquivo CSV será deletado para gerar um novo: ');
    if (stdin.readLineSync()?.toUpperCase() == 'S') {
      show();
    }
  }
  do {
    stdout.write('Digite uma frase: ');
    frase = stdin.readLineSync()!;
    if (frase.isEmpty) {
      print('Digite uma frase válida.');
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

  save(palavrasMap);
}

void save(Map<String, int> pM) {
  File file = File('resultado.csv');
  if (file.existsSync()) {
    file.deleteSync();
  }

  for (var entry in pM.entries) {
    String linha = '${entry.key},${entry.value}\n';
    file.writeAsStringSync(linha, mode: FileMode.append);
  }
   print("Resultado salvo em um arquivo CSV.");
}
void show() {
  try {
    File file = File('resultado.csv');
    if (file.existsSync()) {
      List<String> lines = file.readAsLinesSync();
      print("\nConteúdo do arquivo CSV:");
      for (String line in lines) {
        line = line.replaceAll(',', ' = ');
        print(line);
      }
    } 
  } catch (e) {
    print("Erro ao ler arquivo: $e");
  }
}
