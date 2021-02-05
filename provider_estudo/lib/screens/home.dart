import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:provider_app/components/card_home.dart';
import 'package:provider_app/models/player1.dart';
import 'package:provider_app/models/player2.dart';

const _titulo_appBar = 'Home';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return _tela(context);
  }

  Widget _tela(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        CardHome(1),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  Provider.of<Player1>(context, listen: false).up_level();
                }),
            IconButton(
                icon: Icon(Icons.remove),
                onPressed: () {
                  Provider.of<Player1>(context, listen: false).down_level();
                }),
          ],
        ),
        CardHome(2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  Provider.of<Player2>(context, listen: false).up_level();
                }),
            IconButton(
                icon: Icon(Icons.remove),
                onPressed: () {
                  Provider.of<Player2>(context, listen: false).down_level();
                }),
          ],
        ),
      ]),
    );
  }

  Widget _appBar(BuildContext context) {
    return AppBar(
      title: Text(_titulo_appBar),
      actions: [
        IconButton(
          icon: Icon(Icons.person_add_alt_1_outlined),
          onPressed: () => Navigator.pushNamed(context, '/cria_perfil'),
        ),
      ],
    );
  }
}
