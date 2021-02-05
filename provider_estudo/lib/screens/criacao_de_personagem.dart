import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:provider_app/components/editor.dart';
import 'package:provider_app/models/player1.dart';
import 'package:provider_app/models/player2.dart';

class CriaPersonagemPage extends StatelessWidget {
  TextEditingController _controlador_player = TextEditingController();
  TextEditingController _controlador_nome = TextEditingController();
  TextEditingController _controlador_raca = TextEditingController();
  TextEditingController _controlador_cls = TextEditingController();

  Widget build(BuildContext context) {
    return _tela(context);
  }

  Widget _tela(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Criação de Personagem'),
      ),
      body: ListView(
        children: [
          Editor('Palyer', '1 ou 2', _controlador_player),
          Editor('Nome', 'Abu', _controlador_nome),
          Editor('Raça', 'Humano', _controlador_raca),
          Editor('Classe', 'Paladino', _controlador_cls),
          Align(
            child: RaisedButton(
              onPressed: () => _confirmar(context),
              child: Text(
                'Confirmar',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void _confirmar(BuildContext context) {
    String _player = _controlador_player.text;
    String _nome = _controlador_nome.text;
    String _raca = _controlador_raca.text;
    String _cls = _controlador_cls.text;

    if (_player == '1') {
      Provider.of<Player1>(context, listen: false)
          .add_player(_nome, _raca, _cls);
    }

    if (_player == '2') {
      Provider.of<Player2>(context, listen: false)
          .add_player(_nome, _raca, _cls);
    }

    Navigator.pop(context);
  }
}
