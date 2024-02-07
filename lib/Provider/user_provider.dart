// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:new_todo/model/user.dart';
import 'package:new_todo/service/servicedata.dart';
import 'package:sqflite/sqflite.dart';

class UserProvider extends ChangeNotifier {
  final Dbservices _databaseService = Dbservices();

  Users? _currentUser;
  Users? get currentUser => _currentUser;

  Database? database;

  Future<void> dataBaseInitialize() async {
    database = await _databaseService.initialize();

    print(
        "++++++++++++++++++++++++++++++++++++++++ initialize database is ${database!.isOpen}");
    notifyListeners();
  }

  Future<void> signUp(String email, String username, String password) async {
    final user = Users(email: email, username: username, password: password);
    print('user added successfully');
     await _databaseService.signup(user);
     await getUser(username);
  }

  Future<bool> signIn(String username, String password) async {
    final user = Users(username: username, password: password, email: '');
    return await _databaseService.signin(user);
  }

  Future<void> getUser(String username) async {
    try {
      _currentUser = await _databaseService.getUsers(username);
      print('done');
      notifyListeners();
    } catch (e) {
      print('$e');
    }
  }

  Future<bool> checkUserExist(String username) async {
    return await _databaseService.checkUserssExist(
      username,
    );
  }

  Future<bool> checkEmailExist(String email) async {
    return await _databaseService.checkEmailExist(email);
  }

  // Example of notifying listeners when user data is updated
  Future<void> updateUserData(String username) async {
    if (_currentUser == null) {
      return;
    }
    try {
      await _databaseService.updateUser(_currentUser!);
      await getUser(username);
    } catch (e) {
    }
  }
}
