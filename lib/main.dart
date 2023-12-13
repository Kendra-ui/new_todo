import 'package:flutter/material.dart';
import 'package:new_todo/Account/password.dart';
import 'package:new_todo/Widget/calendar.dart';
import 'package:new_todo/homepage.dart';
import 'package:new_todo/navigation/add_task.dart';
import 'package:new_todo/Menu/appicon.dart';
import 'package:new_todo/Menu/helpcenter.dart';
import 'package:new_todo/Menu/productivity.dart';
import 'package:new_todo/Menu/settings.dart';
import 'package:new_todo/navigation/filter.dart';
import 'package:new_todo/navigation/inbox.dart';
import 'package:new_todo/navigation/navigationbar.dart';
import 'package:new_todo/navigation/project.dart';
import 'package:new_todo/splash_screen.dart';


void main()  {

  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget{
    const MyApp({super.key});
  

  @override
  State<MyApp> createState() => _MyAppState();
  }
  
  class _MyAppState extends State<MyApp> {

    

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
       
          home: const CustomNavigationBar()
        );
      
  
  }



}


 
