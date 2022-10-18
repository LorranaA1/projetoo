import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  initDB() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, "video.db");
    Database database = await openDatabase(
      path,
      version: 1,
      onCreate: onCreate,
      onUpgrade: onUpgrade,
    );

    print(path);
    return database;
  }

  Future<FutureOr<void>> onCreate(Database db, int version) async {
    String sql =
        'create table VIDEO (id INTEGER PRIMARY KEY, id_content INTEGER FOREIGN KEY, urlImage varchar(150), tituloVideo varchar(50), tempoDuracao varchar(5), urlVideo varchar(150))';
    await db.execute(sql);

    sql =
        "INSERT INTO VIDEO (urlImage, tituloVideo, tempoDuracao, urlVideo) VALUES ();";
    await db.execute(sql);
  }

  Future<void> onUpgrade(Database db, int oldVersion, int newVersion) async {
    if (oldVersion == 1 && newVersion == 2) {
      String sql =
          "CREATE TABLE people (username varchar(100) PRIMARY KEY, password varchar(100))";
      await db.execute(sql);

      sql =
          "INSERT INTO people (username, password) VALUES ('fjuliaaf', '12345')";
      await db.execute(sql);
    }
  }
}
