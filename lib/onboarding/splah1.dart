import 'package:flutter/material.dart';

class Splash1 extends StatefulWidget {
  const Splash1({Key? key}) : super(key: key);

  @override
  State<Splash1> createState() => _Splash1State();
}

class _Splash1State extends State<Splash1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / 20,
        ),
      
        Stack(children: <Widget>[
          Center(
          child: Image.asset(
        'assets/images/Iphone.png',
        height: 400,
          )),
          Positioned.fill(
          child: Align(
        alignment: Alignment.bottomCenter,
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
                'Your convenience in making a todo list',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width / 1.2,
                  child: const Text(
                    'Here\'s a mobile platform that helps you create task or to list so that it can help you in every job easier and faster',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  )),
            ],
          ),
        ),
          )),
          Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 200.0),
            child: Image.asset('assets/images/Frame215.png'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 200.0, bottom: 80),
            child: Image.asset('assets/images/Frame216.png'),
          )
        ],
          )
        ]),
      ],
    ));
  }
}
