import 'package:sqflite/sqflite.dart';

abstract class DatabaseInterface {
  Future<Database?> initialize();
  Future createTable(Database database, Map<String, Object?> column);
  Future addUserIfNotExists(
      Database database, String fullname, String email, String password);
  Future getUser(Database db, String email);
  Future fetchData(Database db, String email, String password);
  Future signIn(String email, String password);
}
