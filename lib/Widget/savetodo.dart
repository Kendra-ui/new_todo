// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:new_todo/Provider/todo_provider.dart';
import 'package:new_todo/Provider/user_provider.dart';
import 'package:new_todo/model/task.dart';
import 'package:new_todo/navigation/navigationbar.dart';
import 'package:provider/provider.dart';

class SaveTodo extends StatefulWidget {
  const SaveTodo({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SaveTodoState createState() => _SaveTodoState();
}

class _SaveTodoState extends State<SaveTodo> {
  late UserProvider _userprovider;
  final TextEditingController _title = TextEditingController();
  final TextEditingController _description = TextEditingController();

  @override
  void initState() {
    super.initState();
    _userprovider = Provider.of<UserProvider>(context, listen: false);
  }

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
                            MaterialStateProperty.all(Color(0xFF24A19C)),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          // Check if the current user is null
                          if (context.read<UserProvider>().currentUser ==
                              null) {
                            // Handle the case where the current user is null (e.g., show an error message)
                            return;
                          }

                          // Create a Task object with the current user's username
                          Task task = Task(
                            title: _title.text.trim(),
                            description: _description.text.trim(),
                            username: context
                                .read<UserProvider>()
                                .currentUser!
                                .username, // Access the username of the current user
                          );

                          // Check if the task already exists in the database (assuming Task.equals() method is correctly implemented)
                          if (context
                              .read<TodoProvider>()
                              .task
                              .contains(task)) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Duplicate value')),
                            );
                          } else {
                            // Add the task to the database using the TodoProvider
                            String result = await context
                                .read<TodoProvider>()
                                .addTask(
                                    task,
                                    context
                                            .read<UserProvider>()
                                            .currentUser!
                                            .username
                                        as int); // Assuming currentUser has an 'id' property
                            if (result == 'OK') {
                              // Show a success message if the task is added successfully
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('New task added')),
                              );
                              // Clear the text fields after adding the task
                              _title.clear();
                              _description.clear();
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const CustomNavigationBar(),
                                ),
                              );
                            } else {
                              // Show an error message if adding the task fails
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
