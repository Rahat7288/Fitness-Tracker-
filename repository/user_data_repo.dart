import 'package:elo_task/models/user_data.dart';
import 'package:sqflite/sqlite_api.dart';

class UserDataRepo {
  Future<List<UserData>> getData({
    required Database database,
  }) async {
    final datas = await database.rawQuery('SELECT * FROM userInfo');
    List<UserData> infos = [];
    for (var item in infos) {
      infos.add(UserData(
          id: item.id,
          target: item.target,
          date: item.date,
          checkPoint: item.checkPoint ?? 0));
    }
    return infos;
  }
}
