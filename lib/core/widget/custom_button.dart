import 'package:flutter/material.dart';

import 'package:booklyapp/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.backgroundColor,
    required this.textcolor,
    this.borderRadius,
    required this.text,
    this.fontsize, this.onPressed,
  }) : super(key: key);
  final Color backgroundColor;
  final Color textcolor;
  final BorderRadius? borderRadius;
  final String text;
  final double? fontsize;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(16),
          ),
        ),
        child: Text(
          text,
          style: Styles.textStyle18.copyWith(
            color: textcolor,
            fontWeight: FontWeight.w900,
            fontSize: fontsize ?? 18,
          ),
        ),
      ),
    );
  }
}
