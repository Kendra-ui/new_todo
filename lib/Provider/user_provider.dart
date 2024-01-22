import 'package:flutter/material.dart';
import 'package:new_todo/model/user.dart';
import 'package:new_todo/service/databaseservice.dart';

class UserProvider extends ChangeNotifier {
  final DatabaseService _databaseService = DatabaseService();

  Future<int> signUp(String email, String username, String password) async {
    final user = Users(email: email, username: username, password: password);
    return await _databaseService.signup(user);
  }

  Future<bool> signIn(String username, String password) async {
    final user = Users(username: username, password: password, email: '');
    return await _databaseService.signin(user);
  }

  Future<Users?> getUser(String username) async {
    return await _databaseService.getUserss(username);
  }

  Future<bool> checkUserExist(String username) async {
    return await _databaseService.checkUserssExist(username);
  }

  Future<bool> checkEmailExist(String email) async {
    return await _databaseService.checkEmailExist(email);
  }


  // Example of notifying listeners when user data is updated
  Future<void> updateUserData(String username) async {
    notifyListeners();
  }
}
