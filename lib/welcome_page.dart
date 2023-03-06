// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget{
  
  @override
  Widget build(BuildContext context){
    final welcomePage = Padding(
      padding: const EdgeInsets.all(10.0),
      child: RichText(
        textAlign: TextAlign.center,
        text: const TextSpan(text: "Hello", style: TextStyle(color:Colors.black, fontSize: 50))
        )
      );
      return Scaffold(
          body: Center(
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: [
              welcomePage
              ],    
            ),

          ),
        );
  }

}