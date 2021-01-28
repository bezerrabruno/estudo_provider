import 'package:alura_bank/models/Usuario_2.dart';
import 'package:alura_bank/models/usuario_1.dart';
import 'package:flutter/material.dart';
import 'package:alura_bank/screens/home.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<Usuario1>(create: (context) => Usuario1()),
          ChangeNotifierProvider<Usuario2>(create: (context) => Usuario2()),
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
          home: Home(),
        ));
  }
}
