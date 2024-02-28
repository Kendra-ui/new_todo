// ignore_for_file: use_build_context_synchronously, avoid_print

import 'package:flutter/material.dart';
import 'package:new_todo/Provider/todo_provider.dart';
import 'package:new_todo/Provider/user_provider.dart';
import 'package:new_todo/model/task.dart';
import 'package:new_todo/navigation/inbox.dart';
import 'package:new_todo/navigation/navigationbar.dart';
import 'package:provider/provider.dart';

class SaveTodo extends StatefulWidget {
  final String username;
  const SaveTodo({Key? key, required this.username}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SaveTodoState createState() => _SaveTodoState();
}

class _SaveTodoState extends State<SaveTodo> {
  final TextEditingController _title = TextEditingController();
  final TextEditingController _description = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 13,
            ),
            const Center(
              child: Text(
                "Create a new Task",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1.1,
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Fill the space";
                        }
                        return null;
                      },
                      controller: _title,
                      decoration: const InputDecoration(
                        labelText: "Title",
                        labelStyle:
                            TextStyle(fontSize: 16, color: Color(0xFFA9B0C5)),
                        enabledBorder:
                            OutlineInputBorder(borderSide: BorderSide.none),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 180,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1.1,
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'fill the space';
                        }
                        return null;
                      },
                      maxLines: 5,
                      controller: _description,
                      decoration: const InputDecoration(
                        labelText: "Description",
                        labelStyle:
                            TextStyle(fontSize: 16, color: Color(0xFFA9B0C5)),
                        enabledBorder:
                            OutlineInputBorder(borderSide: BorderSide.none),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 50,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 1.3,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(3)),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xFF24A19C)),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          // String username =
                          //     context.read<UserProvider>().currentUser.username;
                          // print('hello $username');

                          Task task = Task(
                              title: _title.text.trim(),
                              description: _description.text.trim(),
                              username: 'username');
                          //DateTime dateTime = DateTime.now();

                          if (context
                              .read<TodoProvider>()
                              .task
                              .contains(task)) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Duplicate value')),
                            );
                          } else {
                            String result = await context
                                .read<TodoProvider>()
                                .addTask(task, 'username');

                            if (result == 'OK') {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                    content:
                                        Text('New task added for username')),
                              );
                              // Clear the text fields after adding the task
                              _title.clear();
                              _description.clear();
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (BuildContext context) => Inbox(
                                        title: _title.text,
                                        username: widget.username)),
                              );
                            } else {
                              //     // Show an error message if adding the task fails
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text(result)),
                              );
                            }
                          }
                        }
                      },
                      child: const Text(
                        'Save ',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
