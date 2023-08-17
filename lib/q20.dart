//Paulo Roberto Fernandes Holanda
//Evolua a questão anterior.
// Permita que o programa salve o resultado em um 
//arquivo binário. Permita que o programa abra o 
//arquivo binário e exiba o conteúdo na tela.

import 'dart:io';
import 'dart:convert';

void q20() {
  List<Pessoa> pessoas = lerArquivo();

  stdout.write('Quantas pessoas serão cadastradas: ');
  int num = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < num; i++) {
    stdout.write('Pessoa $i \n');
    stdout.write('Digite o nome da pessoa: ');
    String? nome = stdin.readLineSync();
    stdout.write('Qual o peso: ');
    double peso = double.parse(stdin.readLineSync()!);
    stdout.write('Qual a altura: ');
    double altura = double.parse(stdin.readLineSync()!);
    double imc = peso / (altura * altura);

    pessoas.add(Pessoa(nome, peso, altura, imc));
  }

  escreverArquivo(pessoas);

  for (Pessoa pessoa in pessoas) {
    print(pessoa.toString());
  }
}

List<Pessoa> lerArquivo() {
  List<Pessoa> pessoas = [];
  try {
    File file = File('pessoas.bin');
    if (file.existsSync()) {
      List<dynamic> pessoasData = json.decode(file.readAsStringSync());
      for (var pessoaData in pessoasData) {
        Pessoa pessoa = Pessoa.fromJson(pessoaData);
        pessoas.add(pessoa);
      }
    }
  } catch (e) {
    print("Erro ao ler arquivo: $e");
  }
  return pessoas;
}

void escreverArquivo(List<Pessoa> pessoas) {
  try {
    File file = File('pessoas.bin');
    List<Map<String, dynamic>> pessoasData = [];
    for (Pessoa pessoa in pessoas) {
      pessoasData.add(pessoa.toJson());
    }
    file.writeAsStringSync(json.encode(pessoasData));
  } catch (e) {
    print("Erro ao escrever arquivo: $e");
  }
}

class Pessoa {
  final String? nome;
  final double? peso, altura, imc;

  Pessoa(this.nome, this.peso, this.altura, this.imc);

  Map<String, dynamic> toJson() {
    return {
      'nome': nome,
      'peso': peso,
      'altura': altura,
      'imc': imc,
    };
  }

  factory Pessoa.fromJson(Map<String, dynamic> json) {
    return Pessoa(
      json['nome'],
      json['peso'],
      json['altura'],
      json['imc'],
    );
  }

  @override
  String toString() {
    return "\n nome:$nome\n altura:$altura\n peso:$peso\n imc:$imc\n ";
  }
}
