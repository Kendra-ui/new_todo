import 'dart:async';

import 'package:flutter/material.dart';
import 'package:new_todo/navigation/filter.dart';

class Inbox extends StatefulWidget {
  const Inbox({super.key});

  @override
  State<Inbox> createState() => _InboxState();
}

class _InboxState extends State<Inbox> {

   @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds:  2), ()=>
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>  const Filter())));
  }
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(

          children: [
            SizedBox(height: MediaQuery.of(context).size.height/10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width/10,
                  child: const Icon(Icons.arrow_back_ios_new,)),
            SizedBox(width: MediaQuery.of(context).size.width/10,),

                const Text('Inbox', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
            SizedBox(width: MediaQuery.of(context).size.width/10,),

                SizedBox(
                  width: MediaQuery.of(context).size.width/10,
                  child: const Icon(Icons.search, size: 25,)),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height/30,),

          Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width/1.4,
              height: MediaQuery.of(context).size.height/5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 9,
                    blurStyle: BlurStyle.outer
                  )
                ],
              ),

              child: Column(children: [
                Container(
                height: MediaQuery.of(context).size.height/22,
                width: MediaQuery.of(context).size.width/1.4,
                decoration:  const BoxDecoration(
                  color: Color(0xFF24A19C),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(5), )
                ),
                child:  SizedBox(
                  width: MediaQuery.of(context).size.width/1.7,
                  child: Row(
                    children: [
                      const Icon(Icons.flag_outlined, color: Colors.white,),
                      const Text('Priority task 1', style: TextStyle(color: Colors.white),),
                      const Spacer(),
                      Image.asset('assets/images/dotted.png')
                    ],
                  ),
                ),
                ),

                Padding(
                padding: const EdgeInsets.only(top:20.0, left: 20),
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/18,
                        height: MediaQuery.of(context).size.height/28,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                            color: const Color(0xFF24A19C)
                          )
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                             width: MediaQuery.of(context).size.width/5,
                        height: MediaQuery.of(context).size.height/10,
                        decoration: BoxDecoration(
                          color: const Color(0xFF24A19C),
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                            color: const Color(0xFF24A19C)
                          )
                        ),
                          ),
                        )
                      ),


                      const Padding(
                        padding:  EdgeInsets.only(left:8.0),
                        child: Text('Masyla Website Project', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),),
                      )
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height/50,),

                const Divider(color: Colors.grey, thickness: 0.5, endIndent: 10,indent: 10,),

                SizedBox(height: MediaQuery.of(context).size.height/100,),

                SizedBox(
                  width: MediaQuery.of(context).size.width/1.5,
                  height: MediaQuery.of(context).size.height/40,
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.timer, color: Colors.red, size: 17,),
                      Text('08:30 PM', style: TextStyle(fontSize: 10, color: Colors.red,),),
                      Icon(Icons.message, color: Colors.grey, size: 17,),
                      Text('1', style: TextStyle(color: Colors.grey, fontSize: 10),),
                      Icon(Icons.add_box, color: Colors.grey, size: 17,),
                      Text('2', style: TextStyle(color: Colors.grey, fontSize: 10),),
                      Spacer(),
                      Text('Mon, 19 Jul 2022', style: TextStyle(color: Colors.grey),)
                    ],
                  ),
                ),
               
               
                
              ]),
            ),
             SizedBox(height: MediaQuery.of(context).size.height/30,),
 Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width/1.4,
              height: MediaQuery.of(context).size.height/5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 9,
                    blurStyle: BlurStyle.outer
                  )
                ],
              ),

              child: Column(children: [
                Container(
                height: MediaQuery.of(context).size.height/22,
                width: MediaQuery.of(context).size.width/1.4,
                decoration:  const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(5), )
                ),
                child:  Row(
                  children: [
                    const Icon(Icons.flag_outlined, color: Colors.white,),
                    const Text('Priority task 3', style: TextStyle(color: Colors.white),),
                    const Spacer(),
                    Image.asset('assets/images/dotted.png')
                  ],
                ),
                ),

                Padding(
                padding: const EdgeInsets.only(top:20.0, left: 20),
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/18,
                        height: MediaQuery.of(context).size.height/28,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                            color: const Color(0xFF24A19C)
                          )
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                             width: MediaQuery.of(context).size.width/5,
                        height: MediaQuery.of(context).size.height/10,
                        decoration: BoxDecoration(
                          color: const Color(0xFF24A19C),
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                            color: const Color(0xFF24A19C)
                          )
                        ),
                          ),
                        )
                      ),


                      const Padding(
                        padding:  EdgeInsets.only(left:8.0),
                        child: Text('Medical Design System', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),),
                      )
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height/50,),

                const Divider(color: Colors.grey, thickness: 0.5, endIndent: 10,indent: 10,),

                SizedBox(height: MediaQuery.of(context).size.height/100,),

                SizedBox(
                  width: MediaQuery.of(context).size.width/1.5,
                  height: MediaQuery.of(context).size.height/40,
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.timer, color: Colors.red, size: 17,),
                      Text('08:30 PM', style: TextStyle(fontSize: 10, color: Colors.red,),),
                      Icon(Icons.message, color: Colors.grey, size: 17,),
                      Text('1', style: TextStyle(color: Colors.grey, fontSize: 10),),
                      Icon(Icons.add_box, color: Colors.grey, size: 17,),
                      Text('2', style: TextStyle(color: Colors.grey, fontSize: 10),),
                      Spacer(),
                      Text('Mon, 19 Jul 2022', style: TextStyle(color: Colors.grey),)
                    ],
                  ),
                ),
             
               
                
              ]),
            ),
               SizedBox(height: MediaQuery.of(context).size.height/13,
               ),

               SizedBox(
                width: MediaQuery.of(context).size.width/1.3,
                 child: Align(
                  alignment: Alignment.centerRight,
                   child: SizedBox(
                           width: MediaQuery.of(context).size.width/9,
                           height: MediaQuery.of(context).size.height/15,
                           child: ElevatedButton(
                     onPressed: () { 
                      showModalBottomSheet(
                        //      isScrollControlled: true,
                        context: context, 
                        builder: (context) {
                          return SizedBox(
                            height: MediaQuery.of(context).size.height*4,
                            width: double.infinity,
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height*4,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: Column(
                                children: [
                                  SizedBox(height: MediaQuery.of(context).size.height/50,),
                                  Row(
                                    children: [
                                  SizedBox(width: MediaQuery.of(context).size.width/10,),

                                  const Text('Detail Task', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                                  const Spacer(),
                                  const Icon(Icons.cancel, color: Colors.grey,),
                                  SizedBox(width: MediaQuery.of(context).size.width/10,),
                                  ],
                                  ),
                                  SizedBox(height: MediaQuery.of(context).size.height/50,),
                                  
          Row(
            children: [
          SizedBox(width: MediaQuery.of(context).size.width/10,),

              Container(
                                width: MediaQuery.of(context).size.width/18,
                                height: MediaQuery.of(context).size.height/28,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(
                                    color: const Color(0xFF24A19C)
                                  )
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                      width: MediaQuery.of(context).size.width/5,
                                height: MediaQuery.of(context).size.height/10,
                                decoration: BoxDecoration(
                                  color: const Color(0xFF24A19C),
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(
                                    color: const Color(0xFF24A19C)
                                  )
                                ),
                                  ),
                                )
                              ),

                                const Text('  Masyla Website Project', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 17),),
                              
          
            ],
          ),

                      SizedBox(
                        height: MediaQuery.of(context).size.height/70,
                      ),

                              SizedBox(
                                  width: MediaQuery.of(context).size.width/1.5,
                                  child: const Text('One of the website projects in the field of digital services, ocated in californnia', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),),
                                ),
                                  SizedBox(
                        height: MediaQuery.of(context).size.height/90,
                      ),

                                  SizedBox(
                                  width: MediaQuery.of(context).size.width/1.5,
                                  child: const Row(
                                    children: [
                                      Icon(Icons.timer_outlined, color: Colors.red,),
                                        Text('  08:30 PM', style: TextStyle(color: Colors.red, fontWeight: FontWeight.w500),),
                                    ],
                                  ),
                                ),

                                            SizedBox(
                        height: MediaQuery.of(context).size.height/50,
                      ),

                                SizedBox(
                                  width: MediaQuery.of(context).size.width/1.5,

                                  child:  Row(
                                    children: [
                                      const Icon(Icons.message_rounded, color: Colors.grey,),
                                      SizedBox(
                                      width: MediaQuery.of(context).size.width/50,

                                      ),
                                      const Icon(Icons.add_box, color: Colors.grey,),
                                              SizedBox(
                                      width: MediaQuery.of(context).size.width/50,

                                      ),
                                      const Icon(Icons.calendar_month, color: Colors.grey,),
                                              SizedBox(
                                      width: MediaQuery.of(context).size.width/50,

                                      ),
                                      const Icon(Icons.timer, color: Colors.grey,),
                                              SizedBox(
                                      width: MediaQuery.of(context).size.width/50,

                                      ),
                                      const Icon(Icons.flag, color: Colors.grey,),
                                        Spacer(),
                                      Image.asset('assets/images/vertical.png', color: Colors.grey,)
                                    ],
                                  ),
                                ),



                                ],
                              ),
                            ),
                          );
                        });
                      },
                     style: ButtonStyle(
                      backgroundColor:const MaterialStatePropertyAll(Color(0xFF24A19C)),
                      padding: MaterialStateProperty.all(EdgeInsets.zero),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(100))
                     ),
                    ), 
                     child: const Icon(Icons.add, color: Colors.white,),
                   
                           )
                   ),
                 ),
               ),
          ],
        ),
      ),
    );
  }
}