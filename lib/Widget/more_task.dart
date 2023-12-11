import 'dart:async';

import 'package:flutter/material.dart';
import 'package:new_todo/navigation/inbox.dart';

class MoreTask extends StatefulWidget {
  const MoreTask({super.key});

  @override
  State<MoreTask> createState() => _MoreTaskState();
}

class _MoreTaskState extends State<MoreTask> {

   @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds:  2), ()=>
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>  const Inbox())));
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left:20.0),
          child: Column(
            children: [
            SizedBox(height: MediaQuery.of(context).size.height/10,),
        

               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
              const SizedBox(
              child:  Icon(Icons.arrow_back_ios, color: Colors.black, size: 20,)),
              
              SizedBox(height: MediaQuery.of(context).size.height/20,),
        
                   SizedBox(
                     width: MediaQuery.of(context).size.width/1.5,
                     child: const Text('Create more than 1000 project tasks', style: TextStyle(fontSize:24, fontWeight: FontWeight.bold),)),

                                      SizedBox(height: MediaQuery.of(context).size.height/60,),

                 SizedBox(
                  width: MediaQuery.of(context).size.width/1.1,
                  child: const Text(
                    'Upgrade to premium users to get things about premium features that you can enjoy only with pay for one year or one month subscription.'
                  ),
                 ),
                 ],
               ),


                 SizedBox(height: MediaQuery.of(context).size.height/50,),

                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height/5,
                      width: MediaQuery.of(context).size.width/2.3,
                      decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white
                         ),
                         child: ElevatedButton(
                          
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.white),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7)
                            )
                            )
                          ),
                          onPressed: (){},
                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: MediaQuery.of(context).size.height/50,),

                              const Text('Annual Package', style: TextStyle(fontSize: 12, color: Colors.black),),
                              
                              SizedBox(height: MediaQuery.of(context).size.height/40,),

                              const Text('35.00', style: TextStyle(fontSize: 24, color: Colors.black),),
                              
                             SizedBox(height: MediaQuery.of(context).size.height/300,),

                              const Text('Find and feel a year access premium on Todyapp', style: TextStyle(fontSize: 11, color: Colors.black),),


                            ],
                          ) ),
                    ),
                    

                     Container(
                      height: MediaQuery.of(context).size.height/5,
                      width: MediaQuery.of(context).size.width/2.3,
                      decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white
                         ),
                         child: ElevatedButton(
                          
                          style: ButtonStyle(
                            backgroundColor: const MaterialStatePropertyAll(Colors.white),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7)
                            )
                            )
                          ),
                          
                          onPressed: (){},
                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: MediaQuery.of(context).size.height/50,),

                              const Text('Monthly Package', style: TextStyle(fontSize: 12, color: Colors.black),),
                              
                              SizedBox(height: MediaQuery.of(context).size.height/40,),

                              const Text('5.00', style: TextStyle(fontSize: 24, color: Colors.black),),
                              
                             SizedBox(height: MediaQuery.of(context).size.height/300,),

                              const Text('The more affordable premim one month', style: TextStyle(fontSize: 11, color: Colors.black),),


                            ],
                          ) ),
                    )
                  ],
                 ),

    SizedBox(height: MediaQuery.of(context).size.height/3.3 ,),

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
          ]),
        ),
      ),
    );
  }
}