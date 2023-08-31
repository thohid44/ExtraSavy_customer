import 'package:extrasavy_customer/homePage.dart';
import 'package:extrasavy_customer/src/Utils/colors.dart';
import 'package:extrasavy_customer/widgets/custom_icon_widget.dart';
import 'package:extrasavy_customer/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            customText(
                "Log in to Extrasavy", Colors.white, 16.sp, FontWeight.bold, 0),
                SizedBox(height: 10.h,) , 
            customText(
                "Welcome back! Sign in using your social account or email to continue us",
                Colors.white,
                14.sp,
                FontWeight.normal,40),
      
                  SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                customIconWidget(
                  iconLink: "assets/facebook.png",
                ),
                customIconWidget(
                  iconLink: "assets/google.png",
                ),
                customIconWidget(
                  iconLink: "assets/apple.png",
                )
              ],
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
                 height: 45.h,
              width: 300.w,
              child: TextField(
                  decoration: InputDecoration(
                      labelText: "Your Email",
                      hintText: "Your Email",
                      hintStyle: TextStyle(fontSize: 15.sp, color: Colors.white),
                      border: OutlineInputBorder())),
            ),
            SizedBox(
              height: 10.h,
            ),
              Container(
                height: 45.h,
              width: 300.w,
              child: TextField(
                  decoration: InputDecoration(
                      labelText: "Your Password",
                      hintText: "Your Password",
                      hintStyle: TextStyle(fontSize: 15.sp, color: Colors.white),
                      enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)
                      )
                      )),
            ),
            SizedBox(
              height: 20.h,
            ),
            GestureDetector( 
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
              },
              child: Container(
                height: 45,
                width: 200,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(10)),
                child: Text(
                  "Log in",
                  style: TextStyle(
                      fontSize: 17.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
