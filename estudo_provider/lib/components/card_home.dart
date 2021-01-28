import 'package:alura_bank/models/Usuario_2.dart';
import 'package:alura_bank/models/usuario_1.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CardHome extends StatelessWidget {
  Widget build(context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 48.0),
      child: SizedBox(
        height: 168,
        child: Card(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                _usuario1(context),
                _usuario2(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _usuario1(BuildContext context) {
    return Consumer<Usuario1>(builder: (context, user, _) {
      return ListTile(
        title: Text(
          '${user.nome} ${user.sobrenome}',
          style: TextStyle(fontSize: 25),
        ),
        subtitle: Text(
          '${user.idade}',
          style: TextStyle(fontSize: 25),
        ),
      );
    });
  }

  Widget _usuario2(BuildContext context) {
    return Consumer<Usuario2>(builder: (context, user, _) {
      return ListTile(
        title: Text(
          '${user.nome} ${user.sobrenome}',
          style: TextStyle(fontSize: 25),
        ),
        subtitle: Text(
          '${user.idade}',
          style: TextStyle(fontSize: 25),
        ),
      );
    });
  }
}

/*Consumer<Usuario1>(builder: (context, user, _){
                      return _usuario(user.nome, user.sobrenome, user.idade);
                      }*/
