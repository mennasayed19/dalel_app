sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class AuthLoadingState extends AuthState {}

final class AuthSuccesState extends AuthState {}

final class AuthFailureState extends AuthState {
  final String errorMassage;

  AuthFailureState({required this.errorMassage});
}

final class AuthTermAndCondationUpdateState extends AuthState {}
