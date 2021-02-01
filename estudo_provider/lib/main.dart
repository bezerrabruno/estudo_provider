import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:provider_app/models/player.dart';
import 'package:provider_app/screens/home.dart';
import 'package:provider_app/screens/criacao_de_personagem.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<Player>(create: (context) => Player()),
        ],
        child: MaterialApp(
          theme: ThemeData(
            appBarTheme: AppBarTheme(
              color: Colors.black,
            ),
            buttonTheme: ButtonThemeData(
              buttonColor: Colors.cyanAccent,
            ),
            scaffoldBackgroundColor: Colors.grey,
          ),
          home: HomePage(),
          routes: {
            '/home': (_) => HomePage(),
            '/cria_perfil': (_) => CriaPersonagemPage(),
          },
        ));
  }
}
