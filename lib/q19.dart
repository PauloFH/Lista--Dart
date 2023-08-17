//Paulo Roberto Fernandes Holanda
//19. Construa um programa que registre objetos da classe Pessoa,
//com os seguintes atributos: nome, peso, altura, imc.
//Permita que o usuário defina a quantidade de pessoas em tempo de
//execução. Ao cadastrar uma pessoa,
//calcule o IMC (Índice de Massa Corporal).
//Ao final, exiba a lista de pessoas (com seus respectivos atributos).
import 'dart:io';

void q19() {
  int num;
  double? peso, altura, imc;
  String? nome;
  List<Pessoa> pessoas = [];
  stdout.write('Quantas pessoas serão cadastradas: ');
  num = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < num; i++) {
    stdout.write('Pessoa $i \n');
    stdout.write('Digite o nome da pessoa: ');
    nome = stdin.readLineSync();
    stdout.write('Qual o peso: ');
    peso = double.parse(stdin.readLineSync()!);
    stdout.write('Qual a altura: ');
    altura = double.parse(stdin.readLineSync()!);
    imc = peso / altura;
    pessoas.add(Pessoa(nome, peso, altura, imc));
  }
  for (Pessoa pessoa in pessoas) {
    print(pessoa.toString());
  }
}

class Pessoa {
  final String? nome;
  final double? peso, altura, imc;

  Pessoa(this.nome, this.peso, this.altura, this.imc);
  @override
  String toString() {
    String a;
    a = "\n nome:$nome\n altura:$altura\n peso:$peso\n imc:$imc\n ";
    return a;
  }
}
