
import 'package:flutter/material.dart';

class Todo extends StatefulWidget {
  const Todo({super.key});

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo>{


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Center(
         child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height/8),

            const Text('Create to do list', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
            SizedBox(height: MediaQuery.of(context).size.height/100,),

            const Text('Choose your to do list color themes', style: TextStyle(fontSize: 14),),
            
            SizedBox(height: MediaQuery.of(context).size.height/30),

            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width/1.4,
              height: MediaQuery.of(context).size.height/8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 194, 191, 191),
                    blurRadius: 8,
                    blurStyle: BlurStyle.outer
                  )
                ],
              ),

              child: Column(children: [
                Container(
                height: MediaQuery.of(context).size.height/25,
                width: MediaQuery.of(context).size.width/1.4,
                decoration:  const BoxDecoration(
                  color: Color(0xFF24A19C),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(5), )
                ),
                ),

                
          ],
         ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height/30),

            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width/1.4,
              height: MediaQuery.of(context).size.height/8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 194, 191, 191),
                    blurRadius: 8,
                    blurStyle: BlurStyle.outer
                  )
                ],
              ),

              child: Column(children: [
                Container(
                height: MediaQuery.of(context).size.height/25,
                width: MediaQuery.of(context).size.width/1.4,
                decoration:  const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(5), )
                ),
                ),
      ]),

    ),

            SizedBox(height: MediaQuery.of(context).size.height/30),

            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width/1.4,
              height: MediaQuery.of(context).size.height/8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 194, 191, 191),
                    blurRadius: 8,
                    blurStyle: BlurStyle.outer
                  )
                ],
              ),

              child: Column(children: [
                Container(
                height: MediaQuery.of(context).size.height/25,
                width: MediaQuery.of(context).size.width/1.4,
                decoration:  const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(5), )
                ),
                ),
      ]),

    ),

            SizedBox(height: MediaQuery.of(context).size.height/30),

            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width/1.4,
              height: MediaQuery.of(context).size.height/8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 194, 191, 191),
                    blurRadius: 8,
                    blurStyle: BlurStyle.outer
                  )
                ],
              ),

              child: Column(children: [
                Container(
                height: MediaQuery.of(context).size.height/25,
                width: MediaQuery.of(context).size.width/1.4,
                decoration:  const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(5), )
                ),
                ),
      ]),

    ),
        SizedBox(height: MediaQuery.of(context).size.height/13,),

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
            child: const Text('Open Todyapp',textAlign: TextAlign.center, style: TextStyle(color: Colors.white),)),
        )
    ])
    )));
  }
   }