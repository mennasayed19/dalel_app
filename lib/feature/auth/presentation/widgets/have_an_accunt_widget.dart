import 'package:dalel/core/utils/app_color.dart';
import 'package:dalel/core/utils/app_text_syle.dart';
import 'package:flutter/widgets.dart';

class HaveAnAccuntWidget extends StatelessWidget {
  const HaveAnAccuntWidget({
    super.key,
    required this.text1,
    required this.text2,
  });
  final String text1, text2;
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(text: text1, style: CustomTextStyles.poppins400style12),
          TextSpan(
            text: text2,
            style: CustomTextStyles.poppins400style12.copyWith(
              color: AppColors.lightGrey,
            ),
          ),
        ],
      ),
    );
  }
}
