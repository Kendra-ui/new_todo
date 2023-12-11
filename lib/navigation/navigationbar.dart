import 'package:flutter/material.dart';
import 'package:new_todo/navigation/add_task.dart';
import 'package:new_todo/navigation/filter.dart';
import 'package:new_todo/navigation/inbox.dart';
import 'package:new_todo/navigation/project.dart';


// ignore: camel_case_types, must_be_immutable
class NavigationBar extends StatefulWidget {
     

   const NavigationBar({super.key});

      @override
  State<NavigationBar> createState()  => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
   

  int _currentIndex = 0;
  late final List<Widget> screen = [

    const Filter( ),
    const Inbox(),
    const Project(),
    const AddTask(),
    
  ];
  

  void onTappedBar(int index)
  {
    setState(() {

      _currentIndex = index;
    });
  
  }
  

  @override
  Widget build(BuildContext context) {
    // List<Widget> screens=[
    //   Container(child:  Center(
    //     child: Text("hellooooo"),
    //   ),),
    //    Container(child:  Center(child: Text("hiiiii")),)
    // ];
    return  Scaffold(
      backgroundColor: Colors.transparent,
      body:screen[_currentIndex],
      
          

         bottomNavigationBar: BottomNavigationBar(
          onTap:(val){

            setState(() {
              _currentIndex = val;
            });

          },
          currentIndex: _currentIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: Colors.transparent,
          items:  const [
             BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Color.fromARGB(255, 99, 12, 238),),
              label: (''),
              ),

              BottomNavigationBarItem(
              icon: Icon(Icons.list, color: Color.fromARGB(255, 99, 12, 238)),
              label: (''),
              ),

              BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month, color:Color.fromARGB(255, 99, 12, 238)),
              label: (''),
              ),

              BottomNavigationBarItem(
              icon: Icon(Icons.settings, color: Color.fromARGB(255, 99, 12, 238),),
              label: (''),
              ),
              
          ],
          
        )
      
        );

  }}