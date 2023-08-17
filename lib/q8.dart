// Paulo Roberto Fernandes Holanda
//8. Verificar se a senha, informada durante a execução, é correta. Quando a senha estiver correta, exiba “senha correta” e o programa
//é encerrado. Quando a senha estiver errada, exiba “senha incorreta”, e permita a entrada novamente da senha, repetindo esse
//processo até que a senha entrada seja correta.
//a) Resolva esse problema utilizando a estrutura while.
//b) Resolva esse problema utilizando a estrutura do-while.
import 'dart:io';

void q8() {
  whilesenha();
  dowhilesenha();
}

void whilesenha() {
  print("Com While: ");
  String? senha;
  senha = stdin.readLineSync();
  senha == 'senha' ? print("Senha correta") : print("senha incorreta");
  while (senha != 'senha') {
    senha = stdin.readLineSync();
    senha == 'senha' ? print("Senha correta") : print("senha incorreta");
  }
}

void dowhilesenha() {
  print("do-While: ");
  String? senha;
  do {
    senha = stdin.readLineSync();
    senha == 'senha' ? print("Senha correta") : print("senha incorreta");
  } while (senha != 'senha');
}
