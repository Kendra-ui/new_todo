import 'dart:developer';
import 'package:new_todo/model/task.dart';
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

  Future<Database> initialize() async {
    String path = await getDatabasesPath();
    return await openDatabase(join(path, 'app.db'),
        version: 2,
        onCreate: createDB,
        onConfigure: _onConfigure,
        onUpgrade: onUpgrade);
  }

  Future createDB(Database db, int version) async {
    await db.execute("""
    CREATE TABLE user(
      "userId" INTEGER PRIMARY KEY NOT NULL,
      "email" TEXT NOT NULL,
      "username" TEXT NOT NULL,
      "password" TEXT NOT NULL
    )""");
  }

  // this is to permit the foreign key to work
  Future _onConfigure(Database db) async {
    await db.execute('PRAGMA foreign_keys = ON');
  }

  Future<void> onUpgrade(Database db, int oldVersion, int newVersion) async {
    if (oldVersion < 2) {
      // Perform database schema changes for version 2

      await db.execute("""
      CREATE TABLE todo (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        title TEXT NOT NULL,
        description TEXT NOT NULL,
        userId TEXT NOT NULL,
        FOREIGN KEY(userId)  REFERENCES user(userId) 
        )
      """);
    }
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
  Future<Users?> getUsers(String username) async {
    final Database db = await initialize();
    var res =
        await db.query("user", where: "username = ?", whereArgs: [username]);
    return res.isNotEmpty ? Users.fromMap(res.first) : null;
  }

  Future<int> updateUser(Users user) async {
    final Database db = await initialize();
    return db.update('user', user.toMap(),
        where: "username = ?", whereArgs: [user.username]);
  }

  //delete user
  Future<int> deletUser(String username) async {
    final db = await database;
    return db.delete('user', where: "username = ?", whereArgs: [username]);
  }

  //check if user exist,if duplication catch the exeption
  Future<bool> checkUserssExist(String username) async {
    final Database db = await initialize();
    final List<Map<String, dynamic>> res = await db.query("user",
        where: "username = ? AND email = ?", whereArgs: [username]);
    return res.isNotEmpty;
  }

  Future<bool> checkEmailExist(String email) async {
    final Database db = await initialize();
    final List<Map<String, dynamic>> res =
        await db.query("user", where: "email = ?", whereArgs: [email]);
    return res.isNotEmpty;
  }

  //inserting todo in database
  Future<Task> insertTodo(Task task) async {
    final Database db = await database;
    await db.insert('todo', task.toMap());

    return task;
  }

  //get todos
  Future<List<Task>> getTask(String username) async {
    final Database db = await database;
    final result =
        await db.query('todo', where: 'username = ?', whereArgs: [username]);

    return result.map((e) => Task.fromMap(e)).toList();
  }

  Future<Task> deleteTask(Task task) async {
    final Database db = await database;
    await db.delete('todo',
        where: '${task.title} = ? AND ${task.username} = ?',
        whereArgs: [task.title, task.username]);

    return task;
  }

  Future fetchTodoData() async {
    final db = await initialize();

    final queryResult = await db.query('todo');
    inspect(queryResult);
  }
}
