import 'package:flutter/material.dart';
import 'package:new_todo/Account/sign_up.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:new_todo/service/databaseservice.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  final firestore = FirebaseFirestore.instance;
  get data => null;

  late DatabaseService databaseHelper;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 7,
              ),
              const Text(
                'Welcome Back!',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
              ),
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
                      'Email Address',
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
                              color: const Color.fromARGB(255, 213, 220, 241)),
                          borderRadius: BorderRadius.circular(5)),
                      child: TextFormField(
                          validator: (value) {
                            String pattern =
                                r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                            RegExp regex = RegExp(pattern);
                            if (!regex.hasMatch(value!)) {
                              return 'Enter Valid Email';
                            } else if (value.isEmpty) {
                              return 'Please enter text';
                            }
                            return null;
                          },
                          controller: email,
                          decoration: const InputDecoration(
                            labelText: "name@example.com",
                            labelStyle: TextStyle(
                                fontSize: 14, color: Color(0xFFA9B0C5)),
                            filled: true,
                            fillColor: Color(0xFFF6F7F9),
                            enabledBorder:
                                OutlineInputBorder(borderSide: BorderSide.none),
                          )),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              // isEmailExist
              //     ? const Text(
              //         'Email already exist',
              //         style: TextStyle(color: Colors.red),
              //       )
              //     : const SizedBox(),
              SizedBox(
                height: MediaQuery.of(context).size.height / 2,
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
                      if (_formKey.currentState!.validate()) {
                        
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                                  builder: (BuildContext context) => SignUp(
                                        email: email.text,
                                      )));
                        
                      }
                    },
                    child: const Text(
                      'Next',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
