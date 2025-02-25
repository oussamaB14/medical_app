import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_app/core/configs/theme/app_colors.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              const Spacer(),
              // Logo and Title Section
              Column(
                children: [
                  Image.asset(
                    'assets/images/logo-blue.png',
                    width: 120,
                    height: 120,
                    //color: AppColors.primaryColor,
                  ),
                  const SizedBox(height: 24),
                  Text(
                    "Skin First",
                    style: GoogleFonts.leagueSpartan(
                      fontSize: 46,
                      fontWeight: FontWeight.w200,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              // Description
              Text(
                "Your trusted companion for all dermatological needs. Expert care at your fingertips.",
                textAlign: TextAlign.center,
                style: GoogleFonts.leagueSpartan(
                  fontSize: 16,
                  color: Colors.grey[600],
                  height: 1.5,
                ),
              ),
              const Spacer(),
              // Buttons Section
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // TODO: Implement login
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryColor,
                      minimumSize: const Size(207, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text(
                      'Log In',
                      style: GoogleFonts.leagueSpartan(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 12),
                  OutlinedButton(
                    onPressed: () {
                      // TODO: Implement signup
                    },
                    style: OutlinedButton.styleFrom(
                      minimumSize: const Size(207, 50),
                      backgroundColor: AppColors.secondaryColor,
                      side: BorderSide.none,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text(
                      'Sign Up',
                      style: GoogleFonts.leagueSpartan(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  TextButton(
                    onPressed: () => context.go('/home'),
                    child: Text(
                      'Continue as Guest',
                      style: GoogleFonts.leagueSpartan(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
