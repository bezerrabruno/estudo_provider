import 'package:flutter/material.dart';

class Editor extends StatelessWidget {
  final String titulo;
  final String dica;
  final TextEditingController controlador;

  Editor(
    this.titulo,
    this.dica,
    this.controlador,
  );

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: controlador,
        style: TextStyle(fontSize: 24.0),
        decoration: InputDecoration(
          labelText: titulo,
          hintText: dica,
        ),
      ),
    );
  }
}
