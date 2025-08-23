import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_syle.dart';
import 'package:dalel/feature/auth/presentation/widgets/custom_check_box.dart';
import 'package:flutter/widgets.dart';

class TermsAndCondationWidget extends StatelessWidget {
  const TermsAndCondationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: AppStrings.iHaveAgreeToOur,
                style: CustomTextStyles.poppins400style12,
              ),
              TextSpan(
                text: AppStrings.termsAndCondition,
                style: CustomTextStyles.poppins400style12.copyWith(
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
