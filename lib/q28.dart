//Paulo Roberto Fernandes Holanda
//Construa um método que valide se uma string possui seus parênteses colocados 
//corretamente. A string de entrada é válida se a quantidade de parênteses
// abertos for a mesma dos parênteses fechados.
// Dica: utilize uma “pilha” para resolver o problema.
//Exemplo:  entrada: str = "()"      saída: true
//Exemplo:  entrada: str = "()()"    saída: true
//Exemplo:  entrada: str = "(a)b"    saída: true
//Exemplo:  entrada: str = "(a)(b)"  saída: true
//Exemplo:  entrada: str = "(("      saída: false
//Exemplo:  entrada: str = "(a)(b"   saída: false
//Exemplo:  entrada: str = ")("      saída: false
//Exemplo:  entrada: str = ")a()b("  saída: false
import 'dart:io';
void q28() {
      stdout.write("Digite uma string: ");
      String str = stdin.readLineSync()!;
      print(validaParenteses(str));
}


bool validaParenteses(String str) {
  Pilha<String> pilha = Pilha<String>();
  for (int i = 0; i < str.length; i++) {
    if (str[i] == '(') {
      pilha.push('(');
    } else if (str[i] == ')') {
      if (pilha.isEmpty()) {
        return false;
      } else {
        pilha.pop();
      }
    }
  }
  return pilha.isEmpty();
}class Pilha<T> {
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

