import 'package:go_router/go_router.dart';
import 'package:medical_app/presentation/home/pages/home_screen.dart';
import 'package:medical_app/presentation/onboarding/onboarding_screen.dart';
import 'package:medical_app/presentation/splash/splash_screen.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/onboarding',
      builder: (context, state) => const OnboardingScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
  ],
); 