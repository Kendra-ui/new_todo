
import 'package:flutter/material.dart';

class Filter extends StatefulWidget {
  const Filter({super.key});

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  
  
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

                const ClipRRect(child:  Text('Filter & Labels', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)),
            SizedBox(width: MediaQuery.of(context).size.width/10,),

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
                  const Text('Filter your task', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                  
                  SizedBox(height: MediaQuery.of(context).size.height/40,),
                   Row(
                    children: [
                    Image.asset('assets/images/Filter.png'),
                    const Text('  Assigned to me', style: TextStyle(color: Colors.grey),),

                  ],),

                    SizedBox(height: MediaQuery.of(context).size.height/50,),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Image.asset('assets/images/boom.png'),
                    const Text('  Priority 1', style: TextStyle(color: Colors.grey),),
                    const Spacer(),
                    const Text('1', style: TextStyle(color: Colors.grey),)

                  ],),

                    SizedBox(height: MediaQuery.of(context).size.height/50,),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Image.asset('assets/images/ok.png'),
                    const Text('  Priority 3', style: TextStyle(color: Colors.grey),),
                    const Spacer(),
                    const Text('1', style: TextStyle(color: Colors.grey),)

                  ],),

                    SizedBox(height: MediaQuery.of(context).size.height/40,),
                   const Row(
                    children: [
                    Icon(Icons.settings_outlined, color: Colors.grey,),
                    Text('  Manage Filter', style: TextStyle(color: Colors.grey),),

                  ],),

                    SizedBox(height: MediaQuery.of(context).size.height/30,),
                   const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                    Text('Labels', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                    Spacer(),
                    Icon(Icons.add, color: Colors.grey,)

                  ],),

                    SizedBox(height: MediaQuery.of(context).size.height/50,),
                   Row(
                    children: [
                    Image.asset('assets/images/task-square.png'),
                    const Text('  Massana label', style: TextStyle(color: Colors.grey),),

                  ],),

                    SizedBox(height: MediaQuery.of(context).size.height/50,),
                   const Row(
                    children: [
                      Icon(Icons.settings_outlined, color: Colors.grey,),
                    Text('  Manage labels', style: TextStyle(color: Colors.grey),),

                  ],)
                ],
              ))
          ],
        ),
      ),
    );
  }
}