import 'dart:ffi';

class Pet {
  String nome;
  String descricao;
  String image;
  bool isVacinado;
  String idade;

  Pet({
    this.nome = '',
    this.descricao = '',
    this.image = '',
    this.isVacinado = true,
    this.idade = '',
  });

  factory Pet.fromJson(Map<String, dynamic> parsedJson){

    return Pet(
      nome: parsedJson['nome'],
      descricao : parsedJson['descricao'],
      image : parsedJson['image'],
      isVacinado : parsedJson['isVacinado'],
      idade : parsedJson['idade'],
    );
  }
}