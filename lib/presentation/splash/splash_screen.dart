import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_app/core/configs/theme/app_colors.dart';
import 'package:medical_app/presentation/home/pages/home_screen.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  Future<void> _navigateToHome() async {
    await Future.delayed(const Duration(seconds: 2));
    
    if (!mounted) return;
    
    context.go('/onboarding');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo
            Image.asset(
              'assets/images/logo.png',
              width: 150,
              height: 150,
            ),
            const SizedBox(height: 20),
            Text("Skin First",
                style: GoogleFonts.leagueSpartan(
                  fontSize: 48,
                  fontWeight: FontWeight.w200,
                  color: Colors.white,
                  textStyle: TextStyle()
                )),
            // Text("First",
            //     style: GoogleFonts.leagueSpartan(
            //       fontSize: 48,
            //       fontWeight: FontWeight.w200,
            //       color: Colors.white,
            //     )),
            Text("Dermatology center",
                style: GoogleFonts.leagueSpartan(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ))
          ], 
        ),
      ),
    );
  }
}
