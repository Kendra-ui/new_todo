import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:new_todo/model/user.dart';
import 'package:new_todo/service/databaseservice.dart';
import 'package:sqflite/sqflite.dart';

class UserProvider extends ChangeNotifier {
  final DatabaseService databaseService = DatabaseService();

  Database? database;

  Future<void> databaseInitialize() async {
    database = await databaseService.initialize();

    print('++++ initialiized');
    notifyListeners();
  }
}
