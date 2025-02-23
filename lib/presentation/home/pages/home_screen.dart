import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:medical_app/core/configs/theme/app_colors.dart';
import 'package:medical_app/common/widgets/app_text.dart';
import 'package:medical_app/presentation/home/widgets/date_timeline_view.dart';
import 'package:medical_app/presentation/home/widgets/home_app_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(110.0), // Set the height of the app bar
        child: HomeAppBar(),
      ),
      body: Column(
        children: [
        DateTimelineView(),
      ]),
    );
  }
}
