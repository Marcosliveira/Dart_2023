import 'dart:io';

void ex_01(List<String> arguments) {
  int soma = 0;

  // Itera sobre os argumentos, converte-os para int e os soma
  for (var arg in arguments) {
    int numero = int.parse(arg);
    soma += numero;
  }

  print('A soma dos elementos é: $soma');
}


void ex_03(List <String> arguments){
    var portugues = {'Brasil', 'Portugal'};
    var europa = {'Alemanha', 'Portugal', 'Espanha'};

    // .union retorna um novo conjunto contendo todos os elementos presentes em ambos os conjuntos que estão sendo unidos.
    final todos = portugues.union(europa); 
    // .intersection retorna um novo conjunto contendo apenas os elementos que estão presentes em ambos os conjuntos que estão sendo interseccionados.
    final port_Na_europa = portugues.intersection(europa); 
    // .difference retorna um novo conjunto contendo todos os elementos presentes no primeiro conjunto que não estão presentes no segundo conjunto.
    final europa_port = portugues.difference(europa);       
    final port_Nao_europeu = europa.difference(portugues);  

    print('Todos: $todos');
    print('Português na Europa: $port_Na_europa');
    print('Português, não europeu: $europa_port');
    print('Não português, não europeu: $port_Nao_europeu');

}

void ex_04() {
  Map<String, String> contatos = {};

  while (true) {
    print("Menu:");
    print("1 - Criar contato");
    print("2 - Ler contatos");
    print("3 - Atualizar contato");
    print("4 - Deletar contato");
    print("5 - Sair");
    print("Escolha uma opção: ");
    
    int opcao = int.parse(stdin.readLineSync()!);
    
    switch (opcao) {
      case 1:
        print("Digite o nome do contato: ");
        String nome = stdin.readLineSync()!;
        print("Digite o número do contato: ");
        String numero = stdin.readLineSync()!;
        contatos[nome] = numero;
        print("Contato criado com sucesso!");
        break;
      case 2:
        if (contatos.isEmpty) {
          print("Nenhum contato cadastrado.");
        } else {
          contatos.forEach((nome, numero) {
            print("Nome: $nome, Número: $numero");
          });
        }
        break;
      case 3:
        print("Digite o nome do contato a ser atualizado: ");
        String nome = stdin.readLineSync()!;
        if (contatos.containsKey(nome)) {
          print("Digite o novo número do contato: ");
          String novoNumero = stdin.readLineSync()!;
          contatos[nome] = novoNumero;
          print("Contato atualizado com sucesso!");
        } else {
          print("Contato não encontrado.");
        }
        break;
      case 4:
        print("Digite o nome do contato a ser deletado: ");
        String nome = stdin.readLineSync()!;
        if (contatos.containsKey(nome)) {
          contatos.remove(nome);
          print("Contato deletado com sucesso!");
        } else {
          print("Contato não encontrado.");
        }
        break;
      case 5:
        print("Saindo...");
        return;
      default:
        print("Opção inválida.");
    }
  }
}

void ex_05() {
  var filmes = <Map<String, dynamic>>[];

  while (true) {
    print("Escolha uma opção:");
    print("1 - Adicionar filme");
    print("2 - Remover filme");
    print("3 - Visualizar filmes");
    print("4 - Visualizar média de notas");
    print("5 - Adicionar avaliação");
    print("6 - Sair");

    String? opcao = stdin.readLineSync();

    if (opcao == '1') {
      print("Titulo?");
      String? titulo = stdin.readLineSync();
      print("Gênero?");
      String? genero = stdin.readLineSync();
      filmes.add({'titulo': titulo, 'genero': genero, 'avaliacoes': []});
      print("Filme adicionado!");
    } else if (opcao == '2') {
      print("Digite o título do filme a ser removido:");
      String? titulo = stdin.readLineSync();
      var filme = filmes.firstWhere((filme) => filme['titulo'] == titulo, orElse: () => null);
      if (filme != null) {
        filmes.remove(filme);
        print("Filme removido!");
      } else {
        print("Filme não encontrado!");
      }
    } else if (opcao == '3') {
      for (var filme in filmes) {
        print("${filme['titulo']} (${filme['genero']})");
      }
    } else if (opcao == '4') {
      print("Digite o título do filme:");
      String? titulo = stdin.readLineSync();
      var filme = filmes.firstWhere((filme) => filme['titulo'] == titulo, orElse: () => null);
      if (filme != null) {
        List<int> notas = filme['avaliacoes'];
        if (notas.isNotEmpty) {
          double media = notas.reduce((a, b) => a + b) / notas.length;
          print("Média de notas: $media");
        } else {
          print("Filme não possui avaliações.");
        }
      } else {
        print("Filme não encontrado!");
      }
    } else if (opcao == '5') {
      print("Digite o título do filme:");
      String? titulo = stdin.readLineSync();
      var filme = filmes.firstWhere((filme) => filme['titulo'] == titulo, orElse: () => null);
      if (filme != null) {
        print("Nome da pessoa responsável pela avaliação:");
        String nome = stdin.readLineSync()!;
        print("Avaliação:");
        int nota = int.parse(stdin.readLineSync()!);
        filme['avaliacoes'].add({'nome': nome, 'nota': nota});
        print("Avaliação adicionada!");
      } else {
        print("Filme não encontrado!");
      }
    } else if (opcao == '6') {
      print("Encerrando o programa.");
      break;
    } else {
      print("Opção inválida.");
    }
  }
}

void main() {
    ex_01(['1','2','3']); // Passando os arguments
    ex_03([]);
    ex_04();
    ex_05();
}