import 'package:flutter/material.dart';
import 'package:new_todo/Provider/todo_provider.dart';
import 'package:new_todo/navigation/navigationbar.dart';
import 'package:provider/provider.dart';

class Inbox extends StatefulWidget {
  final String title;
  const Inbox({super.key, required this.title});

  @override
  State<Inbox> createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  TextEditingController email = TextEditingController();
  bool showTextField = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width / 10,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const CustomNavigationBar(),
                        ));
                      },
                      child: const Icon(
                        Icons.arrow_back_ios_new,
                      ),
                    )),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 10,
                ),
                const ClipRRect(
                    child: Text(
                  'Inbox',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 10,
                ),
                SizedBox(
                    width: MediaQuery.of(context).size.width / 10,
                    child: const Icon(
                      Icons.search,
                      size: 25,
                    )),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 30,
            ),
            Consumer<TodoProvider>(builder: (context, todoProvider, child) {
              return ListView.builder(
                  shrinkWrap: true,
                  itemCount: todoProvider.task.length,
                  itemBuilder: (BuildContext context, int index) {
                    var task = todoProvider.task[index];

                    return Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width / 1.4,
                      height: MediaQuery.of(context).size.height / 5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 9,
                              blurStyle: BlurStyle.outer)
                        ],
                      ),
                      child: Column(children: [
                        Container(
                          height: MediaQuery.of(context).size.height / 22,
                          width: MediaQuery.of(context).size.width / 1.4,
                          decoration: const BoxDecoration(
                              color: Color(0xFF24A19C),
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(5),
                              )),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width / 1.7,
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.flag_outlined,
                                  color: Colors.white,
                                ),
                                const Text(
                                  'Priority task 1',
                                  style: TextStyle(color: Colors.white),
                                ),
                                const Spacer(),
                                Image.asset('assets/images/dotted.png')
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0, left: 20),
                          child: Row(
                            children: [
                              Container(
                                  width: MediaQuery.of(context).size.width / 18,
                                  height:
                                      MediaQuery.of(context).size.height / 28,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      border: Border.all(
                                          color: const Color(0xFF24A19C))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width:
                                          MediaQuery.of(context).size.width / 5,
                                      height:
                                          MediaQuery.of(context).size.height /
                                              10,
                                      decoration: BoxDecoration(
                                          color: const Color(0xFF24A19C),
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          border: Border.all(
                                              color: const Color(0xFF24A19C))),
                                    ),
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  '${task.title},',
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 50,
                        ),
                        const Divider(
                          color: Colors.grey,
                          thickness: 0.5,
                          endIndent: 10,
                          indent: 10,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 100,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 1.5,
                          height: MediaQuery.of(context).size.height / 40,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Icon(
                                Icons.timer,
                                color: Colors.red,
                                size: 17,
                              ),
                              const Text(
                                '08:30 PM ',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.red,
                                ),
                              ),
                              Image.asset('assets/images/Chat.png'),
                              const Text(
                                ' 1 ',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 10),
                              ),
                              Image.asset('assets/images/inbox.png'),
                              const Text(
                                ' 2',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 10),
                              ),
                              const Spacer(),
                              const Text(
                                'Mon, 19 Jul 2022',
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                        ),
                      ]),
                    );
                  });
            }),
            // SizedBox(
            //   height: MediaQuery.of(context).size.height / 30,
            // ),
            // Container(
            //   alignment: Alignment.center,
            //   width: MediaQuery.of(context).size.width / 1.4,
            //   height: MediaQuery.of(context).size.height / 5,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(10),
            //     color: Colors.white,
            //     boxShadow: const [
            //       BoxShadow(
            //           color: Colors.grey,
            //           blurRadius: 9,
            //           blurStyle: BlurStyle.outer)
            //     ],
            //   ),
            //   child: Column(children: [
            //     Container(
            //       height: MediaQuery.of(context).size.height / 22,
            //       width: MediaQuery.of(context).size.width / 1.4,
            //       decoration: const BoxDecoration(
            //           color: Colors.red,
            //           borderRadius: BorderRadius.vertical(
            //             top: Radius.circular(5),
            //           )),
            //       child: Row(
            //         children: [
            //           const Icon(
            //             Icons.flag_outlined,
            //             color: Colors.white,
            //           ),
            //           const Text(
            //             'Priority task 3',
            //             style: TextStyle(color: Colors.white),
            //           ),
            //           const Spacer(),
            //           Image.asset('assets/images/dotted.png')
            //         ],
            //       ),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.only(top: 20.0, left: 20),
            //       child: Row(
            //         children: [
            //           Container(
            //               width: MediaQuery.of(context).size.width / 18,
            //               height: MediaQuery.of(context).size.height / 28,
            //               decoration: BoxDecoration(
            //                   borderRadius: BorderRadius.circular(100),
            //                   border:
            //                       Border.all(color: const Color(0xFF24A19C))),
            //               child: Padding(
            //                 padding: const EdgeInsets.all(8.0),
            //                 child: Container(
            //                   width: MediaQuery.of(context).size.width / 5,
            //                   height: MediaQuery.of(context).size.height / 10,
            //                   decoration: BoxDecoration(
            //                       color: const Color(0xFF24A19C),
            //                       borderRadius: BorderRadius.circular(100),
            //                       border: Border.all(
            //                           color: const Color(0xFF24A19C))),
            //                 ),
            //               )),
            //           const Padding(
            //             padding: EdgeInsets.only(left: 8.0),
            //             child: Text(
            //               'Medical Design System',
            //               style: TextStyle(
            //                   color: Colors.black, fontWeight: FontWeight.w500),
            //             ),
            //           )
            //         ],
            //       ),
            //     ),
            //     SizedBox(
            //       height: MediaQuery.of(context).size.height / 50,
            //     ),
            //     const Divider(
            //       color: Colors.grey,
            //       thickness: 0.5,
            //       endIndent: 10,
            //       indent: 10,
            //     ),
            //     SizedBox(
            //       height: MediaQuery.of(context).size.height / 100,
            //     ),
            //     SizedBox(
            //       width: MediaQuery.of(context).size.width / 1.5,
            //       height: MediaQuery.of(context).size.height / 40,
            //       child: Row(
            //         crossAxisAlignment: CrossAxisAlignment.center,
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: [
            //           const Icon(
            //             Icons.timer,
            //             color: Colors.red,
            //             size: 17,
            //           ),
            //           const Text(
            //             '08:30 PM ',
            //             style: TextStyle(
            //               fontSize: 10,
            //               color: Colors.red,
            //             ),
            //           ),
            //           Image.asset('assets/images/Chat.png'),
            //           const Text(
            //             ' 1 ',
            //             style: TextStyle(color: Colors.grey, fontSize: 10),
            //           ),
            //           Image.asset('assets/images/inbox.png'),
            //           const Text(
            //             ' 2',
            //             style: TextStyle(color: Colors.grey, fontSize: 10),
            //           ),
            //           const Spacer(),
            //           const Text(
            //             'Mon, 19 Jul 2022',
            //             style: TextStyle(color: Colors.grey),
            //           )
            //         ],
            //       ),
            //     ),
            //   ]),
            // ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 13,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.3,
              child: Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                    width: MediaQuery.of(context).size.width / 9,
                    height: MediaQuery.of(context).size.height / 15,
                    child: ElevatedButton(
                      onPressed: () {
                        showModalBottomSheet(
                            //isScrollControlled: true,
                            context: context,
                            builder: (context) {
                              return SizedBox(
                                height: MediaQuery.of(context).size.height * 4,
                                width: double.infinity,
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height:
                                      MediaQuery.of(context).size.height * 4,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height /
                                                50,
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                10,
                                          ),
                                          const Text(
                                            'Detail Task',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          const Spacer(),
                                          IconButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              icon: const Icon(
                                                Icons.cancel_outlined,
                                                color: Colors.grey,
                                              )),
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                10,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height /
                                                50,
                                      ),

                                      Row(
                                        children: [
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                10,
                                          ),
                                          Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  18,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  28,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  border: Border.all(
                                                      color: const Color(
                                                          0xFF24A19C))),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      5,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      10,
                                                  decoration: BoxDecoration(
                                                      color: const Color(
                                                          0xFF24A19C),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              100),
                                                      border: Border.all(
                                                          color: const Color(
                                                              0xFF24A19C))),
                                                ),
                                              )),
                                          const Text(
                                            '  Masyla Website Project',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 17),
                                          ),
                                        ],
                                      ),

                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height /
                                                70,
                                      ),

                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: const Text(
                                          'One of the website projects in the field of digital services, ocated in californnia',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height /
                                                90,
                                      ),

                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: const Row(
                                          children: [
                                            Icon(
                                              Icons.timer_outlined,
                                              color: Colors.red,
                                            ),
                                            Text(
                                              '  08:30 PM',
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ],
                                        ),
                                      ),

                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height /
                                                50,
                                      ),

                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.3,
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  20,
                                            ),
                                            const Icon(
                                              Icons.message,
                                              color: Colors.grey,
                                              size: 20,
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  20,
                                            ),
                                            const Icon(
                                              Icons.inbox,
                                              color: Colors.grey,
                                              size: 20,
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  20,
                                            ),
                                            const Icon(
                                              Icons.calendar_month,
                                              color: Colors.grey,
                                              size: 20,
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  20,
                                            ),
                                            const Icon(
                                              Icons.timer,
                                              color: Colors.grey,
                                              size: 20,
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  20,
                                            ),
                                            const Icon(
                                              Icons.flag,
                                              color: Colors.grey,
                                              size: 20,
                                            ),
                                            const Spacer(
                                              flex: 2,
                                            ),
                                            Image.asset(
                                              'assets/images/vertical.png',
                                              color: Colors.grey,
                                            )
                                          ],
                                        ),
                                      ),

                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height /
                                                50,
                                      ),
                                      const Divider(
                                        endIndent: 35,
                                        indent: 35,
                                        color:
                                            Color.fromARGB(255, 207, 206, 206),
                                      ),

                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height /
                                                10,
                                      ),

                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(3)),
                                        child: ElevatedButton(
                                            style: ButtonStyle(
                                                backgroundColor:
                                                    const MaterialStatePropertyAll(
                                                        Color(0xFFF2F9F9)),
                                                shape: MaterialStatePropertyAll(
                                                    RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    10)))),
                                            onPressed: () {
                                              setState(() {
                                                showTextField = !showTextField;
                                              });
                                            },
                                            child: const Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Icon(
                                                  Icons.add,
                                                  color: Color(0xFF24A19C),
                                                ),
                                                Text(
                                                  ' Add Sub-task',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Color(0xFF24A19C)),
                                                ),
                                              ],
                                            )),
                                      ),

                                      // const SizedBox(width: 10),
                                      //          if (showTextField)
                                      //         SizedBox(
                                      //           width: MediaQuery.of(context).size.width / 1.5,
                                      //           child: TextFormField(
                                      //             controller: email,
                                      //             decoration: const InputDecoration(
                                      //               labelText: "name@example.com",
                                      //               labelStyle: TextStyle(fontSize: 14, color: Color(0xFFA9B0C5)),
                                      //               filled: true,
                                      //               fillColor: Color(0xFFF6F7F9),
                                      //               border: OutlineInputBorder(
                                      //                 borderSide: BorderSide.none,
                                      //                 borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                      //               ),
                                      //             ),))
                                    ],
                                  ),
                                ),
                              );
                            });
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            const MaterialStatePropertyAll(Color(0xFF24A19C)),
                        padding: MaterialStateProperty.all(EdgeInsets.zero),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100))),
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed
    email.dispose();
    super.dispose();
  }
}
