//Paulo Roberto Fernandes Holanda
//Utilizando o recurso de programação genérica, construa um programa que tenha funcionalidades de um CRUD
//(create, read,update e delete).
//Teste seu programa com as classes Integer e Pessoa
// (que você mesmo deve criar).

void q26() {
  Generic<Pessoa> crud = Generic<Pessoa>();
  Pessoa p1 = Pessoa("Paulo", 70, 1.70);
  Pessoa p2 = Pessoa("João", 80, 1.80);
  crud.cadastrar(p1);
  crud.cadastrar(p2);
  crud.listar();
  Pessoa p3 = Pessoa("Zacarias", 90, 1.75);
  crud.editar(p3, 1);
  crud.listar();
  crud.cadastrar(p2);
  crud.listar();
  crud.remover(1);

  Generic<int> crud2 = Generic<int>();
  crud2.cadastrar(1);
  crud2.cadastrar(4);
  crud2.listar();
  crud2.editar(2, 1);
  crud2.listar();
  crud2.cadastrar(3);
  crud2.listar();
  crud2.remover(1);
  crud2.listar();
}

class Generic<T> {
  final List<T> _lista = [];

  get list => _lista;

  void cadastrar(T obj) {
    list.add(obj);
    print("Objeto ${obj.toString()} adicionado com sucesso!");
  }

  void editar(T obj, int i) {
    try {
      if (i > 0 || i < list.length) {
        list[i] = obj;
        print("Objeto ${obj.toString()} editado com sucesso!");
      } else {
        print("Erro ao editar objeto.");
        throw Exception("ID inválido");
      }
    } catch (e) {
      print("Erro ao editar objeto: $e");
    }
  }

  void remover(int i) {
    try {
      if (i > 0 || i < list.length) {
        T deleted = list.removeAt(i);
        print("Objeto ${deleted.toString()} removido com sucesso!");
      } else {
        print("Erro ao remover objeto.(ID inválido)");
      }
    } catch (e) {
      print("Erro ao editar objeto: $e");
    }
  }

  List<T> listar() {
    return list.toList();
  }
}

class Pessoa {
  final String? nome;
  final double? peso, altura;
  late double? imc;

  Pessoa(
    this.nome,
    this.peso,
    this.altura,
  ) {
    imc = peso! / (altura! * altura!);
  }
  @override
  String toString() {
    String a;
    a = "\n nome:$nome\n altura:$altura\n peso:$peso\n imc:$imc\n ";
    return a;
    
  }
}
