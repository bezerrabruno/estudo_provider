import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:provider_app/models/player.dart';

class CardPerfil extends StatelessWidget {
  Widget build(context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Row(children: [
        SizedBox(
          width: 250,
          height: 200,
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: _player(context),
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

  Widget _player(BuildContext context) {
    return Consumer<Player>(builder: (context, user, _) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Nome: ${user.nome}', style: TextStyle(fontSize: 25)),
          Text('Raça: ${user.raca}', style: TextStyle(fontSize: 25)),
          Text('Nivel: ${user.nivel}', style: TextStyle(fontSize: 25)),
          Text('Vida: ${user.vida}', style: TextStyle(fontSize: 25)),
          Text('Attk: ${user.attk}', style: TextStyle(fontSize: 25)),
          Text('Def: ${user.def}', style: TextStyle(fontSize: 25)),
        ],
      );
    });
  }
}
