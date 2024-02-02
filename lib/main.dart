import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:new_todo/Mode/apptheme.dart';
import 'package:new_todo/Provider/todo_provider.dart';
import 'package:new_todo/homepage.dart';
import 'package:new_todo/provider/user_provider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  static Future<void> setThemeLight(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isDarkMode', false);
    // Trigger a rebuild of the UI with the updated theme
    Provider.of<ThemeNotifier>(context, listen: false)
        .setThemeMode(ThemeMode.light);
  }

  static void setThemeDark(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isDarkMode', true);
    // Trigger a rebuild of the UI with the updated theme
    Provider.of<ThemeNotifier>(context, listen: false)
        .setThemeMode(ThemeMode.dark);
  }

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => UserProvider()),
          ChangeNotifierProvider(create: (context) => TodoProvider())
        ],
        child: MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: ThemeData.light(), // Set your light theme here
            darkTheme: ThemeData.dark(), // Set your dark theme here
            themeMode: ThemeMode.system, //
            home: const Home()));
  }
}
