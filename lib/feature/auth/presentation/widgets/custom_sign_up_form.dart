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
        return Form(
          child: Column(
            children: [
              CustomTextFormFeild(
                labelText: AppStrings.fristName,
                onChanged: (fristName) {
                  BlocProvider.of<AuthCubit>(context).firstName = fristName;
                },
              ),
              CustomTextFormFeild(
                labelText: AppStrings.lastName,
                onChanged: (lastName) {
                  BlocProvider.of<AuthCubit>(context).lastName = lastName;
                },
              ),
              CustomTextFormFeild(
                labelText: AppStrings.emailAddress,
                onChanged: (emailAddress) {
                  BlocProvider.of<AuthCubit>(context).emailAddress =
                      emailAddress;
                },
              ),
              CustomTextFormFeild(
                labelText: AppStrings.password,
                onChanged: (password) {
                  BlocProvider.of<AuthCubit>(context).password = password;
                },
              ),
              const TermsAndCondationWidget(),
              const SizedBox(height: 88),
              CustomBtn(
                text: AppStrings.signUp,
                onPressed: () {
                  BlocProvider.of<AuthCubit>(
                    context,
                  ).signUpWithEmailAndPassword();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
