import 'package:extrasavy_customer/src/Utils/colors.dart';
import 'package:extrasavy_customer/src/auth/view/loginPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:Scaffold(
      backgroundColor: bgColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            child: Text("Welcome",style: TextStyle(
              fontSize: 35, 
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),),
          ),
          Container(
            child: Text("To",style: TextStyle(
              fontSize: 35, 
                color: Colors.white,
              fontWeight: FontWeight.bold
            ),),
          ),
          Container(
            child: Text("Xtrasavy",style: TextStyle(
              fontSize: 56, 
                color: Colors.white,
              fontWeight: FontWeight.bold
            ),),
          ), 

          SizedBox(height: 30,) , 

          GestureDetector( 
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>LoginPage()));
            },
            child: Container(
              alignment: Alignment.center,
              height: 80, 
              width: 80, 
              decoration: BoxDecoration(
                color: goldColor,
                borderRadius: BorderRadius.circular(50)
              ),
              child: Text("Go",style: TextStyle(
                fontSize: 30, 
                  color: Colors.white,
                fontWeight: FontWeight.bold
              ),),
            ),
          )
        ],
      ),
    ) );
  }
}