import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_syle.dart';
import 'package:flutter/material.dart';

class ButtonNav extends StatelessWidget {
  const ButtonNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Text(
        AppStrings.skip,
        style: CustomTextStyles.poppins300style16.copyWith(
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
