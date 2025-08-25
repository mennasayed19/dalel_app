import 'package:dalel/core/utils/app_color.dart';
import 'package:dalel/core/utils/app_text_syle.dart';
import 'package:flutter/material.dart';

class CustomTextFormFeild extends StatelessWidget {
  const CustomTextFormFeild({
    super.key,
    required this.labelText,
    this.onChanged,
    this.onFieldSubmitted,
  });
  final String labelText;
  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return "the feild requried";
          } else {
            return null;
          }
        },
        onChanged: onChanged,
        onFieldSubmitted: onFieldSubmitted,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: CustomTextStyles.poppins500style18,
          border: getBorderStyle(),
          enabledBorder: getBorderStyle(),
          focusedBorder: getBorderStyle(),
        ),
      ),
    );
  }
}

OutlineInputBorder getBorderStyle() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(4),
    borderSide: BorderSide(color: AppColors.deepGrey),
  );
}
