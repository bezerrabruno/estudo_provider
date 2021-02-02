import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:provider_app/components/card_home.dart';
import 'package:provider_app/database/dao/dao_player.dart';
import 'package:provider_app/models/player.dart';

const _titulo_appBar = 'Home';
const _titulo_botao_1 = 'Aventura';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return _tela(context);
  }

  Widget _tela(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        CardPerfil(),
        RaisedButton(
          child: const Text(_titulo_botao_1),
          onPressed: () => true,
        ),
      ]),
    );
  }

  Widget _appBar(BuildContext context) {
    PlayerDao _dao = PlayerDao();
    return AppBar(
      title: Text(_titulo_appBar),
      actions: [
        IconButton(
          icon: Icon(Icons.person_add_alt_1_outlined),
          onPressed: () => Navigator.pushNamed(context, '/cria_perfil'),
        ),
        IconButton(
            icon: Icon(Icons.cloud_upload_outlined),
            onPressed: () {
              Player player = Player();
              _dao.findTest().then((value) {
                player = value.first;
                Provider.of<Player>(context, listen: false)
                    .carrega_player(player);
              });
            }),
        Consumer<Player>(builder: (context, player, _) {
          return IconButton(
            icon: Icon(Icons.save_alt_outlined),
            onPressed: () => _dao.save(player),
          );
        }),
      ],
    );
  }
}
