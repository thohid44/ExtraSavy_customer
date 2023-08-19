import 'package:extrasavy_customer/src/Utils/colors.dart';
import 'package:flutter/material.dart';

class customIconWidget extends StatelessWidget {
  String? iconLink;
  customIconWidget({super.key, this.iconLink});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
     
           
      },
      child: Container(
          alignment: Alignment.center,
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: iconBgColor, borderRadius: BorderRadius.circular(50)),
          child: Image.asset("$iconLink")),
    );
  }
}