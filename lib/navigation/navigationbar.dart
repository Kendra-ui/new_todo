import 'package:flutter/material.dart';
import 'package:new_todo/Widget/calendar.dart';
import 'package:new_todo/navigation/add_task.dart';
import 'package:new_todo/navigation/filter.dart';
import 'package:new_todo/navigation/inbox.dart';
import 'package:new_todo/navigation/project.dart';
import 'package:chat_gpt_sdk/chat_gpt_sdk.dart';
// import 'package:http/http.dart';

// ignore: camel_case_types, must_be_immutable
class CustomNavigationBar extends StatefulWidget {
  final String username;
  const CustomNavigationBar({super.key, required this.username});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int _currentIndex = 0;

  late OpenAI openAI;

  final List<Widget> screen = [
    const AddTask(
      username: 'widget.username',
    ),
    const Inbox(
      title: '',
      username: 'widget.username',
    ),
    const Calendar(),
    const Filter(),
    const Project(
      username: 'widget.username',
    ),
  ];

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: screen[_currentIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
        height: 60,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [BoxShadow(color: Colors.grey.shade300, blurRadius: 4)]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  _currentIndex = 0;
                });
              },
              icon: _currentIndex == 0
                  ? const Icon(
                      Icons.home_filled,
                      color: Color(0xFF24A19C),
                      size: 20,
                    )
                  : const Icon(
                      Icons.home_outlined,
                      color: Colors.grey,
                      size: 20,
                    ),
            ),
            IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    _currentIndex = 1;
                  });
                },
                icon: _currentIndex == 1
                    ? Image.asset(
                        'assets/images/inbox.png',
                        color: const Color(0xFF24A19C),
                      )
                    : Image.asset(
                        'assets/images/inbox.png',
                        color: Colors.grey,
                      )),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  _currentIndex = 2;
                });
              },
              icon: _currentIndex == 2
                  ? const Icon(
                      Icons.calendar_month,
                      color: Color(0xFF24A19C),
                      size: 20,
                    )
                  : const Icon(
                      Icons.calendar_month,
                      color: Colors.grey,
                      size: 20,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  _currentIndex = 3;
                });
              },
              icon: _currentIndex == 3
                  ? const Icon(
                      Icons.category,
                      color: Color(0xFF24A19C),
                      size: 20,
                    )
                  : const Icon(
                      Icons.category_outlined,
                      color: Colors.grey,
                      size: 20,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  _currentIndex = 4;
                });
              },
              icon: _currentIndex == 4
                  ? const Icon(
                      Icons.add_box,
                      color: Color(0xFF24A19C),
                      size: 20,
                    )
                  : const Icon(
                      Icons.add_box,
                      color: Colors.grey,
                      size: 20,
                    ),
            ),
          ],
        ));
  }
}
