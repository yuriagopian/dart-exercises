int soma(int a, int b) {
  print(a + b);
  return a + b;
}

main() {
  int a = 3;
  var conjunto = {0, 1, 2, 4};
  Set<int> conjunto2 = {0, 1, 2, 4};
  var nomes = ['ANA', 'BIA'];

  print(nomes);
  print(conjunto);
  print(conjunto.length);
  print(conjunto is Set);
  print(a);
  print({"conjunto 2": conjunto2});
  print("Primeiro exercicio");
  //array.fold é igual ao reduce
  print(conjunto.fold(0, (previousValue, element) => null));

  // Definindo tipo Map
  Map<String, double> notasDosAlunos = {'Ana': 9.9, 'Bia': 10.0, 'Carlos': 7.8};
  print(notasDosAlunos);

  // Criando laço com for
  for (var chave in notasDosAlunos.keys) {
    print('chave = $chave');
  }

  for (var valor in notasDosAlunos.values) {
    print('valor = $valor');
  }

  for (var registro in notasDosAlunos.entries) {
    print('${registro.key} = ${registro.value}');
  }

  // type dynamic, assim consigo manipular tipagem dinamica como no js
  dynamic x = 'Teste';
  x = 123;
  print(x);

  //definindo constantes
  var variavel = 3;
  variavel = 4;
  print(variavel);

  final constante = 3; // grava valor em tempo de run time(execucao)
  // constante = 6; // não consigo alterar valor

  const c = 5; // aloca na memória o valor
  // c = 7; // não consigo alterar valor

  //executando funções
  soma(1, 10);
  print('O valor da soma é: ${soma(2, 3)}');
}
