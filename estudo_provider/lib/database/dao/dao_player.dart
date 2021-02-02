import 'package:sqflite/sqflite.dart';

import 'package:provider_app/database/app_database.dart';
import 'package:provider_app/models/player.dart';

class PlayerDao {
  static const String tableSql = 'CREATE TABLE $_tableName('
      '$_id INTEGER PRIMARY KEY, '
      '$_nome TEXT, '
      '$_raca TEXT, '
      '$_cls TEXT, '
      '$_nivel INTEGER, '
      '$_vida INTEGER, '
      '$_attk INTEGER, '
      '$_def INTEGER) ';

  static const String _tableName = 'player';
  static const String _id = 'id';
  static const String _nome = 'nome';
  static const String _raca = 'raca';
  static const String _cls = 'classe';
  static const String _nivel = 'nivel';
  static const String _vida = 'vida';
  static const String _attk = 'attack';
  static const String _def = 'defence';

  Future<int> save(Player player) async {
    final Database db = await getDatabase();
    Map<String, dynamic> playerMap = _toMap(player);
    return db.insert(_tableName, playerMap);
  }

  Map<String, dynamic> _toMap(Player player) {
    final Map<String, dynamic> playerMap = Map();
    playerMap[_nome] = player.nome;
    playerMap[_raca] = player.raca;
    playerMap[_cls] = player.cls;
    playerMap[_nivel] = player.nivel;
    playerMap[_vida] = player.vida;
    playerMap[_attk] = player.attk;
    playerMap[_def] = player.def;
    return playerMap;
  }

  Future<List<Player>> findTest() async {
    final Database db = await getDatabase();
    final List<Map<String, dynamic>> result = await db.query(_tableName);
    List<Player> players = _toPlayer(result);
    return players;
  }

  List<Player> _toPlayer(List<Map<String, dynamic>> result) {
    final List<Player> players = List();
    for (Map<String, dynamic> row in result) {
      final Player player = Player();
      player.nome = row[_nome];
      player.raca = row[_raca];
      player.cls = row[_cls];
      player.nivel = row[_nivel];
      player.vida = row[_vida];
      player.attk = row[_attk];
      player.def = row[_def];

      players.add(player);
    }
    return players;
  }
}
