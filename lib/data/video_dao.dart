import 'package:sciencenotes/data/db_helper.dart';
import 'package:sciencenotes/domain/videos.dart';
import 'package:sqflite/sqflite.dart';

class VideosDao {
  Future<List<Videos>> listarVideos() async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * FROM VIDEO;';
    final result = await db.rawQuery(sql);

    List<Videos> lista = <Videos>[];
    for (var json in result) {
      Videos video = Videos.fromJson(json);
      lista.add(video);
    }

    return lista;
  }
}
