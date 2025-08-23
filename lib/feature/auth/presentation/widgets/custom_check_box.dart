import 'package:dalel/core/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({super.key});

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool? value = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      side: BorderSide(color: AppColors.grey),
      value: value,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      onChanged: (newvalue) {
        setState(() {});
        value = newvalue;
      },
    );
  }
}
