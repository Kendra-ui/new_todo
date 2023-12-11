import 'package:flutter/material.dart';

class AppIcon extends StatefulWidget {
  const AppIcon({super.key});

  @override
  State<AppIcon> createState() => _AppIconState();
}

class _AppIconState extends State<AppIcon> {
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
                  child: const Icon(Icons.arrow_back_ios_new,)),
                const Spacer(),
                const Text('App Icon', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                const Spacer(),
                 ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height/20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height/10,
                  width: MediaQuery.of(context).size.width/5.5,
                  decoration:  BoxDecoration(
                    color: const Color(0xFFE86C62),
                    borderRadius: BorderRadius.circular(7)
                  ),
                  child: Image.asset('assets/images/task.png'),
                ),

                Container(
                  height: MediaQuery.of(context).size.height/10,
                  width: MediaQuery.of(context).size.width/5.5,
                  decoration:  BoxDecoration(
                    color: const Color(0xFF3688F2),
                    borderRadius: BorderRadius.circular(7)
                  ),
                  child: Image.asset('assets/images/task.png'),
                ),

                Container(
                  height: MediaQuery.of(context).size.height/10,
                  width: MediaQuery.of(context).size.width/5.5,
                  decoration:  BoxDecoration(
                    color: const Color(0xFF73A954),
                    borderRadius: BorderRadius.circular(7)
                  ),
                  child: Image.asset('assets/images/task.png'),
                )
              ],
            ),

               SizedBox(height: MediaQuery.of(context).size.height/30,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height/10,
                  width: MediaQuery.of(context).size.width/5.5,
                  decoration:  BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(7)
                  ),
                  child: Image.asset('assets/images/task.png'),
                ),

                Container(
                  height: MediaQuery.of(context).size.height/10,
                  width: MediaQuery.of(context).size.width/5.5,
                  decoration:  BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(7)
                  ),
                  child: Image.asset('assets/images/task.png'),
                ),

                Container(
                  height: MediaQuery.of(context).size.height/10,
                  width: MediaQuery.of(context).size.width/5.5,
                  decoration:  BoxDecoration(
                    color: const Color(0xFFE7A4CF),
                    borderRadius: BorderRadius.circular(7)
                  ),
                  child: Image.asset('assets/images/task.png'),
                )
              ],
            ),

            SizedBox(height: MediaQuery.of(context).size.height/30,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height/10,
                  width: MediaQuery.of(context).size.width/5.5,
                  decoration:  BoxDecoration(
                    color: const Color(0xFFF5D155),
                    borderRadius: BorderRadius.circular(7)
                  ),
                  child: Image.asset('assets/images/task.png'),
                ),

                Container(
                  height: MediaQuery.of(context).size.height/10,
                  width: MediaQuery.of(context).size.width/5.5,
                  decoration:  BoxDecoration(
                    color: const Color(0xFF4285F4),
                    borderRadius: BorderRadius.circular(7)
                  ),
                  child: Image.asset('assets/images/task.png'),
                ),

                Container(
                  height: MediaQuery.of(context).size.height/10,
                  width: MediaQuery.of(context).size.width/5.5,
                  decoration:  BoxDecoration(
                    color: const Color(0xFF9D53BB),
                    borderRadius: BorderRadius.circular(7)
                  ),
                  child: Image.asset('assets/images/task.png'),
                )
              ],
            ),
            
                SizedBox(height: MediaQuery.of(context).size.height/30,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height/10,
                  width: MediaQuery.of(context).size.width/5.5,
                  decoration:  BoxDecoration(
                    color: const Color(0xFF516171),
                    borderRadius: BorderRadius.circular(7)
                  ),
                  child: Image.asset('assets/images/task.png'),
                ),

                Container(
                  height: MediaQuery.of(context).size.height/10,
                  width: MediaQuery.of(context).size.width/5.5,
                  decoration:  BoxDecoration(
                    color: const Color(0xFF36C5F0),
                    borderRadius: BorderRadius.circular(7)
                  ),
                  child: Image.asset('assets/images/task.png'),
                ),

                Container(
                  height: MediaQuery.of(context).size.height/10,
                  width: MediaQuery.of(context).size.width/5.5,
                  decoration:  BoxDecoration(
                    color: const Color(0xFF24A19C),
                    borderRadius: BorderRadius.circular(7)
                  ),
                  child: Image.asset('assets/images/task.png'),
                )
              ],
            ),

              SizedBox(height: MediaQuery.of(context).size.height/30,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height/10,
                  width: MediaQuery.of(context).size.width/5.5,
                  decoration:  BoxDecoration(
                    color: const Color(0xFF0ACF83),
                    borderRadius: BorderRadius.circular(7)
                  ),
                  child: Image.asset('assets/images/task.png'),
                ),

                Container(
                  height: MediaQuery.of(context).size.height/10,
                  width: MediaQuery.of(context).size.width/5.5,
                  decoration:  BoxDecoration(
                    color: const Color(0xFFFF486A),
                    borderRadius: BorderRadius.circular(7)
                  ),
                  child: Image.asset('assets/images/task.png'),
                ),

                Container(
                  height: MediaQuery.of(context).size.height/10,
                  width: MediaQuery.of(context).size.width/5.5,
                  decoration:  BoxDecoration(
                    color: const Color(0xFFFF4500),
                    borderRadius: BorderRadius.circular(7)
                  ),
                  child: Image.asset('assets/images/task.png'),
                )
              ],
            ),

            SizedBox(height: MediaQuery.of(context).size.height/10,),


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
            child: const Text('Save Icon',textAlign: TextAlign.center, style: TextStyle(color: Colors.white),)),
        ),

        
          ],
        ),
      ),
    );
  }
}