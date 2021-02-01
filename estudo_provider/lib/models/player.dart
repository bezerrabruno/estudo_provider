import 'package:flutter/material.dart';

class Player extends ChangeNotifier {
  String nome = 'Null';
  String raca = 'Null';

  int nivel = 0;
  int attk = 0;
  int def = 0;
  int vida = 10;

  void addUsuario(String nome, String raca, int idade) {
    this.nome = nome;
    this.raca = raca;

    notifyListeners();
  }
}
