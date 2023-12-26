import 'package:flutter/material.dart';

class Splash2 extends StatefulWidget {
  const Splash2({super.key});

  @override
  State<Splash2> createState() => _Splash2State();
}

class _Splash2State extends State<Splash2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 50,
            ),
            Stack(children: <Widget>[
              Center(
                  child: Image.asset(
                'assets/images/Innerframe.png',
                height: 459,
              )),
              Positioned.fill(
                  child: Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 4.4,
                  child: Container(
                    height: MediaQuery.of(context).size.height / 5.2,
                    width: MediaQuery.of(context).size.width / 1.5,
                    decoration: const BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: 15,
                        blurStyle: BlurStyle.normal,
                      )
                    ]),
                    child: Column(
                      children: [
                        const Text(
                          'Find the practicality in making your todo list',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width / 1.2,
                            child: const Text(
                              'Easy-to-understand user interface that makes you more comfortable when you want to create a task or to do list, Todyapp can also improve productivity',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.black, fontSize: 14),
                            )),
                      ],
                    ),
                  ),
                ),
              )),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 200.0),
                    child: Image.asset('assets/images/217.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 200.0, top: 1),
                    child: Image.asset('assets/images/218.png'),
                  )
                ],
              )
            ]),
          ],
        ),
      ),
    );
  }
}
