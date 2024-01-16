// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:new_todo/service/databaseservice.dart';
import 'package:sqflite/sqflite.dart';

class UserProvider extends ChangeNotifier {
  final DatabaseService dataBaseService = DatabaseService();

  Database? database;

  Future<void> dataBaseInitialize() async {
    database = await dataBaseService.initialize();

    print(
        "++++++++++++++++++++++++++++++++++++++++ initialize database is ${database!.isOpen}");
    notifyListeners();
  }

  Future<bool> signUp(String email, String username, String password) async {
    int id = await dataBaseService.createTable(database!,
        {'email': email, 'username': username, 'password': password});

    if (id == 0) {
      await updateUser(email);
      return false;
    }

    return true;
  }

  Future addUserIfNotExists(String fullname, String email, String password) async{
    final isPresent = await dataBaseService.addUserIfNotExists(database!, fullname, email, password);

    if (isPresent != null) {
      await updateUser(email);
      return true;
    }
    return false;
  }

  Map<String, dynamic>? currentUser; // Holds the user's information

  // Update the current user's information in the provider
  Future<void> updateUser(String email) async {
    try {
      currentUser = await dataBaseService.getUser(database!, email);
      notifyListeners();
    } catch (e) {
      print('Error fetching user information: $e');
      // You might want to handle the error in an appropriate way
    }
  }
}
