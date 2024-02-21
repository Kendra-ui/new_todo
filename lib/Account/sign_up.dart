// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:new_todo/Account/login.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:new_todo/Provider/todo_provider.dart';
import 'package:new_todo/navigation/navigationbar.dart';
import 'package:new_todo/provider/user_provider.dart';
import 'package:new_todo/service/data.dart';
import 'package:provider/provider.dart';

enum AuthMode { signUp, login }

class SignUp extends StatefulWidget {
  final String email;

  const SignUp({
    super.key,
    required this.email,
  });

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController email = TextEditingController();

  bool isVisible = false;

  //initialize the firestore object
  final firestore = FirebaseFirestore.instance;
  get data => null;
  final _formKey = GlobalKey<FormState>();
  late Dbservice databaseHelper;
  late UserProvider _userProvider;

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
                    'Create account',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height / 70,
              ),
              const Text(
                'Create an account and feel the benefits',
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
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 50,
                      ),
                      const Text(
                        'Password',
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
                              } else if (value.length <= 6) {
                                return 'Password must be of 8 digit';
                              }
                              return null;
                            },
                            controller: _password,
                            obscureText: isVisible,
                            decoration: InputDecoration(
                                labelText: "Enter your password",
                                labelStyle: const TextStyle(
                                    fontSize: 14, color: Color(0xFFA9B0C5)),
                                filled: true,
                                fillColor: const Color(0xFFF6F7F9),
                                enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide.none),
                                suffixIcon: IconButton(
                                  icon: Icon(isVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off),
                                  onPressed: () {
                                    setState(() {
                                      isVisible = !isVisible;
                                    });
                                  },
                                ))),
                      ),
                    ]),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
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
                        // All fields are filled, proceed with sign-up logic

                        await _userProvider.signUp(widget.email,
                            _username.text.trim(), _password.text.trim());
                        await _userProvider.getUser(_username.text.trim());
                        if (_userProvider.currentUser == null) {
                          //display an error message to the user in snack bar
                          return;
                        }
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                CustomNavigationBar(
                              username: _username.text,
                            ),
                          ),
                        );
                      }
                    },
                    child: const Text(
                      'Sign Up',
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
