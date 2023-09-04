import 'package:extrasavy_customer/src/Utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(


          children: [
            
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 15.w),
              child: Card(
                elevation: 5,
                child: Row(
                  children: [
                    Container(
                      width: 230.w,
                      height: 200.h,
                   
                      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          
                      Container(
                      width: 100.w,
                      margin: EdgeInsets.only(top: 10.h),
                      height: 35.h,
                     alignment: Alignment.center,
                     decoration: BoxDecoration(
                       color: Color(0xffFBBC04),
                       borderRadius: BorderRadius.circular(5.r)
                     ),
                     child: Text("Premium", 
                     style: GoogleFonts.robotoSerif(
                      color: Colors.white, 
                      fontSize: 15.sp, fontWeight: FontWeight.bold
                     ),),
                    ),

                           Container(
                      width: 225.w,
                      margin: EdgeInsets.only(top: 10.h),
                    
                     alignment: Alignment.center,
                     decoration: BoxDecoration(
                     
                  
                     ),
                     child: Text("Include all Standard Offer with New Offer", 
                     style: GoogleFonts.robotoSerif(
                      color: Colors.black, 
                      fontSize: 10.sp, fontWeight: FontWeight.w500
                     ),),
                    ),

       Container(
                      width: 225.w,
                      margin: EdgeInsets.only(top: 5.h),
                       padding: EdgeInsets.symmetric(horizontal: 8.w),
                     alignment: Alignment.center,
                     decoration: BoxDecoration(
                     
                  
                     ),
                     child: Text("** All offer is specified for specific Client Category", 
                     style: GoogleFonts.robotoSerif(
                      color: Colors.black, 
                      fontSize: 10.sp, fontWeight: FontWeight.normal
                     ),),
                    ),
                    
       Container(
                      width: 225.w,
                      margin: EdgeInsets.only(top: 5.h),
                     padding: EdgeInsets.symmetric(horizontal: 8.w),
                     alignment: Alignment.center,
                     decoration: BoxDecoration(
                     
                  
                     ),
                     child: Text("** Only admin can upgrade the package & can manually assign point with any merchant.", 
                     style: GoogleFonts.robotoSerif(
                      color: Colors.black, 
                      fontSize: 10.sp, fontWeight: FontWeight.normal
                     ),),
                    ),
                        ],
                      ),
                    ),

                      Container(
                      width: 70.w,
                      height: 90.h,
                      color: Colors.amberAccent,
                      child: Image.asset("assets/reputation1.png"),
                    )
                  ],
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}
