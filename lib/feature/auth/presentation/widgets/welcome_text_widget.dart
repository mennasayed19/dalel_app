import 'package:dalel/core/utils/app_text_syle.dart';
import 'package:flutter/material.dart';

class WelcomeTextWidget extends StatelessWidget {
  const WelcomeTextWidget({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Align(child: Text(text, style: CustomTextStyles.poppins600style28));
  }
}
