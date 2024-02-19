
import 'package:flutter/material.dart';
import 'package:new_todo/navigation/navigationbar.dart';

class Boards extends StatefulWidget {
  final String username;
  const Boards({super.key, required this.username});

  @override
  State<Boards> createState() => _BoardsState();
}

class _BoardsState extends State<Boards> {
  
  
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
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>  CustomNavigationBar(username: widget.username,)));

                  },
                  child: const Icon(Icons.arrow_back_ios_new,))),
                  SizedBox(width: MediaQuery.of(context).size.width/4.5,),
                const Text('Try Boards', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                const Spacer(),
                 ],
            ),

            SizedBox(height: MediaQuery.of(context).size.height/30,),
        
            SizedBox(
              width: MediaQuery.of(context).size.width/1.1,
              child: Row(

                children: [
                  const Text('In Progress', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                  const Spacer(),
                  Image.asset('assets/images/vertical.png')

                ],
              )),

              SizedBox(height: MediaQuery.of(context).size.height/30,),

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
                height: MediaQuery.of(context).size.height/22,
                width: MediaQuery.of(context).size.width/1.1,
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
                  width: MediaQuery.of(context).size.width/1.2,
                  height: MediaQuery.of(context).size.height/40,
                  child:  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     const Icon(Icons.timer, color: Colors.red, size: 17,),
                      const Text('08:30 PM ', style: TextStyle(fontSize: 10, color: Colors.red,),),
                      Image.asset('assets/images/Chat.png'),
                      const Text(' 1 ', style: TextStyle(color: Colors.grey, fontSize: 10),),
                      Image.asset('assets/images/inbox.png'),
                      const Text(' 2', style: TextStyle(color: Colors.grey, fontSize: 10),),
                      const Spacer(),
                      const Text('Mon, 19 Jul 2022', style: TextStyle(color: Colors.grey),)
                    ],
                  ),
                ),
               
               
                
              ]),
              
            ),

            SizedBox(height: MediaQuery.of(context).size.height/30,),
        
            SizedBox(
              width: MediaQuery.of(context).size.width/1.1,
              child: Row(

                children: [
                  const Text('Completed', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                  const Spacer(),
                  Image.asset('assets/images/vertical.png')

                ],
              )),

             SizedBox(height: MediaQuery.of(context).size.height/30,),
          
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

              child: Column(
                children: [
                Container(
                height: MediaQuery.of(context).size.height/22,
                width: MediaQuery.of(context).size.width/1.1,
                decoration:  const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(5), )
                ),
                child:  Row(
                  children: [
                    const Icon(Icons.flag_outlined, color: Colors.white,),
                    const Text('Priority task 1', style: TextStyle(color: Colors.white),),
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
                            color:  Colors.black
                          )
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                             width: MediaQuery.of(context).size.width/5,
                        height: MediaQuery.of(context).size.height/10,
                        decoration: BoxDecoration(
                          color:  Colors.black,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                            color:  Colors.black
                          )
                        ),
                          ),
                        )
                      ),

                      
                      const Padding(
                        padding:  EdgeInsets.only(left:8.0),
                        child: Text('Titany Project', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),),
                      )
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height/50,),

                const Divider(color: Colors.grey, thickness: 0.5, endIndent: 10,indent: 10,),

                SizedBox(height: MediaQuery.of(context).size.height/100,),

                SizedBox(
                  width: MediaQuery.of(context).size.width/1.2,
                  height: MediaQuery.of(context).size.height/40,
                  child:  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(Icons.timer, color: Colors.red, size: 17,),
                      const Text(' 08:30 PM ', style: TextStyle(fontSize: 10, color: Colors.red,),),
                      Image.asset('assets/images/Chat.png'),
                      const Text(' 1 ', style: TextStyle(color: Colors.grey, fontSize: 10),),
                      Image.asset('assets/images/inbox.png'),
                      const Text(' 2', style: TextStyle(color: Colors.grey, fontSize: 10),),
                      const Spacer(),
                      const Text('Mon, 19 Jul 2022', style: TextStyle(color: Colors.grey),)
                    ],
                  ),
                ),
          ],
        ),
      ),
       SizedBox(height: MediaQuery.of(context).size.height/30,),
          
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

              child: Column(
                children: [
                Container(
                height: MediaQuery.of(context).size.height/22,
                width: MediaQuery.of(context).size.width/1.1,
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
                            color:  Colors.red
                          )
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                             width: MediaQuery.of(context).size.width/5,
                        height: MediaQuery.of(context).size.height/10,
                        decoration: BoxDecoration(
                          color:  Colors.red,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                            color:  Colors.red
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
                  width: MediaQuery.of(context).size.width/1.2,
                  height: MediaQuery.of(context).size.height/40,
                  child:  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(Icons.timer, color: Colors.red, size: 17,),
                      const Text(' 08:30 PM ', style: TextStyle(fontSize: 10, color: Colors.red,),),
                      Image.asset('assets/images/Chat.png'),
                      const Text(' 1 ', style: TextStyle(color: Colors.grey, fontSize: 10),),
                      Image.asset('assets/images/inbox.png'),
                      const Text(' 2', style: TextStyle(color: Colors.grey, fontSize: 10),),
                      const Spacer(),
                      const Text('Mon, 19 Jul 2022', style: TextStyle(color: Colors.grey),)
                    ],
                  ),
                ),
          ],
        ),
      ),

      
    ])));
  }
}