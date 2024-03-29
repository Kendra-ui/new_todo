// ignore_for_file: depend_on_referenced_packages, avoid_print

import 'dart:developer';
import 'package:new_todo/model/task.dart';
import 'package:new_todo/model/user.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class Dbservice {
  Database? _database;

//checking if the db is initialized
  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }
    _database = await initialize();
    return _database!;
  }

  Future<Database> initialize() async {
    String path = await getDatabasesPath();
    print('Database file path: $path');
    return await openDatabase(
      join(path, 'ines.db'),
      version: 1,
      onCreate: createDB,
      onConfigure: _onConfigure,
    );
  }

  Future createDB(Database db, int version) async {
    await db.execute("""
    CREATE TABLE user(
      "userId" INTEGER PRIMARY KEY NOT NULL,
      "email" TEXT NOT NULL,
      "username" TEXT NOT NULL,
      "password" TEXT NOT NULL
    )""");

    await db.execute("""
      CREATE TABLE todo (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        title TEXT NOT NULL,
        description TEXT NOT NULL,
        username TEXT NOT NULL
        )
      """);
  }

  // this is to permit the foreign key to work
  Future _onConfigure(Database db) async {
    await db.execute('PRAGMA foreign_keys = ON');
  }

//insert user info after sign up
  Future<Users> signup(Users user) async {
    final Database db = await initialize();
    await db.insert('user', user.toMap());
    return user;
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
  Future<Users> getUsers(String username) async {
    final Database db = await initialize();
    var res =
        await db.query("user", where: "username = ?", whereArgs: [username]);
    print('xxxx $res');
    if (res.isNotEmpty) {
      return Users.fromMap(res.first);
    } else {
      throw Exception('$username not found');
    }
  }

  //get all Users
  Future<List<Users>> getAllUser(Users user) async {
    final Database db = await initialize();

    final result = await db.rawQuery('''
      SELECT *
      FROM user
      order by ${user.username} ASC',
      
    ''');

    return result.map((e) => Users.fromMap(e)).toList();
  }

  Future<int> updateUser(Users user) async {
    final Database db = await initialize();
    return db.update('user', user.toMap(),
        where: "username = ?", whereArgs: [user.username]);
  }

  //delete user
  Future<int> deleteUser(String username) async {
    final db = await database;
    return db.delete('user', where: "username = ?", whereArgs: [username]);
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

  //inserting todo in database
  Future<Task> insertTodo(Task task, String username) async {
    final Database db = await database;
    await db.insert('todo', {
      'title': task.title,
      'description': task.description,
      'username': username
    });

    task.toMap();

    return task;
  }

  //get todos
  Future<List<Task>> getTask(String username) async {
    final Database db = await database;
    final result = await db.query('todo',
        orderBy: 'title', where: "username = ?", whereArgs: [username]);

    return result.map((e) => Task.fromMap(e)).toList();
  }

  // Future<Task> deleteTask(Task task) async {
  //   final Database db = await database;
  //   await db.delete('todo',
  //       where: '${task.title} = ? AND ${task.username} = ?',
  //       whereArgs: [task.title, task.username]);

  //   return task;
  // }

  Future fetchTodoData() async {
    final db = await initialize();

    final queryResult = await db.query('todo');
    inspect(queryResult);
  }
}
