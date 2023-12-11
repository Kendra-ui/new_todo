import 'dart:async';

import 'package:flutter/material.dart';
import 'package:new_todo/Menu/instructions.dart';

class Project extends StatefulWidget {
  const Project({super.key});

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {

   @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds:  2), ()=>
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>  const Instruction())));
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            SizedBox(width: MediaQuery.of(context).size.width/4,),

                const Text('Project', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
            SizedBox(width: MediaQuery.of(context).size.width/4,),

                SizedBox(
                  width: MediaQuery.of(context).size.width/10,
                  child: const Icon(Icons.search, size: 25,)),
              ],
            ),
            
            SizedBox(height: MediaQuery.of(context).size.height/30,),
             SizedBox(
              width: MediaQuery.of(context).size.width/1.1,
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Filter your task', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                      Spacer(),
                      Icon(Icons.add, color: Colors.grey,)
                    ],
                  ),
                  
                  SizedBox(height: MediaQuery.of(context).size.height/40,),
                   Row(
                    children: [
                    Image.asset('assets/images/message-question.png'),
                    const Text('  Instructions For Use', style: TextStyle(color: Colors.grey),),


                  ],),

                  SizedBox(height: MediaQuery.of(context).size.height/40,),
                   Row(
                    children: [
                    Image.asset('assets/images/Document.png'),
                    const Text('  Try Boards', style: TextStyle(color: Colors.grey),),
                    const Spacer(),
                    Image.asset('assets/images/Heart.png'),

    
                  
                  ]),

                       SizedBox(height: MediaQuery.of(context).size.height/40,),
                   Row(
                    children: [
                    const Icon(Icons.settings_outlined, color: Colors.grey,),
                    const Text('  Manage Projects ', style: TextStyle(color: Colors.grey),),
                    const Spacer(),
                    Image.asset('assets/images/Heart.png'),

    
                  
                  ]),


                  ]))])));
  }
}