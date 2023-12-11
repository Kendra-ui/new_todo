import 'package:flutter/material.dart';
import 'package:new_todo/Account/password.dart';
import 'package:new_todo/navigation/add_task.dart';
import 'package:new_todo/Menu/appicon.dart';
import 'package:new_todo/Menu/helpcenter.dart';
import 'package:new_todo/Menu/productivity.dart';
import 'package:new_todo/Menu/settings.dart';
import 'package:new_todo/navigation/filter.dart';
import 'package:new_todo/navigation/inbox.dart';
import 'package:new_todo/navigation/project.dart';
import 'package:new_todo/splash_screen.dart';


void main()  {
  
  runApp(const MyApp());
}

class MyApp extends StatefulWidget{
    const MyApp({super.key});
  

  @override
  State<MyApp> createState() => _MyAppState();
  }
  
  class _MyAppState extends State<MyApp> {

    

@override
  void initState() {
     WidgetsFlutterBinding.ensureInitialized();
   
    super.initState();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return
        MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
          
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
       
          home: const Password()
        );
      
  
  }



}


  class Homepage extends StatefulWidget{
    const Homepage({super.key});



  @override
  State<Homepage> createState() => _HomepageState();
  }
  
  class _HomepageState extends State<Homepage> with WidgetsBindingObserver{
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

    Widget selectedScreen = const Inbox(); // Default screen if index doesn't match

    switch (_currentIndex) {
      case 0:
        selectedScreen = const Filter();
        break;
      case 1:
        selectedScreen = const Inbox();
        break;
      case 2:
        selectedScreen = const Project();
        break;
      case 3:
        selectedScreen = const AddTask();
    }
    return   Scaffold(
       backgroundColor: Colors.black,
      body:selectedScreen,
      
          

         bottomNavigationBar: BottomNavigationBar(
          onTap:(val){

            setState(() {
              _currentIndex = val;
            });

          },
          currentIndex: _currentIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: Colors.black,
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
      
  }
  }
