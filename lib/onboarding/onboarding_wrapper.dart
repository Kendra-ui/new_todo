// ignore_for_file: avoid_print

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:new_todo/onboarding/splah1.dart';
import 'package:new_todo/onboarding/splash2.dart';
import 'package:new_todo/onboarding/splash3.dart';
import 'package:new_todo/splash_screen.dart';

class OnboardingWrapper extends StatefulWidget {
  const OnboardingWrapper({super.key});

  @override
  State<OnboardingWrapper> createState() => _OnboardingWrapperState();
}

class _OnboardingWrapperState extends State<OnboardingWrapper> {
  PageController pageController = PageController();
  int _currentPage = 0;

  final List<Widget> _pages = [
    const Splashscreen(),
    const Splash1(),
    const Splash2(),
  ];

  @override
  void initState() {
    super.initState();
    if (_currentPage == 0) {
      Timer(
        const Duration(seconds: 3),
        () => pageController.nextPage(
          duration: const Duration(milliseconds: 500),
          curve: Curves.linear,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _currentPage == 0 ? const Color(0xFF24A19C) : null,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 50,
          ),
          if (_currentPage != 0)
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Splash3()));
                  },
                  child: const Text(
                    'Skip',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        color: Color(0xFF24A19C),
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  )),
            ),
          Expanded(
              child: PageView(
            controller: pageController,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
              print("$_currentPage");
            },
            children: _pages,
          )),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(width: MediaQuery.of(context).size.width / 2.3),
              SizedBox(
                height: 6,
                width: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: _pages.asMap().entries.map((e) {
                    return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2),
                        child: Container(
                          height: 6,
                          width: _currentPage == e.key ? 24 : 8,
                          decoration: BoxDecoration(
                            color: _currentPage == 0
                                ? Colors.white
                                : _currentPage == e.key
                                    ? const Color(0xFF24A19C)
                                    : const Color(0xFFCBF1F0),
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ));
                  }).toList(),
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 16,
          ),
          if (_currentPage != 0)
            Container(
              width: MediaQuery.of(context).size.width / 1.5,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(3)),
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          const MaterialStatePropertyAll(Color(0xFF24A19C)),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)))),
                  onPressed: () {
                    pageController.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.linear);
                  },
                  child: const Text(
                    'Continue',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  )),
            ),
        ],
      ),
    );
  }
}
