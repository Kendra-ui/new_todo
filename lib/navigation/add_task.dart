import 'package:flutter/material.dart';
import 'package:new_todo/Menu/settings.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  @override
  Widget build(BuildContext context) {
    return    Scaffold(
      body: SingleChildScrollView(
        child:    Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height/10,
            ),
              Row(
              children: [
                SizedBox(width: MediaQuery.of(context).size.width/20,),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Today', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                    Text('Best platform for creating to-do lists')
                  ],
                ),
                SizedBox(width: MediaQuery.of(context).size.width/4,),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> const Settings()));
                  },
                  child: const Icon(Icons.settings,color: Colors.grey,)),
                 ],
            ),

              SizedBox(
                height: MediaQuery.of(context).size.height/20,
              ),

            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width/1.1,
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
                height: MediaQuery.of(context).size.height/25,
                width: MediaQuery.of(context).size.width/1.1,
                decoration:  const BoxDecoration(
                  color: Color(0xFF24A19C),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(5), )
                ),
                ),

                Padding(
                padding: const EdgeInsets.only(top:20.0, left: 20),
                  child: Row(
                    children: [
                       Container(
                               width: MediaQuery.of(context).size.width/15,
                               height: MediaQuery.of(context).size.height/25,
                               decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5)
                               ),
                               child: ElevatedButton(
                         onPressed: () { 
                          },
                         style: ButtonStyle(
                          backgroundColor:const MaterialStatePropertyAll(Color(0xFF24A19C)),
                          padding: MaterialStateProperty.all(EdgeInsets.zero),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                         ),
                        ), 
                         child: const Icon(Icons.add, color: Colors.white,),
                       
                               )
                       ),
                      const Padding(
                        padding:  EdgeInsets.only(left:8.0),
                        child: Text('Tap plus to create a new task', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),),
                      )
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height/50,),

                const Divider(color: Colors.grey, thickness: 0.5, endIndent: 10,indent: 10,),

                SizedBox(height: MediaQuery.of(context).size.height/100,),

                const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Add your task', style: TextStyle(fontSize: 10, color: Colors.grey,),),
                    Text('Today .Mon 20 Jul 2022', style: TextStyle(color: Colors.grey, fontSize: 10),)
                  ],
                ),

                
              ]),
            )
          ],
        ),
      ),
    );
  }
}