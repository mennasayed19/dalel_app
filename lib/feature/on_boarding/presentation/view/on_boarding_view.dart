import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/custombtn.dart';
import 'package:dalel/feature/on_boarding/presentation/view/widget/button_nav.dart';
import 'package:dalel/feature/on_boarding/presentation/view/widget/on_boarding_widget_body.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatefulWidget {
  OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: ListView(
            children: [
              SizedBox(height: 40),
              ButtonNav(),
              OnBoardingWidgetBody(),
              SizedBox(height: 60),
              CustomBtn(text: AppStrings.next),
              SizedBox(height: 17),
            ],
          ),
        ),
      ),
    );
  }
}
