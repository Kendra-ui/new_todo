import 'package:flutter/material.dart';
import 'package:new_todo/model/task.dart';
import 'package:new_todo/service/services.dart';
import 'package:sqflite/sqflite.dart';

class TodoProvider extends ChangeNotifier {
  List<Task> _task = [];
  List<Task> get task => _task;
  Services databaseService = Services();

  Database? database;

  Future<void> dataBaseInitialize() async {
    database = await databaseService.initialize();

    print(
        "++++++++++++++++++++++++++++++++++++++++ initialize database is ${database!.isOpen}");
    notifyListeners();
  }

  Future<String> getTask(
    String username,
  ) async {
    try {
      _task = await databaseService.getTask(username);
      print('good');
      notifyListeners();
    } catch (e) {
      return e.toString();
    }
    return 'OK';
  }

  // Future<String> deleteTask(Task task) async {
  //   try {
  //     await databaseService.deleteTask(task);
  //   } catch (e) {
  //     return e.toString();
  //   }
  //   String result = await getTask(task.username);
  //   return result;
  // }



  Future<Task?> addTask(
      String title, String description, String username) async {
    try {
      final task =
          Task(title: title, description: description,);
      await databaseService.insertTodo(task);
    } catch (e) {
      print('$e');
    }
    return null;
  }
}
