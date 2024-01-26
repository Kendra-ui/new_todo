import 'package:flutter/material.dart';
import 'package:new_todo/onboarding/onboarding_wrapper.dart';
import 'package:new_todo/provider/user_provider.dart';
import 'package:provider/provider.dart';



// ignore: must_be_immutable
class Home extends StatefulWidget {
   
   const Home({super.key, });

  @override
  State<Home> createState() => _HomeState();
}


class _HomeState extends State<Home> {

  @override
  void initState() {
    super.initState();
WidgetsBinding.instance.addPostFrameCallback((timeStamp) {

   Provider.of<UserProvider>(context, listen: false).dataBaseInitialize();
  
  
});

  }
 @override
  Widget build(BuildContext context) {
    
    return const OnboardingWrapper();
   
 
  }
  }

 

