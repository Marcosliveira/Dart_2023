import 'dart:io';

void ex_01(){

  var filme1 = {
    'titulo': 'Titanic',
    'genero': 'Romance',
    'notas': <int> [8, 5]
  };

  var filme2 = {
    'titulo': 'ABC',
    'genero': 'Terror',
    'notas': <int> [7, 5]
  };

  var filmes = [filme1, filme2];

  for (var filme in filmes) {
    print(filme['titulo']);
    var notas = filme['notas'] as List <int>;
    double media = notas.reduce((a, b) => a + b) / notas.length;
    print(media);
  }
}

void main() {
  ex_01();
}