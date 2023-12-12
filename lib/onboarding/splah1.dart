import 'dart:async';

import 'package:flutter/material.dart';
import 'package:new_todo/onboarding/splash2.dart';

class Splash1 extends StatefulWidget {
  const Splash1({super.key});

  @override
  State<Splash1> createState() => _Splash1State();
}

class _Splash1State extends State<Splash1> {

 
  PageController pageController = PageController(initialPage: 0);
  int currentPosition = 0;
  bool loader = false;

  AnimatedContainer _buildDots({int? index}){
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration:  const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
        color: Color(0xFF24A19C)
      ),
      margin: const EdgeInsets.only(right: 5),
      height: 10,
      curve: Curves.easeIn,
      width: currentPosition == index ? 20 : 10,);
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height/50,),

           Container(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    pageController.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.linear);
                  },
                  child: const Text('Skip', textAlign: TextAlign.right, style: TextStyle(color: Color(0xFF24A19C), fontWeight: FontWeight.bold, fontSize: 16),)),
               ),

          Expanded(
            child: PageView.builder(
            controller: pageController,
            onPageChanged: (value) {
              setState(() {
                currentPosition = value;
              });
            },
            itemCount: 2,
            itemBuilder: (context, i) {
              if (i == 0) {
                return Column(
                children: [
                

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
                // SizedBox(height: MediaQuery.of(context).size.height/25,),
                // Image.asset('assets/images/newSlider.png'),
          
                // SizedBox(height: MediaQuery.of(context).size.height/9,),
          
                
                ],
              );
              } else if(i == 1){
                return Column(
                  children: [
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
                  ],
                );
              }
              
            },

     
              ),
          ),

         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: List.generate(2, 
           (index) => _buildDots(index: index))
         ),

SizedBox(height: MediaQuery.of(context).size.height/7,),
         
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
                  onPressed: (){
                    pageController.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.linear);
                  }, 
                  child: const Text('Continue',textAlign: TextAlign.center, style: TextStyle(color: Colors.white),)),
              ),
        ],
      ),
    );
  }
}