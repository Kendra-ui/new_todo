import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:horizontal_calendar/horizontal_calendar.dart';


class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {


  
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height/10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width/8,
                  child: const Icon(Icons.arrow_back_ios_new,)),
                const Spacer(),
                const Text('Upcoming', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                const Spacer(),
                SizedBox(
                  width: MediaQuery.of(context).size.width/8,
                  child: const Icon(Icons.search, size: 25,)),
              ],
            ),

            SizedBox(height: MediaQuery.of(context).size.height/30,),

            SizedBox(
              child: HorizontalCalendar(
                date: DateTime.now(),
                textColor: const Color.fromARGB(255, 0, 0, 0),
                showMonth: true,
                locale: Localizations.localeOf(context),
                selectedColor: const Color(0xFF24A19C), 
                onDateSelected: ((date) {
                  if (kDebugMode) {
                    print(date.toString());
                  }
                })
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/18,),
            const Divider(indent: 25, endIndent: 25, color:  Color.fromARGB(255, 209, 207, 207),),

            SizedBox(height: MediaQuery.of(context).size.height/50,),

            SizedBox(
              width: MediaQuery.of(context).size.width/1.2,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Today . Wednesday', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),),
                  Text('Reschedule', style: TextStyle(color: Color(0xFF24A19C), fontWeight: FontWeight.bold),)
                ],
              ),
            ),

            SizedBox(height: MediaQuery.of(context).size.height/70,),
            const Divider(indent: 25, endIndent: 25, color:  Color.fromARGB(255, 209, 207, 207),),

            SizedBox(height: MediaQuery.of(context).size.height/70,),

            SizedBox(
              width: MediaQuery.of(context).size.width/1.2,
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
                        ),
            
                        const Spacer(),
                        Image.asset('assets/images/dotted.png', color: Colors.grey,)
                      ],
                    ),
            ),

            SizedBox(height: MediaQuery.of(context).size.height/50,),


            SizedBox(
                  width: MediaQuery.of(context).size.width/1.2,
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(Icons.timer, color: Colors.red, size: 17,),
                      const Text(' 08:30 PM', style: TextStyle(fontSize: 10, color: Colors.red,),),
                      const Spacer(),
                      Image.asset('assets/images/Chat.png'),
                      const Text(' 1 ', style: TextStyle(color: Colors.grey, fontSize: 10),),
                      Image.asset('assets/images/inbox.png'),
                      const Text(' 2', style: TextStyle(color: Colors.grey, fontSize: 10),),
                       ],
                  ),
                ),

            SizedBox(height: MediaQuery.of(context).size.height/70,),
            const Divider(indent: 25, endIndent: 25, color:  Color.fromARGB(255, 209, 207, 207),),

            SizedBox(
              height: MediaQuery.of(context).size.height/30,
              width: MediaQuery.of(context).size.width/1.2,
              child: const Row(
                children: [
                  Text('8 Apr 2022 , Thursday', style: TextStyle(color: Colors.grey),),
                ],
              ),
            ),

            SizedBox(height: MediaQuery.of(context).size.height/70,),
            const Divider(indent: 25, endIndent: 25, color:  Color.fromARGB(255, 209, 207, 207),),

             SizedBox(height: MediaQuery.of(context).size.height/70,),

            SizedBox(
              width: MediaQuery.of(context).size.width/1.2,
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
                          child: Text('Medical Design System', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),),
                        ),
            
                        const Spacer(),
                        Image.asset('assets/images/dotted.png', color: Colors.grey,)
                      ],
                    ),
            ),

            SizedBox(height: MediaQuery.of(context).size.height/50,),


            SizedBox(
                  width: MediaQuery.of(context).size.width/1.2,
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(Icons.timer, color: Colors.red, size: 17,),
                      const Text(' 08:30 PM', style: TextStyle(fontSize: 10, color: Colors.red,),),
                      const Spacer(),
                      Image.asset('assets/images/Chat.png'),
                      const Text(' 1 ', style: TextStyle(color: Colors.grey, fontSize: 10),),
                      Image.asset('assets/images/inbox.png'),
                      const Text(' 2', style: TextStyle(color: Colors.grey, fontSize: 10),),
                       ],
                  ),
                ),

            SizedBox(height: MediaQuery.of(context).size.height/70,),
            const Divider(indent: 25, endIndent: 25, color:  Color.fromARGB(255, 209, 207, 207),),

            SizedBox(
              height: MediaQuery.of(context).size.height/30,
              width: MediaQuery.of(context).size.width/1.2,
              child: const Row(
                children: [
                  Text('11 Apr 2022 , Saturday', style: TextStyle(color: Colors.grey),),
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}