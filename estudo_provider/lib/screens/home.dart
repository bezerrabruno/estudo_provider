import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:alura_bank/components/card_home.dart';
import 'package:alura_bank/models/usuario_1.dart';
import 'package:alura_bank/models/Usuario_2.dart';

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _tela(context),
    );
  }

  Widget _tela(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CardHome(),
        RaisedButton(
            child: Text('Add Usuario'),
            onPressed: () {
              Provider.of<Usuario1>(context, listen: false)
                  .addUsuario('Cleber', 'Pereira', 20);
            }),
        RaisedButton(
            child: Text('Remove Usuario'),
            onPressed: () {
              Provider.of<Usuario1>(context, listen: false)
                  .addUsuario('Null', 'Null', 0);
            }),
        RaisedButton(
            child: Text('Add Usuario Test'),
            onPressed: () {
              Provider.of<Usuario2>(context, listen: false)
                  .addUsuario('João', 'Vacontes', 36);
            }),
        RaisedButton(
            child: Text('Remove Usuario Test'),
            onPressed: () {
              Provider.of<Usuario2>(context, listen: false)
                  .addUsuario('Null', 'Null', 0);
            }),
      ],
    );
  }

  Widget _appBar() {
    return AppBar(
      title: const Text('Provider'),
    );
  }
}
