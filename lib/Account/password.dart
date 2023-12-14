import 'package:flutter/material.dart';
import 'package:new_todo/Menu/settings.dart';

class Password extends StatefulWidget {
  const Password({super.key});

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {

  final TextEditingController _fullname = TextEditingController();
  final TextEditingController _email = TextEditingController();

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
                  width: MediaQuery.of(context).size.width/25,

                ),
                    GestureDetector(
                    onTap: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=> const Settings()));

                    },
                    child: const Icon(Icons.arrow_back_ios_new,)),
                                SizedBox(
                  width: MediaQuery.of(context).size.width/3.3,

                ),
                const Text('Account', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                const Spacer(),
                 ],
            ),

            SizedBox(height: MediaQuery.of(context).size.height/20,),
        
            SizedBox(
              width: MediaQuery.of(context).size.width/1.1,
              child: const Text('Full Name', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),)),

              SizedBox(height: MediaQuery.of(context).size.height/50,),

              Container(
              height: MediaQuery.of(context).size.height/13,
              width: MediaQuery.of(context).size.width/1.1,
              decoration: BoxDecoration(
                border: Border.all(width: 0.5, color: const Color(0xFFE0E5ED)),
                borderRadius: BorderRadius.circular(5)
              ),
              child: TextFormField(
                               
              controller: _fullname,
              decoration:  const InputDecoration(
                labelText: "Full name",
                labelStyle: TextStyle(fontSize: 14, color: Color(0xFF767E8C)),
                filled: true,
                fillColor:  Color(0xFFF6F7F9),
                
                enabledBorder:  OutlineInputBorder(
                  borderSide: BorderSide.none
                ),

                ) 
              ),    
              ),

              SizedBox(height: MediaQuery.of(context).size.height/40,),
        
            SizedBox(
              width: MediaQuery.of(context).size.width/1.1,
              child: const Text('Email', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),)),

              SizedBox(height: MediaQuery.of(context).size.height/50,),

              Container(
              height: MediaQuery.of(context).size.height/13,
              width: MediaQuery.of(context).size.width/1.1,
              decoration: BoxDecoration(
                border: Border.all(width: 0.5, color: const Color(0xFFE0E5ED)),
                borderRadius: BorderRadius.circular(5)
              ),
              child: TextFormField(
                               
              controller: _email,
              decoration:  const InputDecoration(
                labelText: "name@example.com",
                labelStyle: TextStyle(fontSize: 14, color: Color(0xFF767E8C)),
                filled: true,
                fillColor:  Color(0xFFF6F7F9),
                
                enabledBorder:  OutlineInputBorder(
                  borderSide: BorderSide.none
                ),

                ) 
              ),    
              ),

              SizedBox(height: MediaQuery.of(context).size.height/40,),
        
            SizedBox(
              width: MediaQuery.of(context).size.width/1.1,
              child: const Text('Password', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),)),

            SizedBox(height: MediaQuery.of(context).size.height/40,),


            Container(
          width: MediaQuery.of(context).size.width/1.1,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3)
          ),
          child: ElevatedButton(
            style:  ButtonStyle(
              backgroundColor: const MaterialStatePropertyAll(Colors.white),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                
              )),
              
            ),
            onPressed: (){}, 
            child: const Text('Change Password',textAlign: TextAlign.center, style: TextStyle(color: Color(0xFF767E8C)),)),
        ),

                    SizedBox(height: MediaQuery.of(context).size.height/4,),


            Container(
          width: MediaQuery.of(context).size.width/1.1,
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