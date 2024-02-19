import 'package:flutter/material.dart';
import 'package:new_todo/Menu/settings.dart';
import 'package:new_todo/model/user.dart';
import 'package:new_todo/provider/user_provider.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

class Productivity extends StatefulWidget {
  final String username;
  const Productivity({super.key, required this.username});

  @override
  State<Productivity> createState() => _ProductivityState();
}

class _ProductivityState extends State<Productivity> {
  late UserProvider userProvider;
  DateTime now = DateTime.now();

  @override
  void initState() {
    super.initState();
    userProvider = Provider.of<UserProvider>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('dd MMM yyyy').format(now);
    userProvider = context.read<UserProvider>();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width / 10,
                    child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                       Settings(username: widget.username,)));
                        },
                        child: const Icon(
                          Icons.arrow_back_ios_new,
                        ))),
                const Spacer(),
                const Text(
                  'Productivity',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const Spacer(),
                SizedBox(
                    width: MediaQuery.of(context).size.width / 10,
                    child: const Icon(
                      Icons.search,
                      size: 25,
                    )),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 30,
            ),
            Center(
              child: Column(children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset('assets/images/portrait.png')),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),
                Consumer<UserProvider>(builder: (context, userProvider, child) {
                  Users currentUser = userProvider.currentUser!;
                  return Column(
                    children: [
                      Text(currentUser.username,
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 70,
                      ),
                      Text(
                        currentUser.email,
                        style: const TextStyle(color: Color(0xFF767E8C)),
                      )
                    ],
                  );
                }),
              ]),
            ),
            const Divider(
              color: Color(0xFF767E8C),
              thickness: 0.5,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 30,
              width: MediaQuery.of(context).size.width / 1.5,
              child: Row(
                children: [
                  const Icon(
                    Icons.calendar_month,
                    color: Color(0xFF767E8C),
                  ),
                  Text(
                    '  $formattedDate',
                    style: const TextStyle(color: Color(0xFF767E8C)),
                  ),
                  const Spacer(),
                  const VerticalDivider(
                    color: Color(0xFF767E8C),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.graphic_eq,
                    color: Color(0xFF767E8C),
                  ),
                  const Text(
                    ' My Request',
                    style: TextStyle(color: Color(0xFF767E8C)),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Color(0xFF767E8C),
              thickness: 0.5,
            ),
            const ListTile(
              leading: Text(
                'Report Progress',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Color(0xFF767E8C),
                size: 17,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.1,
              child: Row(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Set a goal',
                        style: TextStyle(color: Colors.black),
                      ),
                      Text.rich(TextSpan(children: [
                        TextSpan(
                            text: '28/20',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF24A19C),
                                fontSize: 17)),
                        TextSpan(
                            text: ' Task',
                            style: TextStyle(
                                fontSize: 13, color: Color(0xFF767E8C)))
                      ])),
                      Text(
                        'Finish your task now !',
                        style: TextStyle(color: Color(0xFF767E8C)),
                      )
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.3,
                  ),
                  const SizedBox(
                    width: 50,
                    height: 50,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Icon(Icons.star, color: Color(0xFF93D8D5)),
                        CircularProgressIndicator(
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Color(0xFF24A19C)),
                          strokeWidth: 3,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 300,
            ),
            const ListTile(
              leading: Text(
                'Static Goals',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Color(0xFF767E8C),
                size: 17,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 4.5,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.1,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(3)),
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        const MaterialStatePropertyAll(Color(0xFF24A19C)),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'More Statistics',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
