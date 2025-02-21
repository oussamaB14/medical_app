import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:medical_app/app/theme/colors.dart';
import 'package:medical_app/presentation/shared/appText.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(
              'Hi, Welcome back',
              color: AppColors.primaryColor,
              style: AppText.bodyThin(context),
            ),
            AppText(
              'Jhon Doe',
              style: AppText.bodySmall(context),
            ),
          ],
        ),
        actions: [
          IconButton(
            style: ButtonStyle(
                backgroundColor:
                    WidgetStateProperty.all(AppColors.secondaryColor)),
            onPressed: () {},
            icon: HugeIcon(
              icon: HugeIcons.strokeRoundedNotification01,
              color: AppColors.primaryColor,
            ),
          ),
          IconButton(
            style: ButtonStyle(
                backgroundColor:
                    WidgetStateProperty.all(AppColors.secondaryColor)),
            onPressed: () {},
            icon: HugeIcon(
              icon: HugeIcons.strokeRoundedSettings02,
              color: AppColors.primaryColor,
            ),
          ),
        ],
        leading: CircleAvatar(
            backgroundImage: AssetImage(
          ' assets/images/person.png',
        )),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(4),
          child: Column(
            children: [
              Row(children: [
                HugeIcon(
                  icon: HugeIcons.strokeRoundedStethoscope,
                  color: AppColors.primaryColor,
                ),
                HugeIcon(
                  icon: HugeIcons.strokeRoundedFavourite,
                  color: AppColors.primaryColor,
                ),
              ])
            ],
          ),
        ),
      ),
    );
  }
}
