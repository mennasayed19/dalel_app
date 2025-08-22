import 'package:dalel/feature/auth/presentation/views/login.dart';
import 'package:dalel/feature/auth/presentation/views/signup.dart';
import 'package:dalel/feature/on_boarding/presentation/view/on_boarding_view.dart';
import 'package:dalel/feature/splash/presentaion/views/splash_view.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(path: "/", builder: (context, state) => const SplashView()),
    GoRoute(path: "/onBoarding", builder: (context, state) => OnBoardingView()),
    GoRoute(path: "/signUp", builder: (context, state) => SignUpView()),
    GoRoute(path: "/logIn", builder: (context, state) => LoginView()),
  ],
);
