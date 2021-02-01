import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:provider_app/components/card_home.dart';

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
    return AppBar(
      title: Text(_titulo_appBar),
      actions: [
        IconButton(
          icon: Icon(Icons.person_add_alt_1_outlined),
          onPressed: () => Navigator.pushNamed(context, '/cria_perfil'),
        )
      ],
    );
  }
}
