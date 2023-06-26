import 'package:booklyapp/core/widget/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children:[
          Expanded(
            child: CustomButton(
              text: "Free",
              backgroundColor: Colors.white,
              textcolor: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
                
              ),
              
            ),
          ),
          Expanded(
            child: CustomButton(
              text: "Free Preview",
              fontsize: 15,
              backgroundColor: Color(0xffEf8262),
              textcolor: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
