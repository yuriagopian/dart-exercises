class Produto {
  String nome = '';
  double preco = 0;
}

class Produto2 {
  String nome = '';
  double preco = 0;

  Produto2(String nomeProduto, double preco) {
    nome = nomeProduto;
    this.preco = preco;
  }
}

class Produto3 {
  String nome = '';
  double preco = 0;
  //Parametros posicionais
  Produto3(this.nome, this.preco);
}

class Produto4 {
  String nome;
  double preco = 0;
  //Parametro nomeado
  Produto4({this.nome = '', this.preco = 9.99});
}

imprimirProduto({String nome = '', double preco = 0}) {
  print('O produto ${nome} tem preco R\$${preco}!!!');
}

imprimirProduto2(int qtde, {String nome = '', double preco = 0}) {
  for (var i = 0; i < qtde; i++) {
    print('O produto ${nome} tem preco R\$${preco}!!!');
  }
}

main() {
  var p1 = new Produto();
  p1.nome = 'Caderno';
  p1.preco = 10.49;

  print('O produto ${p1.nome} tem preco R\$${p1.preco}');

  var p2 = new Produto2('Lapis', 2.59);
  print('O produto ${p2.nome} tem preco R\$${p2.preco}');

  var p3 = Produto2('Caneta', 3.59);
  print('O produto ${p3.nome} tem preco R\$${p3.preco}');

  var p4 = Produto3('Canetinha', 4.59);
  print('O produto ${p4.nome} tem preco R\$${p4.preco}');

  var p5 = Produto4(nome: 'Canetão', preco: 7.99);
  var p6 = Produto4(nome: 'Canetão2');

  print('O produto ${p5.nome} tem preco R\$${p5.preco}');
  print('O produto ${p6.nome} tem preco R\$${p6.preco}');

  imprimirProduto(nome: p5.nome, preco: p5.preco);
  imprimirProduto2(5, nome: p5.nome, preco: p5.preco);
}
