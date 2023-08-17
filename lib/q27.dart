//Paulo Roberto Fernandes Holanda
//Utilizando o recurso de programação genérica, implemente a estrutura de dados “pilha”.
import 'dart:io';

void q27() {
  var pilha = Pilha<int>();

  for (int a = 0; a < 100; a = a + 11) {
    pilha.push(a);
  }
  
  print("Tamanho da pilha: ${pilha.length()}");

  print("Desempilhando elementos:");
  while (!pilha.isEmpty()) {
    stdout.write(" ${pilha.pop()}, ");
  }
}

class Pilha<T> {
  final List<T> _obj = [];

  void push(T item) {
    _obj.add(item);
  }

  T pop() {
    if (_obj.isNotEmpty) {
      return _obj.removeLast();
    }
    throw StateError("Não há nada na pilha.");
  }

  int length() {
    return _obj.length;
  }

  bool isEmpty() {
    return _obj.isEmpty;
  }
}
