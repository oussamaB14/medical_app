import 'package:go_router/go_router.dart';
import 'package:medical_app/app/wrapper.dart';
import 'package:medical_app/presentation/doctors/pages/doctors_list_screen.dart';
import 'package:medical_app/presentation/onboarding/onboarding_screen.dart';
import 'package:medical_app/presentation/splash/splash_screen.dart';
import 'package:medical_app/presentation/doctors/pages/doctor_info_screen.dart';

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
      builder: (context, state) => const Wrapper(),
    ),
    GoRoute(
      path: '/doctors',
      builder: (context, state) => const DoctorsListScreen(),
    ),
    GoRoute(
      path: '/doctor/:id',
      builder: (context, state) {
        final doctorId = state.pathParameters['id']!;
        return DoctorInfoScreen(doctorId: doctorId);
      },
    ),
  ],
);
