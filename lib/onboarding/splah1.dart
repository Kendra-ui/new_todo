import 'dart:async';

import 'package:flutter/material.dart';
import 'package:new_todo/onboarding/splash2.dart';

class Splash1 extends StatefulWidget {
  const Splash1({super.key});

  @override
  State<Splash1> createState() => _Splash1State();
}

class _Splash1State extends State<Splash1> {

  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds:  2), ()=>
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>  const Splash2())));
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child:  Column(
        children: [
          const Padding(
            padding:  EdgeInsets.only(top:20, left:350.0),
            child:  Text('Skip', textAlign: TextAlign.right, style: TextStyle(color: Color(0xFF24A19C), fontWeight: FontWeight.bold, fontSize: 16),),
          ),
          SizedBox(height: MediaQuery.of(context).size.height/30,),

         Stack(
          children:<Widget>[
            
              Center(
                child: Image.asset('assets/images/Iphone.png',height:400 ,)),
             
                Positioned.fill(
                child:  Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: MediaQuery.of(context).size.height/5.2,
                    width: MediaQuery.of(context).size.width/1.5,
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          blurRadius: 15,
                          blurStyle: BlurStyle.normal,
                        )
                      ]
                    ),
                    child: Column(
                              children: [
                                   const Text('Your convenience in making a todo list',textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),),
                                  SizedBox(
                                    width:MediaQuery.of(context).size.width/1.2,
                                    child: const Text('Here\'s a mobile platform that helps you create task or to list so that it can help you in every job easier and faster',textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 14),)),
                    
                              ],
                            ),
                  ),
                ) ),
                Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:30,left:200.0),
                  child: Image.asset('assets/images/Frame215.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(right:200.0, bottom: 80),
                  child: Image.asset('assets/images/Frame216.png'),
                )
              ],
            )
      

         ] ),
        SizedBox(height: MediaQuery.of(context).size.height/25,),
        Image.asset('assets/images/newSlider.png'),

        SizedBox(height: MediaQuery.of(context).size.height/9,),

        Container(
          width: MediaQuery.of(context).size.width/1.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3)
          ),
          child: ElevatedButton(
            style:  ButtonStyle(
              backgroundColor: const MaterialStatePropertyAll(Color(0xFF24A19C)),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ))
            ),
            onPressed: (){}, 
            child: const Text('Continue',textAlign: TextAlign.center, style: TextStyle(color: Colors.white),)),
        )
        ],
      ),
      ),
    );
  }
}