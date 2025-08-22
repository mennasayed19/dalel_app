import 'package:dalel/core/utils/app_color.dart';
import 'package:dalel/core/utils/app_text_syle.dart';
import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({
    super.key,
    this.color,
    required this.text,
    required this.onPressed,
  });
  final Color? color;
  final String text;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          text,

          style: CustomTextStyles.poppins500style24.copyWith(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
