// ignore_for_file: avoid_print, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:new_todo/Account/login.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:new_todo/Provider/todo_provider.dart';
import 'package:new_todo/model/user.dart';
import 'package:new_todo/navigation/navigationbar.dart';
import 'package:new_todo/provider/user_provider.dart';
import 'package:new_todo/service/data.dart';
import 'package:provider/provider.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController _username = TextEditingController();

  bool isVisible = false;
  bool isUserExist = false;
  bool isLogin = false;

  //initialize the firestore object
  final firestore = FirebaseFirestore.instance;
  get data => null;
  final _formKey = GlobalKey<FormState>();
  late Dbservice databaseHelper;
  late UserProvider _userProvider;
  late TodoProvider _todoProvider;

  @override
  void initState() {
    super.initState();
    databaseHelper = Dbservice();
    // Initialize the database
    databaseHelper.initialize();
    Dbservice().fetchData();
    Dbservice().fetchTodoData();
  }

  @override
  Widget build(BuildContext context) {
    _userProvider = context.watch<UserProvider>();
    _todoProvider = context.watch<TodoProvider>();
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 7,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => const Login()));
                  },
                  child: const Text(
                    'Welcome Back!',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height / 70,
              ),
              const Text(
                'Your work faster and structured with Todyapp',
                style: TextStyle(color: Colors.black, fontSize: 14),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              Form(
                key: _formKey,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Username',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 50,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 13,
                        width: MediaQuery.of(context).size.width / 1.4,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 0.5,
                                color:
                                    const Color.fromARGB(255, 213, 220, 241)),
                            borderRadius: BorderRadius.circular(5)),
                        child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter text';
                              } else if (value.length < 3) {
                                return 'Name must be more than 2 charater';
                              }
                              return null;
                            },
                            controller: _username,
                            decoration: const InputDecoration(
                              labelText: "Enter your username",
                              labelStyle: TextStyle(
                                  fontSize: 14, color: Color(0xFFA9B0C5)),
                              filled: true,
                              fillColor: Color(0xFFF6F7F9),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                            )),
                      ),
                    ]),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 5,
              ),
              isLogin
                  ? const Text(
                      "Username incorrect!",
                      style: TextStyle(color: Colors.red),
                    )
                  : const SizedBox(),
              SizedBox(
                height: MediaQuery.of(context).size.height / 3.5,
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.5,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(3)),
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            const MaterialStatePropertyAll(Color(0xFF24A19C)),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)))),
                    onPressed: () async {
                      FocusManager.instance.primaryFocus?.unfocus();
                      if (_formKey.currentState!.validate()) {
                        bool userExist =
                            await _userProvider.checkUserExist(_username.text);

                        if (userExist) {
                          await _userProvider.signIn(_username.text.trim());
                          await _userProvider.getUser(_username.text.trim());

                          Users? currentUser =
                              context.read<UserProvider>().currentUser;

                          // ignore: unnecessary_null_comparison
                          if (currentUser != null) {
                            String username = currentUser.username;
                            await _todoProvider.getTask(username);

                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('Successfully signed in')),
                            );

                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    CustomNavigationBar(
                                  username: username,
                                ),
                              ),
                            );
                          } else {
                            // Handle case where currentUser is null
                          }
                        } else {
                          setState(() {
                            isUserExist = false;
                            isLogin = true;
                          });
                        }
                      }
                    },
                    child: const Text(
                      'Sign In',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
