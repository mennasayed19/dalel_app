import 'package:dalel/core/utils/app_color.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/custombtn.dart';
import 'package:dalel/feature/auth/auth_cubit/cubit/auth_cubit.dart';
import 'package:dalel/feature/auth/auth_cubit/cubit/auth_state.dart';
import 'package:dalel/feature/auth/presentation/widgets/custom_text_feild.dart';
import 'package:dalel/feature/auth/presentation/widgets/trams_and_condation_widget.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSignUpForm extends StatelessWidget {
  const CustomSignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {},
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Form(
          key: authCubit.signupformkey,
          child: Column(
            children: [
              CustomTextFormFeild(
                labelText: AppStrings.fristName,
                onChanged: (fristName) {
                  authCubit.firstName = fristName;
                },
              ),
              CustomTextFormFeild(
                labelText: AppStrings.lastName,
                onChanged: (lastName) {
                  authCubit.lastName = lastName;
                },
              ),
              CustomTextFormFeild(
                labelText: AppStrings.emailAddress,
                onChanged: (emailAddress) {
                  authCubit.emailAddress = emailAddress;
                },
              ),
              CustomTextFormFeild(
                labelText: AppStrings.password,
                onChanged: (password) {
                  authCubit.password = password;
                },
              ),
              const TermsAndCondationWidget(),
              const SizedBox(height: 88),
              CustomBtn(
                text: AppStrings.signUp,
                color: authCubit.updateterms == false
                    ? AppColors.deepGrey
                    : null,
                onPressed: () {
                  if (authCubit.updateterms == true) {
                    if (authCubit.signupformkey.currentState!.validate()) {
                      authCubit.signUpWithEmailAndPassword();
                    }
                  }
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
