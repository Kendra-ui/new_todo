import 'package:flutter/material.dart';
import 'package:new_todo/Widget/calendar.dart';
import 'package:new_todo/navigation/add_task.dart';
import 'package:new_todo/navigation/filter.dart';
import 'package:new_todo/navigation/inbox.dart';
import 'package:new_todo/navigation/project.dart';


// ignore: camel_case_types, must_be_immutable
class CustomNavigationBar extends StatefulWidget {
     

   const CustomNavigationBar({super.key});

      @override
  State<CustomNavigationBar> createState()  => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
   
int _currentIndex = 0;
  final List<Widget> screen = [

    const AddTask(),
    const Inbox(),
    const Calendar( ),
    const Filter( ),
    const Project(),  
  ];


  void onTappedBar(int index)
  {
    setState(() {
      _currentIndex = index;      
    });
  }

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
       backgroundColor: Colors.black,
       body:screen[_currentIndex],

         bottomNavigationBar:  Theme(
          data: Theme.of(context).copyWith(
            canvasColor:  Colors.white,
          ),
           child: BottomNavigationBar(
            onTap: onTappedBar,
            currentIndex: _currentIndex,
            showSelectedLabels: false,
            selectedItemColor: const Color(0xFF24A19C),
            items:  const [
               BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.grey,),
                label: (''),
                ),
         
                BottomNavigationBarItem(
                icon: Icon(Icons.inbox, color: Colors.grey),
                label: (''),
                ),
         
                BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month, color:Colors.grey),
                label: (''),
                ),
         
                BottomNavigationBarItem(
                icon: Icon(Icons.category, color: Colors.grey),
                label: (''),
                ),
         
                BottomNavigationBarItem(
                icon: Icon(Icons.add_box_sharp, color: Colors.grey),
                label: (''),
                ),
                
            ],
            
                 ),
         )
    );

  }}