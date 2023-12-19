import 'package:flutter/material.dart';
import 'package:new_todo/Account/login.dart';
import 'package:new_todo/Account/password.dart';
import 'package:new_todo/Menu/appicon.dart';
import 'package:new_todo/Menu/helpcenter.dart';
import 'package:new_todo/Menu/productivity.dart';
import 'package:new_todo/Menu/theme.dart';
import 'package:new_todo/navigation/navigationbar.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {

    bool light = true;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height/10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width/10,
                  child: GestureDetector(
                    onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> const CustomNavigationBar()));

                    },
                    child: const Icon(Icons.arrow_back_ios_new,))),
                const Spacer(),
                const Text('Settings', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                const Spacer(),
                SizedBox(
                  width: MediaQuery.of(context).size.width/10,
                  child: const Icon(Icons.search, size: 25,)),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height/30,),

            Center(
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset('assets/images/portrait.png')),

                    SizedBox(height: MediaQuery.of(context).size.height/50,),

                    const Text('Kurama Musamba', style: TextStyle(fontWeight: FontWeight.bold)),

                    SizedBox(height: MediaQuery.of(context).size.height/70,),

                    const Text('@kuram1290', style: TextStyle(color: Color(0xFF767E8C)),)
                ]
              ),
            ),

            SizedBox(height: MediaQuery.of(context).size.height/70,),

             ListTile(
              leading: const Icon(Icons.person_2_outlined, color: Color(0xFF767E8C),),
              title: const Text('Account', style: TextStyle(color: Color(0xFF767E8C)),),
              trailing: GestureDetector(
                onTap: (){
                 Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=> const Password()));

                },
                child: const Icon(Icons.arrow_forward_ios, color: Color(0xFF767E8C), size: 17,)),
            ),


             ListTile(
              leading: Image.asset('assets/images/magicpen.png', color: const Color(0xFF767E8C),),
              title: const Text('Theme', style: TextStyle(color: Color(0xFF767E8C)),),
              trailing: GestureDetector(
                onTap: (){
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=> const Themes()));

                },
                child: const Icon(Icons.arrow_forward_ios, color: Color(0xFF767E8C), size: 17,)),
            ),


             ListTile(
              leading: Image.asset('assets/images/medalstar.png', color: const Color(0xFF767E8C),),
              title: const Text('App Icon', style: TextStyle(color: Color(0xFF767E8C)),),
              trailing: GestureDetector(
                onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=> const AppIcon()));

                },
                child: const Icon(Icons.arrow_forward_ios, color: Color(0xFF767E8C), size: 17,)),
            ),


             ListTile(
              leading: Image.asset('assets/images/weight.png', color: const Color(0xFF767E8C),),
              title: const Text('Productivity', style: TextStyle(color: Color(0xFF767E8C)),),
              trailing: GestureDetector(
                onTap:(){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=> const Productivity()));

                },
                child: const Icon(Icons.arrow_forward_ios, color: Color(0xFF767E8C), size: 17,)),
            ),


             ListTile(
              leading: const Icon(Icons.wb_sunny_outlined, color: Color(0xFF767E8C),),
              title: const Text('Change Mode', style: TextStyle(color: Color(0xFF767E8C)),),
              trailing:  Switch.adaptive(
            activeColor: Colors.white,
            activeTrackColor: const Color(0xFF24A19C),
          value: light,
          onChanged: (bool value) {
            setState(() {
              light = value;
            });
          },
                ),
            ),

            const Divider(endIndent: 20, indent: 20, color: Color(0xFF767E8C), thickness: 0.5,),

            const ListTile(
              leading: Icon(Icons.key_sharp, color: Color(0xFF767E8C),),
              title: Text('Privacy Policy', style: TextStyle(color: Color(0xFF767E8C)),),
              trailing: Icon(Icons.arrow_forward_ios, color: Color(0xFF767E8C), size: 17,),
            ),

             ListTile(
              leading: const Icon(Icons.messenger_outline_outlined, color: Color(0xFF767E8C),),
              title: const Text('Help Center', style: TextStyle(color: Color(0xFF767E8C)),),
              trailing: GestureDetector(
                onTap: (){
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=> const HelpCenter()));

                },
                child: const Icon(Icons.arrow_forward_ios, color: Color(0xFF767E8C), size: 17,)),
            ),

               ListTile(
              leading: const Icon(Icons.logout_outlined, color: Color(0xFF767E8C),),
              title: const Text('Log Out', style: TextStyle(color: Color(0xFF767E8C)),),
              trailing: GestureDetector(
                    onTap: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=> const Login()));

                    },
                    child: const Icon(Icons.arrow_forward_ios,color: Color(0xFF767E8C), size: 17,)),
                ),
          ],
        ),
      ),
    );
  }
}