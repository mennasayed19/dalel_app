import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/utils/app_text_syle.dart';
import 'package:dalel/feature/on_boarding/presentation/view/widget/smooth_page_indicator.dart';
import 'package:flutter/material.dart';

class OnBoardingWidgetBody extends StatelessWidget {
  OnBoardingWidgetBody({super.key});
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: PageView.builder(
        physics: BouncingScrollPhysics(),

        controller: _controller,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 290,
                width: 343,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(Assets.imagesOnBoarding),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 24),
              CustomSmoothPageIndicator(controller: _controller),
              SizedBox(height: 32),
              Text(
                "Explore The history with Dalel in a smart way",
                style: CustomTextStyles.poppins500style24,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 16),
              Text(
                "Explore The history with Dalel in a smart way",
                style: CustomTextStyles.poppins300style16,
                textAlign: TextAlign.center,
              ),
            ],
          );
        },
      ),
    );
  }
}
