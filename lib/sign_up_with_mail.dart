import 'package:flutter/material.dart';

class SignUpWithMail extends StatelessWidget {
  const SignUpWithMail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
       
             Container(
            child: Text("Connect friends easily & quickly",style: TextStyle(
              fontSize: 18, 
              fontWeight: FontWeight.bold
            ),),
          ),
       
              Container(
            child: Text("Our chat app is the perfect way to stay connected with friends and family.",style: TextStyle(
              fontSize: 18, 
              fontWeight: FontWeight.bold
            ),),
          ),
        ],
      ),
    );
  }
}