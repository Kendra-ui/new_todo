import 'package:flutter/material.dart';
import 'package:new_todo/Menu/settings.dart';

class Themes extends StatefulWidget {
  const Themes({super.key});

  @override
  State<Themes> createState() => _ThemesState();
}

class _ThemesState extends State<Themes> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [

              SizedBox(height: MediaQuery.of(context).size.height/15,),
        
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width/7,
                  child:GestureDetector(
                    onTap: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=> const Settings()));

                    },
                    child: const Icon(Icons.arrow_back_ios_new,))),
                SizedBox(width: MediaQuery.of(context).size.width/3.5,),
                const Text('Theme', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                const Spacer(),
                 ],
            ),
        
              SizedBox(
                  height: MediaQuery.of(context).size.height/40,
                ),
        
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width/1.25,
                height: MediaQuery.of(context).size.height/5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 4,
                      blurStyle: BlurStyle.outer
                    )
                  ]
                ),
        
                child: Column(children: [
                  Container(
                  height: MediaQuery.of(context).size.height/18,
                  width: MediaQuery.of(context).size.width/1.25,
                  decoration:  const BoxDecoration(
                    color: Color(0xFFF09643),
                    borderRadius: BorderRadius.vertical(top: Radius.circular(5), )
                  ),
                  ),
        
                 
        
                  
                ]),
              ),

              SizedBox(
                  height: MediaQuery.of(context).size.height/35,
                ),
        
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width/1.25,
                height: MediaQuery.of(context).size.height/5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 4,
                      blurStyle: BlurStyle.outer
                    )
                  ]
                ),
        
                child: Column(children: [
                  Container(
                  height: MediaQuery.of(context).size.height/18,
                  width: MediaQuery.of(context).size.width/1.25,
                  decoration:  const BoxDecoration(
                    color: Color(0xFFF5D155),
                    borderRadius: BorderRadius.vertical(top: Radius.circular(5), )
                  ),
                  ), 
                ]),
              ),

              SizedBox(
                  height: MediaQuery.of(context).size.height/35,
                ),
        
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width/1.25,
                height: MediaQuery.of(context).size.height/5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 4,
                      blurStyle: BlurStyle.outer
                    )
                  ]
                ),
        
                child: Column(children: [
                  Container(
                  height: MediaQuery.of(context).size.height/18,
                  width: MediaQuery.of(context).size.width/1.1,
                  decoration:  const BoxDecoration(
                    color: Color(0xFF5A9836),
                    borderRadius: BorderRadius.vertical(top: Radius.circular(5), )
                  ),
                  ),
        
                 
        
                  
                ]),
              ),

              SizedBox(
                  height: MediaQuery.of(context).size.height/35,
                ),
        
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width/1.25,
                height: MediaQuery.of(context).size.height/5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 4,
                      blurStyle: BlurStyle.outer
                    )
                  ]
                ),
        
                child: Column(children: [
                  Container(
                  height: MediaQuery.of(context).size.height/18,
                  width: MediaQuery.of(context).size.width/1.1,
                  decoration:  const BoxDecoration(
                    color: Color(0xFF1877F2),
                    borderRadius: BorderRadius.vertical(top: Radius.circular(5), )
                  ),
                  ), 
                ]),
              ),

                 SizedBox(
                  height: MediaQuery.of(context).size.height/35,
                ),
        
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width/1.25,
                height: MediaQuery.of(context).size.height/5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 4,
                      blurStyle: BlurStyle.outer
                    )
                  ]
                ),
        
                child: Column(children: [
                  Container(
                  height: MediaQuery.of(context).size.height/18,
                  width: MediaQuery.of(context).size.width/1.1,
                  decoration:  const BoxDecoration(
                    color: Color(0xFF73C0E2),
                    borderRadius: BorderRadius.vertical(top: Radius.circular(5), )
                  ),
                  ), 
                ]),
              ),

               SizedBox(height: MediaQuery.of(context).size.height/30,),


            Container(
          width: MediaQuery.of(context).size.width/1.25,
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
            child: const Text('More Theme',textAlign: TextAlign.center, style: TextStyle(color: Colors.white),)),
        ),
        
            ],
          ),
        ),
      ),
    );
  }
}