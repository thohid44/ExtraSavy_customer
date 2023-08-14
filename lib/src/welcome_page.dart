import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Text("Welcome",style: TextStyle(
              fontSize: 18, 
              fontWeight: FontWeight.bold
            ),),
          ),
          Container(
            child: Text("To",style: TextStyle(
              fontSize: 18, 
              fontWeight: FontWeight.bold
            ),),
          ),
          Container(
            child: Text("Xtrasavy",style: TextStyle(
              fontSize: 18, 
              fontWeight: FontWeight.bold
            ),),
          )
        ],
      ),
    ) );
  }
}