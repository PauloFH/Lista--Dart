//Paulo Roberto Fernandes Holanda
//Construa um programa para ler do teclado as dimensões de uma matriz de
// inteiros e seus elementos. Em seguida, exiba seus elementos.
import 'dart:io';
import 'package:matrices/matrices.dart';

void q15() {
  int? linha, colunas;
  stdout.write('digite o número de linhas: ');
  linha = int.parse(stdin.readLineSync()!);
  stdout.write('digite o número de linhas: ');
  colunas = int.parse(stdin.readLineSync()!);

  var mat = Matrix.zero(linha, colunas);
  for (int i = 0; i < linha; i++) {
    for (int j = 0; j < colunas; j++) {
      stdout.write('digite o número do valor [$i][$j] ');
      mat[i][j] = double.parse(stdin.readLineSync()!);
    }
  }
  print(mat);
}
