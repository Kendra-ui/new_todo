import 'package:flutter/material.dart';
import 'package:new_todo/Provider/todo_provider.dart';
import 'package:new_todo/Provider/user_provider.dart';
import 'package:new_todo/model/task.dart';
import 'package:new_todo/navigation/navigationbar.dart';
import 'package:provider/provider.dart';

class SaveTodo extends StatefulWidget {
  const SaveTodo({super.key});

  @override
  State<SaveTodo> createState() => _SaveTodoState();
}

class _SaveTodoState extends State<SaveTodo> {
  final TextEditingController _title = TextEditingController();
  final TextEditingController _description = TextEditingController();
  final TextEditingController username = TextEditingController();
  late UserProvider _userprovider;

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    _userprovider = context.watch<UserProvider>();

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(color: Colors.white),
              child: Form(
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
                            labelText: "eg: Meeting with client",
                            labelStyle: TextStyle(
                                fontSize: 14, color: Color(0xFFA9B0C5)),
                            enabledBorder:
                                OutlineInputBorder(borderSide: BorderSide.none),
                          )),
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
                          controller: _description,
                          decoration: const InputDecoration(
                            labelText: "Description",
                            labelStyle: TextStyle(
                                fontSize: 14, color: Color(0xFFA9B0C5)),
                            enabledBorder:
                                OutlineInputBorder(borderSide: BorderSide.none),
                          )),
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
                            backgroundColor: const MaterialStatePropertyAll(
                                Color(0xFF24A19C)),
                            shape:
                                MaterialStatePropertyAll(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                          ),
                          onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                              Task task = Task(
                                  title: _title.text.trim(),
                                  description: _description.text.trim(),
                                  username:
                                      _userprovider.currentUser!.username);
                              if (context
                                  .read<TodoProvider>()
                                  .task
                                  .contains(task)) {
                                const SnackBar(
                                  content: Text('Duplicate value'),
                                );
                              } else {
                                String result =
                                    await context.read<TodoProvider>().addTask(
                                        task,
                                        //chnage it
                                        _userprovider.currentUser as int);
                                if (result == 'OK') {
                                  const SnackBar(
                                    content: Text('New task added'),
                                  );
                                  _title.text = '';
                                  _description.text = '';
                                  Navigator.of(context)
                                      .pushReplacement(MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        const CustomNavigationBar(),
                                  ));
                                } else {
                                  SnackBar(
                                    content: Text(result),
                                  );
                                }
                              }
                            }
                          },
                          child: const Text(
                            'Save ',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
