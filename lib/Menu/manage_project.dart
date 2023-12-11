import 'package:flutter/material.dart';

class ManageProject extends StatefulWidget {
  const ManageProject({super.key});

  @override
  State<ManageProject> createState() => _ManageProjectState();
}

class _ManageProjectState extends State<ManageProject> {

  bool light = true;
 final TextEditingController _project = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
             SizedBox(height: MediaQuery.of(context).size.height/10,),
        
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width/6,
                  child: const Icon(Icons.arrow_back_ios_new,)),
                  SizedBox(
                  width: MediaQuery.of(context).size.width/6,

                  ),
                const Text('Manage Project', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                const Spacer(),
                 ],
            ),

            SizedBox(height: MediaQuery.of(context).size.height/30,),
        
            SizedBox(
              width: MediaQuery.of(context).size.width/1.1,
              child: const Text('Name Project', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),)),

              SizedBox(height: MediaQuery.of(context).size.height/50,),

              Container(
              height: MediaQuery.of(context).size.height/13,
              width: MediaQuery.of(context).size.width/1.1,
              decoration: BoxDecoration(
                border: Border.all(width: 0.5, color: const Color(0xFFE0E5ED)),
                borderRadius: BorderRadius.circular(5)
              ),
              child: TextFormField(
                               
              controller: _project,
              decoration:  const InputDecoration(
                labelText: "Name project",
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
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/images/paintbucket.png'),
                    SizedBox(
                width: MediaQuery.of(context).size.width/1.25,

                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Color', style: TextStyle(color: Color(0xFF767E8C)),),
                          Text('Charcoal', style: TextStyle(color: Color(0xFF767E8C)),)
                                   
                        ],
                      ),
                    )
                  ],
                             ),
               ),

                   SizedBox(height: MediaQuery.of(context).size.height/40,),

               SizedBox(
                width: MediaQuery.of(context).size.width/1.1,
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/images/2User.png'),
                    SizedBox(
                width: MediaQuery.of(context).size.width/1.25,

                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Calaborators', style: TextStyle(color: Color(0xFF767E8C)),),
                          Text('no colaborators', style: TextStyle(color: Color(0xFF767E8C)),)
                                   
                        ],
                      ),
                    )
                  ],
                             ),
               ),

                   SizedBox(height: MediaQuery.of(context).size.height/40,),

               SizedBox(
                width: MediaQuery.of(context).size.width/1.1,
                 child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.star_border_outlined, color: Color(0xFF767E8C), size: 30,),
                   SizedBox(
                width: MediaQuery.of(context).size.width/1.45,

                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('    Favorite', style: TextStyle(color: Color(0xFF767E8C)),),
                                   
                        ],
                      ),
                    ),
          Switch.adaptive(
            activeColor: Colors.white,
            activeTrackColor: const Color(0xFF24A19C),
          value: light,
          onChanged: (bool value) {
            setState(() {
              light = value;
            });
          },
                ),
                  ],
                             ),
               ),

                     SizedBox(height: MediaQuery.of(context).size.height/30,),

               SizedBox(
                width: MediaQuery.of(context).size.width/1.1,
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/images/2User.png'),
                    SizedBox(
                width: MediaQuery.of(context).size.width/1.25,

                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('View', style: TextStyle(color: Color(0xFF767E8C)),),
                                   
                        ],
                      ),
                    )
                  ],
                             ),
               ),

              







          ])));
  }
}