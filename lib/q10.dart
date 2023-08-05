//Paulo Roberto Fernandes Holanda
//Construa um programa que calcule o rendimento mensal de um investimento em poupança.
// Variáveis: investimento inicial,investimento mensal, quantidade de meses,
// saldo acumulado, taxa de juros mensal, rendimento mensal.
import 'dart:io';

void q10() {
  num? investimentoInicial,
      investimentoMensal,
      saldoAcumulado,
      juros,
      taxaJurosMensal = 0.005;
  int? meses;
  stdout.write("Sistema de Investimento!!!! \n ");
  do {
    stdout.write("Digite o investiemento inicial: ");
    investimentoInicial = double.parse(stdin.readLineSync()!);

    stdout.write("Digite o investiemento mensal: ");
    investimentoMensal = double.parse(stdin.readLineSync()!);

    stdout.write("Digite o tempo de aplicação em meses: ");
    meses = int.parse(stdin.readLineSync()!);

    investimentoInicial < 0 || investimentoMensal < 0 || meses < 0
        ? print("")
        : print("valor inválido");
  } while (investimentoInicial < 0 || investimentoMensal < 0 || meses < 0);
  saldoAcumulado = investimentoInicial;
  for (int i = 1; i <= meses; i++) {
    juros = (saldoAcumulado! * taxaJurosMensal);
    saldoAcumulado += juros + investimentoMensal;
  }

  String saldofinal = saldoAcumulado!.toStringAsFixed(2);
  taxaJurosMensal = taxaJurosMensal * 100;
  print(
      "seu investimento rendeu R\$ $saldofinal em $meses a uma taxa de $taxaJurosMensal% ao mês");
}
