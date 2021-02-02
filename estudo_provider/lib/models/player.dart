import 'package:flutter/material.dart';

class Player extends ChangeNotifier {
  String nome = 'Null';
  String raca = 'Null';
  String cls = 'Null';

  int nivel = 0;
  int attk = 0;
  int def = 0;
  int vida = 0;

  void add_player(String nome, String raca, String cls) {
    if (this.nome == 'Null') {
      this.nome = nome;
      this.raca = raca;
      this.cls = cls;

      if (raca == 'Humano') {
        this.nivel += 0;
        this.attk += 5;
        this.def += 5;
        this.vida += 10;
      }
    }

    notifyListeners();
  }

  void carrega_player(Player player) {
    this.nome = player.nome;
    this.raca = player.raca;
    this.cls = player.cls;

    this.nivel = player.nivel;
    this.attk = player.attk;
    this.def = player.def;
    this.vida = player.vida;

    notifyListeners();
  }
}
