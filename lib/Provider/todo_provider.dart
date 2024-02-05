// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:new_todo/model/task.dart';
import 'package:new_todo/service/servicedata.dart';
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

  Future getTask( String username) async {
    try {
      _task = await databaseService.getTask( username);
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

  Future addTask(Task task, String username) async {
    try {
      await databaseService.insertTodo(task);
    } catch (e) {
      return e.toString();
    }
    String result = await getTask(username);
    return result;
  }


}
