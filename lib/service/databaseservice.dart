import 'dart:developer';

import 'package:new_todo/model/user.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseService {
  Database? _database;

//checking if the db is initialized
  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }
    _database = await initialize();
    return _database!;
  }

  Future initialize() async {
    String path = await getDatabasesPath();
    return await openDatabase(join(path, 'app.db'),
        version: 1, onCreate: createDB);
  }

  Future createDB(Database db, int version) async {
    await db.execute("""
    CREATE TABLE user(
      "id" INTEGER PRIMARY KEY NOT NULL,
      "email" TEXT NOT NULL,
      "username" TEXT NOT NULL,
      "password" TEXT NOT NULL
    )""");
  }

//insert user info after sign up
  Future<int> signup(Users user) async {
    final Database db = await initialize();
    return await db.insert('user', user.toMap());
  }

  Future fetchData() async {
    final db = await database;
    final queryResult = await db.query('user');
    inspect(queryResult);
  }

  //Method for login
  Future<bool> signin(Users user) async {
    final Database db = await initialize();

    var result = await db.rawQuery(
        "select * from user where username = '${user.username},' AND password = '${user.password}'");
    if (result.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }

//Get user after login
  Future<Users?> getUserss(String username) async {
    final Database db = await initialize();
    var res =
        await db.query("user", where: "username = ?", whereArgs: [username]);
    return res.isNotEmpty ? Users.fromMap(res.first) : null;
  }

  //check if user exist,if duplication catch the exeption
  Future<bool> checkUserssExist(String username) async {
    final Database db = await initialize();
    final List<Map<String, dynamic>> res =
        await db.query("user", where: "username = ?", whereArgs: [username]);
    return res.isNotEmpty;
  }

  Future<bool> checkEmailExist(String email) async {
    final Database db = await initialize();
    final List<Map<String, dynamic>> res =
        await db.query("user", where: "email = ?", whereArgs: [email]);
    return res.isNotEmpty;
  }
}
