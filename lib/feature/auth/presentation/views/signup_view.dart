import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/feature/auth/presentation/widgets/custom_sign_up_form.dart';
import 'package:dalel/feature/auth/presentation/widgets/have_an_accunt_widget.dart';
import 'package:dalel/feature/auth/presentation/widgets/welcome_text_widget.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: SizedBox(height: 150)),
              SliverToBoxAdapter(
                child: WelcomeTextWidget(text: AppStrings.welcome),
              ),

              SliverToBoxAdapter(child: SizedBox(height: 24)),
              SliverToBoxAdapter(child: CustomSignUpForm()),

              SliverToBoxAdapter(child: SizedBox(height: 24)),

              SliverToBoxAdapter(
                child: HaveAnAccuntWidget(
                  text1: AppStrings.alreadyHaveAnAccount,
                  text2: AppStrings.signIn,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
