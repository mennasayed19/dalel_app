import 'package:dalel/core/functions/navigation.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_syle.dart';
import 'package:dalel/core/widgets/custombtn.dart';
import 'package:dalel/feature/on_boarding/data/models/on_boarding_model.dart';
import 'package:flutter/widgets.dart';

class Getbuttons extends StatelessWidget {
  const Getbuttons({
    super.key,
    required this.currentIndex,
    required this.controller,
  });
  final int currentIndex;
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    if (currentIndex == onBoardingData.length - 1) {
      return Column(
        children: [
          CustomBtn(
            text: AppStrings.createAccount,
            onPressed: () {
              customReplacementNavigate(context, "/signUp");
            },
          ),
          SizedBox(height: 5),
          GestureDetector(
            onTap: () {
              customReplacementNavigate(context, "/logIn");
            },
            child: Text(
              AppStrings.loginNow,
              style: CustomTextStyles.poppins300style16.copyWith(
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      );
    } else {
      return CustomBtn(
        text: AppStrings.next,
        onPressed: () {
          controller.nextPage(
            duration: Duration(microseconds: 200),
            curve: Curves.bounceIn,
          );
        },
      );
    }
  }
}
