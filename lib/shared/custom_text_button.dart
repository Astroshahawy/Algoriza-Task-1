import 'package:flutter/material.dart';

import 'package:task_1/shared/constants.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    Key? key,
    required this.onTap,
    required this.title,
    this.isBlueColor = true,
    this.isNormalFont = true,
    required this.fontWeight,
    required this.fontSize,
  }) : super(key: key);

  final VoidCallback onTap;
  final String title;
  final bool isBlueColor;
  final bool isNormalFont;
  final FontWeight fontWeight;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        title,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          fontFamily: isNormalFont ? null : 'Poppins',
          color: isBlueColor ? kBlueColor : kTealColor,
        ),
      ),
    );
  }
}
