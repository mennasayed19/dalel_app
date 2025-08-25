import 'package:dalel/core/utils/app_color.dart';
import 'package:dalel/feature/auth/auth_cubit/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        BlocProvider.of<AuthCubit>(
          context,
        ).updatetermsandcondation(newvalue: newvalue);
      },
    );
  }
}
