class Pessoa {
  String? nome;
  // quando colocamos underscore na frente do nome da variavel a definimos como privada
  String _cpf = '';

  set cpf(String cpf) {
    this._cpf = cpf;
  }

  String get cpf {
    return _cpf;
  }
}
