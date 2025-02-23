import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:medical_app/common/widgets/app_text.dart';
import 'package:medical_app/core/configs/theme/app_colors.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(110.0), // Set the height of the app bar

      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 14.0),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/persone.png'),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(
              'Hi, Welcome back',
              color: AppColors.primaryColor,
              style: AppText.bodySmall(context),
            ),
            AppText(
              'John Doe',
              style: AppText.bodyMedium(context),
            ),
          ],
        ),
        actions: [
          IconButton(
            style: ButtonStyle(
              backgroundColor:
                  WidgetStateProperty.all(AppColors.secondaryColor),
            ),
            onPressed: () {},
            icon: HugeIcon(
              icon: HugeIcons.strokeRoundedNotification01,
              color: AppColors.primaryColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: IconButton(
              style: ButtonStyle(
                backgroundColor:
                    WidgetStateProperty.all(AppColors.secondaryColor),
              ),
              onPressed: () {},
              icon: HugeIcon(
                icon: HugeIcons.strokeRoundedSettings02,
                color: AppColors.primaryColor,
              ),
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    HugeIcon(
                      icon: HugeIcons.strokeRoundedStethoscope,
                      color: AppColors.primaryColor,
                    ),
                    SizedBox(height: 4),
                    AppText('Doctors', color: AppColors.primaryColor),
                  ],
                ),
                SizedBox(width: 8),
                Column(
                  children: [
                    HugeIcon(
                      icon: HugeIcons.strokeRoundedFavourite,
                      color: AppColors.primaryColor,
                    ),
                    SizedBox(height: 4),
                    AppText('Favorite', color: AppColors.primaryColor),
                  ],
                ),
                SizedBox(width: 8),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: IconButton(
                        // style: ButtonStyle(
                        //   backgroundColor:
                        //       WidgetStateProperty.all(Colors.white),
                        //   //minimumSize: WidgetStateProperty.all(Size(32, 32)),
                        // ),
                        icon: HugeIcon(
                          icon: HugeIcons.strokeRoundedFilterHorizontal,
                          color: AppColors.textDarkColor,
                          size: 18,
                        ),
                        onPressed: () {},
                        iconSize: 20,
                      ),
                      suffixIcon: IconButton(
                        icon: HugeIcon(
                          icon: HugeIcons.strokeRoundedSearch02,
                          color: AppColors.primaryColor,
                        ),
                        onPressed: () {},
                        iconSize: 20,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 10), // Adjust padding inside the field

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: AppColors.secondaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
