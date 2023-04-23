import 'dart:io';
import 'dart:math';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:elo_task/models/user_data.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import 'database_state.dart';

class DatabaseCubit extends Cubit<DatabaseState> {
  DatabaseCubit() : super(InitDatabaseState());

  Database? database;

  Future<void> initDatabse() async {
    final databasePath = await getDatabasesPath();
    // print databasePath

    final path = join(databasePath, 'userInfo.db');

    if (await Directory(dirname(path)).exists()) {
      database = await openDatabase(path, version: 1,
          onCreate: (Database db, int version) async {
        await db.execute(
            'CREATE TABLE userInfo(id INTEGER PRIMARY KEY, target REAL, checkPoint REAL, date TEXT)');
      });
      emit(LoadDatabaseState());
    } else {
      try {
        await Directory(dirname(path)).create(recursive: true);
        database = await openDatabase(path, version: 1,
            onCreate: (Database db, int version) async {
          await db.execute(
              'CREATE TABLE userInfo(id INTEGER PRIMARY KEY, target REAL, checkPoint REAL, date TEXT)');
        });
        emit(LoadDatabaseState());
      } catch (e) {
        if (kDebugMode) {
          print(e.toString());
        }
      }
    }
  }
}
