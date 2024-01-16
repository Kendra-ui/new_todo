// ignore_for_file: avoid_print

import 'package:new_todo/service/database_interface.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseService implements DatabaseInterface {
  @override
  Future<Database> initialize() async {
    final databasePath = await getDatabasesPath();

    final path = join(databasePath, 'Signup.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
        CREATE TABLE Signup (
          userId INTEGER PRIMARY KEY,
          email TEXT NOT NULL,
          username TEXT NOT NULL,
          password TEXT NOT NULL,
          UNIQUE(email, username)
        )
''');
      },
    );
  }

  @override
  Future createTable(Database db, Map<String, Object?> column) async {
    int id = await db.insert(
      'Signup',
      column,
    );
    return id;
  }

  @override
  Future<Map<String, dynamic>?> getUser(Database database, String email) async {
    print('kkkk ${database.isOpen}');
    try {
      final user = await database.query(
        'Signup',
        where: 'email = ?',
        whereArgs: [email],
      );

      if (user.isNotEmpty) {
        return user.first;
        //print('yes');
      } else {
        print('false');
      }
    } catch (e) {
      print('Error fetching user: $e');
    }

    return null;
  }

  @override
  Future<Map<String, dynamic>?> fetchData(
      Database db, String email, String password) async {
    print('AAAAAAA ${db.isOpen}');

    try {
      final queryResult = await db.query('Signup',
          where: 'email = ?  AND password = ? ', whereArgs: [email, password]);
      if (queryResult.isNotEmpty) {
        return {
          'password': queryResult.first['password'],
        };
      }
    } catch (e) {
      print('$e');
    }
    print('AAAAAAA vvvvvvv${db.isOpen}');

    return null;

    //check if email exist
  }

  @override
  Future<bool> signIn(String email, String password) async {
    final Database db = await initialize();
    final emailAndPassword = await fetchData(db, email, password);

    if (emailAndPassword != null && emailAndPassword['password'] == password) {
      return true;
    }

    return false;
  }

  @override
  Future addUserIfNotExists(
      Database database, String fullname, String email, String password) async {
    try {
      // Check if the username or email already exists
      final isExisting = await checkIfUserExists(database, fullname, email);

      if (!isExisting) {
        // If the username or email doesn't exist, insert the new user data
        final userData = {
          'fullname': fullname,
          'email': email,
          'password': password,
        };

        final result = await createTable(database, userData);

        if (result != -1) {
          return true;
        } else {
          print('Username or email already exists!');
        }
      }
    } catch (e) {
      print('$e');
    }
  }

  Future<bool> checkIfUserExists(
      Database database, String fullname, String email) async {
    final List<Map<String, dynamic>> result = await database.rawQuery(
      'SELECT COUNT(*) AS count FROM Signup WHERE fullname = ? OR email = ?',
      [fullname, email],
    );

    final count = Sqflite.firstIntValue(result);
    return count != null && count > 0;
  }
}
