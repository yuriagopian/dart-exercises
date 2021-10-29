import 'pessoa.dart';

main() {
  var p1 = new Pessoa();
  p1.nome = 'João';
  //assim não consigo capturar
  // p1._cpf = '123.456.789-00';

  p1.cpf = '123.456.789-00';

  print(
      'O ${p1.nome} tem cpf ${p1.cpf}'); // assim consigo pegar cpf por conta do getter
}
