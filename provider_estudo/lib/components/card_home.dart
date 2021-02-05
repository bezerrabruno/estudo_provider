import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:provider_app/models/player1.dart';
import 'package:provider_app/models/player2.dart';

class CardHome extends StatelessWidget {
  int player;

  CardHome(this.player);

  Widget build(context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Row(children: [
        SizedBox(
          width: 250,
          height: 230,
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: _player(context, player),
            ),
          ),
        ),
        SizedBox(
          width: 100,
          height: 200,
          child: Card(
            child: SizedBox(),
          ),
        ),
      ]),
    );
  }

  Widget _player(BuildContext context, int player) {
    if (player == 1) {
      return Consumer<Player1>(builder: (context, user, _) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nome: ${user.nome}', style: TextStyle(fontSize: 25)),
            Text('Raça: ${user.raca}', style: TextStyle(fontSize: 25)),
            Text('Classe: ${user.cls}', style: TextStyle(fontSize: 25)),
            Text('Nivel: ${user.nivel}', style: TextStyle(fontSize: 25)),
            Text('Vida: ${user.vida}', style: TextStyle(fontSize: 25)),
            Text('Attk: ${user.attk}', style: TextStyle(fontSize: 25)),
            Text('Def: ${user.def}', style: TextStyle(fontSize: 25)),
          ],
        );
      });
    }

    if (player == 2) {
      return Consumer<Player2>(builder: (context, user, _) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nome: ${user.nome}', style: TextStyle(fontSize: 25)),
            Text('Raça: ${user.raca}', style: TextStyle(fontSize: 25)),
            Text('Classe: ${user.cls}', style: TextStyle(fontSize: 25)),
            Text('Nivel: ${user.nivel}', style: TextStyle(fontSize: 25)),
            Text('Vida: ${user.vida}', style: TextStyle(fontSize: 25)),
            Text('Attk: ${user.attk}', style: TextStyle(fontSize: 25)),
            Text('Def: ${user.def}', style: TextStyle(fontSize: 25)),
          ],
        );
      });
    }
  }
}
