import 'package:flutter/material.dart';
import 'package:new_todo/Menu/settings.dart';

class HelpCenter extends StatefulWidget {
  final String username;
  const HelpCenter({super.key, required this.username});

  @override
  State<HelpCenter> createState() => _HelpCenterState();
}

class _HelpCenterState extends State<HelpCenter> {

  final TextEditingController _search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height/15,),
        
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width/10,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>  Settings(username: widget.username,)));

                    },
                    child: const Icon(Icons.arrow_back_ios_new,))),
                const Spacer(),
                const Text('Help Center', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                const Spacer(),
                 ],
            ),

            SizedBox(height: MediaQuery.of(context).size.height/20,),

            Container(
              height: MediaQuery.of(context).size.height/13,
              width: MediaQuery.of(context).size.width/1.1,
              decoration: BoxDecoration(
                border: Border.all(width: 0.5, color: const Color.fromARGB(255, 213, 220, 241)),
                borderRadius: BorderRadius.circular(5)
              ),
              child: TextFormField(
                               
              controller: _search,
              decoration:  const InputDecoration(
                prefixIcon: Icon(Icons.search, color: Color(0xFF767E8C)),
                labelText: "Search Topic  ",
                labelStyle: TextStyle(fontSize: 14, color: Color(0xFF767E8C)),
                filled: true,
                fillColor:  Color(0xFFF6F7F9),
                
                enabledBorder:  OutlineInputBorder(
                  borderSide: BorderSide.none
                ),

                ) 
              ),    
              ),

        SizedBox(
        height: MediaQuery.of(context).size.height/30,

        ),
              SizedBox(
                width: MediaQuery.of(context).size.width/1.1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width/3,
                      height: MediaQuery.of(context).size.height/6,
                      decoration:  BoxDecoration(
                        color: const Color(0xFFF6F7F9),
                        borderRadius:BorderRadius.circular(8)
                      ),
                      child:  Center(
                        child: Column(
                          children: [
                            SizedBox(height: MediaQuery.of(context).size.height/50,),
                            Image.asset('assets/images/homme.png'),
                            SizedBox(height: MediaQuery.of(context).size.height/70,),
                            const Text('Platforms are used')
                          ],
                        ),
                      ),
                    ),

                    Container(
                      width: MediaQuery.of(context).size.width/3,
                      height: MediaQuery.of(context).size.height/6,
                      decoration:  BoxDecoration(
                        color: const Color(0xFFF6F7F9),
                        borderRadius:BorderRadius.circular(8)
                      ),
                      child:  Center(
                        child: Column(
                          children: [
                            SizedBox(height: MediaQuery.of(context).size.height/50,),
                            Image.asset('assets/images/bubble.png'),
                            SizedBox(height: MediaQuery.of(context).size.height/70,),
                            const Text('Usage questions')
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

               SizedBox(
        height: MediaQuery.of(context).size.height/30,

        ),
              SizedBox(
                width: MediaQuery.of(context).size.width/1.1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width/3,
                      height: MediaQuery.of(context).size.height/6,
                      decoration:  BoxDecoration(
                        color: const Color(0xFFF6F7F9),
                        borderRadius:BorderRadius.circular(8)
                      ),
                      child:  Center(
                        child: Column(
                          children: [
                            SizedBox(height: MediaQuery.of(context).size.height/50,),
                            Image.asset('assets/images/femme.png'),
                            SizedBox(height: MediaQuery.of(context).size.height/70,),
                            const Text('Application usage')
                          ],
                        ),
                      ),
                    ),

                    Container(
                      width: MediaQuery.of(context).size.width/3,
                      height: MediaQuery.of(context).size.height/6,
                      decoration:  BoxDecoration(
                        color: const Color(0xFFF6F7F9),
                        borderRadius:BorderRadius.circular(8)
                      ),
                      child:  Center(
                        child: Column(
                          children: [
                            SizedBox(height: MediaQuery.of(context).size.height/50,),
                            Image.asset('assets/images/timer.png'),
                            SizedBox(height: MediaQuery.of(context).size.height/70,),
                            const Text('Update Time')
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

               SizedBox(
        height: MediaQuery.of(context).size.height/30,

        ),
              SizedBox(
                width: MediaQuery.of(context).size.width/1.1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width/3,
                      height: MediaQuery.of(context).size.height/6,
                      decoration:  BoxDecoration(
                        color: const Color(0xFFF6F7F9),
                        borderRadius:BorderRadius.circular(8)
                      ),
                      child:  Center(
                        child: Column(
                          children: [
                            SizedBox(height: MediaQuery.of(context).size.height/50,),
                            Image.asset('assets/images/tv.png'),
                            SizedBox(height: MediaQuery.of(context).size.height/70,),
                            const Text('Cross platform App')
                          ],
                        ),
                      ),
                    ),

                    Container(
                      width: MediaQuery.of(context).size.width/3,
                      height: MediaQuery.of(context).size.height/6,
                      decoration:  BoxDecoration(
                        color: const Color(0xFFF6F7F9),
                        borderRadius:BorderRadius.circular(8)
                      ),
                      child:  Center(
                        child: Column(
                          children: [
                            SizedBox(height: MediaQuery.of(context).size.height/50,),
                            Image.asset('assets/images/bell.png'),
                            SizedBox(height: MediaQuery.of(context).size.height/70,),
                            const Text('Update Reminder')
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

        SizedBox(height: MediaQuery.of(context).size.height/20,),


            Container(
          width: MediaQuery.of(context).size.width/1.3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3)
          ),
          child: ElevatedButton(
            
            style:  ButtonStyle(
              backgroundColor: const MaterialStatePropertyAll(Color(0xFF24A19C)),

              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                
              )),
              
            ),
            onPressed: (){}, 
            child: const Text('Save Changes',textAlign: TextAlign.center, style: TextStyle(color: Colors.white),)),
        ),

        
          ],
        ),
      ),
    );
  }
}