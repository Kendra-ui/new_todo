import 'dart:async';

import 'package:flutter/material.dart';
import 'package:new_todo/onboarding/splash3.dart';

class Splash2 extends StatefulWidget {
  const Splash2({super.key});

  @override
  State<Splash2> createState() => _Splash2State();
}

class _Splash2State extends State<Splash2> {

  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds:  2), ()=>
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>  const Splash3())));
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
            padding:  EdgeInsets.only(top:30, left:350.0),
            child:  Text('Skip', textAlign: TextAlign.right, style: TextStyle(color: Color(0xFF24A19C), fontWeight: FontWeight.bold, fontSize: 16),),
          ),
          SizedBox(height: MediaQuery.of(context).size.height/70,),

         Stack(
          children:<Widget>[
            
              Center(
                child: Image.asset('assets/images/Innerframe.png',height:459,)),
             
                Positioned.fill(
                child:  Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height/4.4,
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
                                     const Text('Find the practicality in making your todo list',textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),),
                                    SizedBox(
                                      width:MediaQuery.of(context).size.width/1.2,
                                      child: const Text('Easy-to-understand user interface that makes you more comfortable when you want to create a task or to do list, Todyapp can also improve productivity',textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 14),)),
                      
                                ],
                              ),
                    ),
                  ),
                ) ),
                Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:30,left:200.0),
                  child: Image.asset('assets/images/217.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(right:200.0, top: 1),
                  child: Image.asset('assets/images/218.png'),
                )
              ],
            )
      

         ] ),
        SizedBox(height: MediaQuery.of(context).size.height/25,),
        Image.asset('assets/images/SliderPage2.png'),

        SizedBox(height: MediaQuery.of(context).size.height/10,),

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