
import 'package:flutter/material.dart';
import 'package:new_todo/Account/sign_up.dart';

class Splash3 extends StatefulWidget {
  const Splash3({super.key});

  @override
  State<Splash3> createState() => _Splash3State();
}

class _Splash3State extends State<Splash3> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height/10,),
            const Center(
              child:  Text.rich(
                TextSpan(
                  text: 'Welcome to',
                  style: TextStyle( fontWeight: FontWeight.bold, fontSize: 26,),
                  children: <TextSpan>[
                    TextSpan(text:' Todyapp',
                    style:TextStyle(color: Color(0xFF24A19C), fontWeight: FontWeight.bold, fontSize: 26),)
                  ]
                )
                )
            ),
            SizedBox(height: MediaQuery.of(context).size.height/15,),
      
           Stack(
            children:<Widget>[
              
                Center(
                  child: Image.asset('assets/images/XMockup.png',height:300 ,)),
               
                  Positioned.fill(
                  child:  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: MediaQuery.of(context).size.height/4.8,
                      width: MediaQuery.of(context).size.width/1.5,
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            blurRadius: 28,
                            blurStyle: BlurStyle.normal,
                          )
                        ]
                      ),
                     
                    ),
                  ) ),
                  Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:5, right: 150),
                    child: Image.asset('assets/images/Frame219.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:200.0,top:0),
                    child: Image.asset('assets/images/Frame220.png'),
                  )
                ],
              )
        
      
           ] ),
         
      
          SizedBox(height: MediaQuery.of(context).size.height/1000,),
      
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
                     Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=> const SignUp(email: '',)));
      
              }, 
              child:  const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Icon(Icons.mail, color: Colors.white, size: 20,),
                    Text('Continue with email',textAlign: TextAlign.center, style: TextStyle(color: Colors.white,),),
                ],
              )),
          ),
      
          SizedBox(height: MediaQuery.of(context).size.height/40,),
            const Row(
              children: <Widget>[
                 Expanded(child: Divider(color:  Color.fromARGB(255, 201, 197, 197), indent: 45, endIndent: 15,)),
                 Text('or continue', style: TextStyle(color: Colors.grey),),
                 Expanded(child: Divider(color:  Color.fromARGB(255, 201, 197, 197), indent: 15, endIndent: 45,)),
      
              ],
            ),
            
          SizedBox(height: MediaQuery.of(context).size.height/40,),
      
            Row(
                        mainAxisAlignment: MainAxisAlignment.center ,
                       children: [
                  
                         SizedBox(width:  MediaQuery.of(context).size.width/100,),
                        SizedBox(
                          width: MediaQuery.of(context).size.width/3,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: const MaterialStatePropertyAll(Color.fromARGB(255, 247, 247, 247)),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                                )
                              )
                            ),
                            onPressed: (){
      
                            }, 
                            child: Row(
                              children: [
                                Image.asset('assets/images/Facebook.png', height: 20,),
                                const Spacer(),
                                const Text('Facebook', style: TextStyle(fontFamily: 'Poppins', fontSize: 15, color: Colors.black,),),
                              ],
                            )),
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width/25,),
                          SizedBox(
                            width: MediaQuery.of(context).size.width/3,
                            child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 247, 247, 247)),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                                )
                              )
                            ),
                            onPressed: () {
                            } 
                          , 
                          child:  Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/Google.png', height: 20,),
                               const Text(' Google', style: TextStyle(color: Colors.black,fontFamily: 'Poppins', fontSize: 15),),
                            ],
                          ),),
                          ),
                  
                          const SizedBox(width: 10,)
                       ],
                      )
          ],
        ),
      ),
    );
 
  }
}