import 'package:flutter/material.dart';
import 'package:new_todo/navigation/project.dart';
import 'package:new_todo/onboarding/splah1.dart';
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
       
          home: const Splashscreen()
        );
      
  
  }



}


 
