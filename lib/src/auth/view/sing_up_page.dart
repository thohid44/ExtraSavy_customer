import 'package:extrasavy_customer/src/Utils/colors.dart';
import 'package:extrasavy_customer/widgets/custom_icon_widget.dart';
import 'package:extrasavy_customer/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),

            actions: [
              InkWell(
                onTap: (){
                  
                },
                child: Container(
                  margin: EdgeInsets.only(right: 15.w),
                  child: Image.asset("assets/mode.png")),
              )
            ],
      ),
      body: Column(
        children: [
          customText(
              "Sign up with Email", Colors.white, 16.sp, FontWeight.bold, 0),
              SizedBox(height: 10.h,) , 
          customText(
              "Get chatting with friends and family today by signing up for our chat app!",
              Colors.white,
              14.sp,
              FontWeight.normal,40),

                SizedBox(
            height: 20.h,
          ),
         
          SizedBox(
            height: 20.h,
          ),
          
 Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: [
  Container(
             width: 140.w,
            child: Divider(color: Colors.white, thickness: 1,)), 
            customText("OR", Colors.white, 15.sp, FontWeight.bold, 0), 
             Container(
             width: 140.w,
            child: Divider(color: Colors.white, height: 1.h,)), 

],
 ),
           SizedBox(
            height: 20.h,
          ),
          Container(
            width: 300.w,
            child: TextField(
                decoration: InputDecoration(
                    labelText: "Your Email",
                    hintText: "Your Email",
                    hintStyle: TextStyle(fontSize: 15.sp, color: Colors.white),
                    border: OutlineInputBorder())),
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            height: 45,
            width: 200,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Text(
              "creat an account",
              style: TextStyle(
                  fontSize: 17.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}


