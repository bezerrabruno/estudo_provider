import 'package:flutter/material.dart';

class Usuario2 extends ChangeNotifier {
  String nome = 'Null';
  String sobrenome = 'Null';
  int idade = 0;

  void addUsuario(String novoNome, String novoSobrenome, int novaIdade) {
    nome = novoNome;
    sobrenome = novoSobrenome;
    idade = novaIdade;

    notifyListeners();
  }
}
