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
        backgroundColor: bgColor,
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.w),
              child: Row(
                children: [
                  Container(
                    height: 35.h,
                    width: 35.w,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(50.r)),
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ), 
                  SizedBox(width: 10.w,),
                  Container(
                    height: 35.h,
                    width: 35.w,
                    decoration: BoxDecoration(),
                    child: Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                  ),
              SizedBox(width: 15.w,),
                  Container(
                  
                 
                    decoration: BoxDecoration(
                   
                    ),
            
                    child: Text("Home",style: GoogleFonts.robotoSerif(color: Colors.white, fontSize: 20.sp),),
                  ), 
              SizedBox(width: 15.w,),
                    InkWell(
                  onTap: (){
            
                  },
                  child: Container(
                    height: 35.h, 
                    width: 35.w,
                   
                    child: Image.asset("assets/mode.png")),
                ),
                  SizedBox(width: 5.w,),
            
                     Container(
                    height: 35.h,
                    width: 35.w,
                    decoration: BoxDecoration(
                      border: Border.all(color:Colors.white), 
                      borderRadius: BorderRadius.circular(50.r)
                    ),
            
                    child: Image.asset("assets/profile.png")
                  ),
            
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 30, right: 30, top: 20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(color: whiteColor, 
              
              borderRadius: BorderRadius.circular(10.r)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 90,
                    child: Column(
                      children: [
                        Container(
                          child: Image.asset("assets/reward.png"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Text(
                            "Total Point",
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 90,
                    child: Column(
                      children: [
                        Container(
                          child: Image.asset("assets/transaction.png"),
                        ),
                        Text(
                          "Today Transactions",
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 90,
                    child: Column(
                      children: [
                        Container(
                          child: Image.asset("assets/entrepreneur 1.png"),
                        ),
                        Text(
                          "Total Merchant",
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            // ClipPath(
            //   clipper: Clip1Clipper(),
            //   child: Container(
            //     height: 100,
            //     width: 100,
            //     decoration: BoxDecoration(
            //       color: Colors.black,
            //     ),
            //     child: Text(
            //       "50% OFF",
            //       style: TextStyle(color: Colors.white),
            //     ),
            //   ),
            // )

            Expanded(
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 10.w),
                    
            
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50.r),
                  topRight: Radius.circular(50.r)
                  )
                ),
            
             child: Column(
              children: [

                Container(
                  height: 140.h,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        alignment: Alignment.topCenter,
                        height: 151.h, 
                        width: 165.w,
                         margin: EdgeInsets.symmetric(horizontal: 5.w),
                          
                            
                      decoration: BoxDecoration(
                        color: Colors.grey,
                       
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 100.w, 
                            color: Colors.red,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                          
                                Container(
                                  alignment: Alignment.center,
                                  height: 35.h,
                                  margin: EdgeInsets.all(10),
                             width: 80.w,
                            decoration: BoxDecoration(
                                          color: Color(0xff4285F4), 
                            ),
                                      
                            child: Text("Lite", style: GoogleFonts.robotoSerif(
                              fontSize: 15.sp, fontWeight: FontWeight.w600, color: Colors.white
                            ),)
                                            ),
                                            SizedBox(height: 10.h), 
                               Container(
                                 padding: EdgeInsets.only(left: 5.w )
                                 ,
                                          
                            decoration: BoxDecoration(
                                       
                            ),
                                      
                            child: Text("Only assigned Offer", style: GoogleFonts.robotoSerif(
                              fontSize: 13.sp, fontWeight: FontWeight.w400, color: Colors.white
                            ),)
                                            ),
                              ],
                            ),
                          ),
                
                          Container(
                              width: 60.w, 
                            
                              child:       ClipPath(
              clipper: Clip1Clipper(),
              child: Container(
                padding: EdgeInsets.only(top: 0),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Color(0xff494646)
                // ),
                // child: Text(
                //   "50% OFF",
                //   style: TextStyle(color: Colors.white),
                 ),
              ),
            ),
                          ),
                        ],
                      ),
                      ),
                    ],
                  ),
                )
              ],
             ),
              
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Clip1Clipper extends CustomClipper<Path> {
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}
