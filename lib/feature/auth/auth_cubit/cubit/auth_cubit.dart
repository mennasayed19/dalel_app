import 'package:dalel/feature/auth/auth_cubit/cubit/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  late String? firstName;
  late String? lastName;
  late String? emailAddress;
  late String? password;

  void signUpWithEmailAndPassword() async {
    try {
      emit(AuthLoadingState());
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
            email: emailAddress!,
            password: password!,
          );
      emit(AuthSuccesState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(
          AuthFailureState(errorMassage: 'The password provided is too weak.'),
        );
      } else if (e.code == 'email-already-in-use') {
        emit(
          AuthFailureState(
            errorMassage: 'The account already exists for that email.',
          ),
        );
      }
    } catch (e) {
      emit(AuthFailureState(errorMassage: e.toString()));
    }
  }
}
