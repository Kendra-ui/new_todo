import 'package:flutter/material.dart';
import 'package:new_todo/Widget/todo_list.dart';
import 'package:new_todo/navigation/navigationbar.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
            Column(
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
                      controller: email,
                      decoration: const InputDecoration(
                        labelText: "name@example.com",
                        labelStyle:
                            TextStyle(fontSize: 14, color: Color(0xFFA9B0C5)),
                        filled: true,
                        fillColor: Color(0xFFF6F7F9),
                        enabledBorder:
                            OutlineInputBorder(borderSide: BorderSide.none),
                      )),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 2,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.5,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(3)),
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          const MaterialStatePropertyAll(Color(0xFF24A19C)),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)))),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => const Todo()));
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
    );
  }
}
