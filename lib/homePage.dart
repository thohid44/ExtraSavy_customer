import 'package:extrasavy_customer/src/Utils/colors.dart';
import 'package:flutter/material.dart';

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
              margin: EdgeInsets.only(left: 30, right: 30, top: 20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: whiteColor
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
                          "Today Transaction",
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

            ClipPath(
              clipper: Clip1Clipper(),
              child: Container(
                height: 100,
                width: 100, 
                decoration: BoxDecoration(
                  color: Colors.black, 
                       
            
                ),
                child: Text("50% OFF", style: TextStyle(color: Colors.white),),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Clip1Clipper extends  CustomClipper<Path>{
  Path getClip(Size size){

    Path path= Path();

  
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
