
import 'package:flutter/material.dart';
import 'package:new_todo/navigation/project.dart';

class Instruction extends StatefulWidget {
  const Instruction({super.key});

  @override
  State<Instruction> createState() => _InstructionState();
}

class _InstructionState extends State<Instruction> {
  
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
                  width: MediaQuery.of(context).size.width/6,
                  child: GestureDetector(onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const Project()));

                  },
                  child: const Icon(Icons.arrow_back_ios_new,))),
                const Spacer(),
                const Text('Instructions', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                const Spacer(),
                 ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height/30,),
        
            SizedBox(
              width: MediaQuery.of(context).size.width/1.1,
              child: Row(

                children: [
                  const Text('Tips and tricks', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                  const Spacer(),
                  Image.asset('assets/images/vertical.png')

                ],
              )),
              SizedBox(height: MediaQuery.of(context).size.height/50,),
             const Divider(endIndent: 15, indent: 15, thickness: 0.5,),
            
              SizedBox(height: MediaQuery.of(context).size.height/50,),
              SizedBox(
                width: MediaQuery.of(context).size.width/1.1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Use click Add to create tasks!', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
                    SizedBox(height: MediaQuery.of(context).size.height/40,),

                    const Text('Start own project!', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
                    SizedBox(height: MediaQuery.of(context).size.height/40,),

                    const Text('Organize these tasks!', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
                    SizedBox(height: MediaQuery.of(context).size.height/40,),

                    const Text('Schedule this tasks!', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
                
                  ],
                ),
              ),

              SizedBox(height: MediaQuery.of(context).size.height/30,),
        
            SizedBox(
              width: MediaQuery.of(context).size.width/1.1,
              child: Row(

                children: [
                  const Text('To Go Further', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                  const Spacer(),
                  Image.asset('assets/images/vertical.png')

                ],
              )),
             SizedBox(height: MediaQuery.of(context).size.height/50,),
             const Divider(endIndent: 15, indent: 15, thickness: 0.5,),
            
              
              SizedBox(height: MediaQuery.of(context).size.height/50,),
              SizedBox(
                width: MediaQuery.of(context).size.width/1.1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('What do you thing about Todyapp', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
                    SizedBox(height: MediaQuery.of(context).size.height/40,),

                    const Text('Visit the help center', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
                    SizedBox(height: MediaQuery.of(context).size.height/40,),

                    const Text('how to use Todyapp', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
                    SizedBox(height: MediaQuery.of(context).size.height/40,),

                    const Text('Get organize anywhere', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
                    SizedBox(height: MediaQuery.of(context).size.height/40,),

                    const Text('Kickstart your project', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),


                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}