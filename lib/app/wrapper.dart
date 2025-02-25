import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:medical_app/core/configs/theme/app_colors.dart';
import 'package:medical_app/presentation/home/pages/home_screen.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({super.key});

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  int _selectedIndex = 0;

  // Placeholder pages - will be replaced with actual screens later
  final List<Widget> _pages = [
    const HomeScreen(),
    const Placeholder(), // Messages screen placeholder
    const Placeholder(), // Calendar screen placeholder
    const Placeholder(), // Profile screen placeholder
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Main content
          Positioned.fill(
            child: _pages[_selectedIndex],
          ),
          // Floating BottomNavigationBar
          Positioned(
            left: 20,
            right: 20,
            bottom: 20,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: BottomNavigationBar(
                currentIndex: _selectedIndex,
                onTap: _onItemTapped,
                backgroundColor: AppColors.primaryColor,
                elevation: 0,
                type: BottomNavigationBarType.fixed,
                selectedItemColor: Colors.white,
                unselectedItemColor: Colors.white.withValues(alpha: 0.6),
                showSelectedLabels: false,
                showUnselectedLabels: false,
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(IconlyLight.home),
                      label: 'Home',
                      activeIcon: Icon(IconlyBold.home)),
                  BottomNavigationBarItem(
                      icon: Icon(IconlyLight.chat),
                      label: 'Messages',
                      activeIcon: Icon(IconlyBold.chat)),
                  BottomNavigationBarItem(
                      icon: Icon(IconlyLight.calendar),
                      label: 'Calendar',
                      activeIcon: Icon(IconlyBold.calendar)),
                  BottomNavigationBarItem(
                      icon: Icon(IconlyLight.profile),
                      label: 'Profile',
                      activeIcon: Icon(IconlyBold.profile)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
