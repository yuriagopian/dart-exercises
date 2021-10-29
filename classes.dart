/**
 * Fala pessoal!

Junto com a nova versão do Flutter, foi lançada uma nova funcionalidade chamada NullSafety, que nos obriga a fazer uma verificação sobre um valor para evitar que ele seja nulo e cause problemas no código e no app em alguma situação.

Durante os próximos projetos, vocês podem deparar-se algumas vezes com a mensagem: "The parameter 'valor' can't have a value of 'null'"; quando você está definindo uma nova variável sem atribuir nenhum valor a ela,  você receberá a mensagem "Non-nullable instance field must be initialized".

Por exemplo, caso você faça o seguinte:

String texto;
List lista;
int numero;
Você  se deparará com uma das mensagens de erro. Isso é simples de corrigir, e você tem duas opções: é possível simplesmente atribuir algum valor inicial, mesmo que seja algum valor vazio. Dessa forma, o problema com o NullSafety nunca irá ocorrer. Ou seja, para corrigir bastaria fazer dessa forma:

String texto = '';
List lista = [];
int numero = 0;
Porém, nem sempre é  viável atribuir algum valor padrão para uma de nossas variáveis. Nesse caso, o que precisamos fazer é marcar a variável como "nullable" utilizando a interrogação:

String? texto;
List? lista;
int? numero;
Quando marcado com a "?", estamos sinalizando para o dart que aquela variável é "nullable", e ele deixará que você crie a variável sem um valor padrão. Porém, ao tentar utilizar essas variáveis, você poderá deparar-se com o erro "The argument type can't be assigned to the parameter type". Isso acontece porque, ao utilizar-se da interrogação, é necessário que você também marque o uso dessa variável marcada. Ou seja, quando você for utilizar as variáveis marcadas você precisa fazer uma de duas coisas:

Ou você marca a variável com uma exclamação "!", informando ao Dart que estamos garantindo que aquela variável não será nula:

texto!
lista!
numero!

Ou você faz utilização do casting, que se trata de explicitar para o dart qual é a tipagem daquela variável, dessa forma:

texto as String
lista as List
numero as int
Basicamente, é assim que lidamos com a questão do NullSafety. No decorrer do curso, você se deparará diversas vezes com algum desses erros, que são bem simples de corrigir.

Bons estudos!
 */

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

// nullable : String? nome --> ?
// nullable : String? nome --> ?
imprimirProduto2(int qtde, {String? nome, double preco = 0}) {
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
