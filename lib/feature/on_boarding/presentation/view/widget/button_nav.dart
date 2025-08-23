import 'package:dalel/core/database/cache/cache_helper.dart';
import 'package:dalel/core/functions/navigation.dart';
import 'package:dalel/core/services/service_locator.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_syle.dart';
import 'package:flutter/material.dart';

class ButtonNav extends StatelessWidget {
  const ButtonNav({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        getIt<CacheHelper>().saveData(key: 'isOnboardingVisited', value: true);
        customReplacementNavigate(context, "/signUp");
      },
      child: Align(
        alignment: Alignment.centerRight,
        child: Text(
          AppStrings.skip,
          style: CustomTextStyles.poppins300style16.copyWith(
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
