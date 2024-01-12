
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xFF24A19C),
        ),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 4,
            ),
            Image.asset('assets/images/nlogo.png'),
            SizedBox(
              height: MediaQuery.of(context).size.height / 50,
            ),
            const Text(
              'Todyapp',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 50,
            ),
            const Text(
              'The best to do list applications for you',
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
