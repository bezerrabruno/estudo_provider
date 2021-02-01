import 'package:flutter/material.dart';

class CriaPersonagemPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return _tela();
  }

  Widget _tela() {
    return Scaffold(
      appBar: AppBar(
        title: Text('Criação de Personagem'),
      ),
      body: ListView(
        children: [],
      ),
    );
  }
}
