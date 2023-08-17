import 'dart:io';

// Paulo Roberto Fernandes Holanda
// Q1) Calcular o IMC (índice de massa corporal) de uma pessoa. Produza um alerta em caso de divisão por zero.

void q1() {
  double? altura;
  print('Digite o seu nome? ');
  String? nome = stdin.readLineSync();
  print('Digite seu peso? ');
  double? peso = double.parse(stdin.readLineSync()!);
  do {
    print('Digite sua altura? ');
    altura = double.parse(stdin.readLineSync()!);
    if (altura == 0) {
      print('Altura não pode ser 0\n');
    }
  } while (altura == 0);

  print("$nome, seu IMC é ${(calcularImc(peso, altura)).toStringAsFixed(2)}");
}

calcularImc(double peso, double altura) => peso / (altura * altura);
