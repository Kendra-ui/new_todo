import 'package:flutter/material.dart';
import 'package:new_todo/model/task.dart';
import 'package:new_todo/model/user.dart';
import 'package:new_todo/service/dbServices.dart';
import 'package:sqflite/sqflite.dart';

class TodoProvider extends ChangeNotifier {
  List<Task> _task = [];
  List<Task> get task => _task;
  Dbservices databaseService = Dbservices();

  Database? database;

  Future<void> dataBaseInitialize() async {
    database = await databaseService.initialize();

    print(
        "++++++++++++++++++++++++++++++++++++++++ initialize database is ${database!.isOpen}");
    notifyListeners();
  }

  Future<String> getTask(Task task, String username) async {
    try {
      _task = await databaseService.getTask(task, username);
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

  Future<Task?> addTask(String title, String description, String username) async {
    try {
      // Create a task with the userId from the user object
      Task task = Task(
        title: title,
        description: description, 
        username: username,
      );

      // Insert the task for the specified user
      await databaseService.insertTodo(task);
      print('Task added for user');
    } catch (e) {
      print('Error adding task: $e');
    }
    return null;
  }
}
