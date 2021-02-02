import 'package:sqflite/sqflite.dart';

import 'package:path/path.dart';

import 'package:provider_app/database/dao/dao_player.dart';

Future<Database> getDatabase() async {
  final String path = join(await getDatabasesPath(), 'estudo_provider.db');
  return openDatabase(
    path,
    onCreate: (db, version) {
      db.execute(PlayerDao.tableSql);
    },
    version: 1,
  );
}
