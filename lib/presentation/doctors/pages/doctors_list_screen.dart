import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:iconly/iconly.dart';
import 'package:medical_app/core/configs/theme/app_colors.dart';
import 'package:medical_app/features/doctors/presentation/widgets/doctor_list_view.dart';

class DoctorsListScreen extends StatefulWidget {
  const DoctorsListScreen({super.key});

  @override
  State<DoctorsListScreen> createState() => _DoctorsListScreenState();
}

class _DoctorsListScreenState extends State<DoctorsListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(IconlyLight.arrow_left_2,
              color: AppColors.primaryColor),
          onPressed: () => context.go('/home'),
        ),
        title: Text("Doctors",
            style: GoogleFonts.leagueSpartan(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: AppColors.primaryColor,
            )),
        actions: [
          IconButton(
            style: ButtonStyle(
              backgroundColor:
                  WidgetStateProperty.all(AppColors.secondaryColor),
            ),
            onPressed: () {},
            icon: HugeIcon(
              icon: HugeIcons.strokeRoundedSearch01,
              color: AppColors.primaryColor,
              size: 20,
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
                icon: HugeIcons.strokeRoundedFilterHorizontal,
                color: AppColors.primaryColor,
                size: 20,
              ),
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Row(
              spacing: 4,
              children: [
                Text("Sort By",style: GoogleFonts.leagueSpartan(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: AppColors.textDarkColor,
                ),),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(46, 22),
                    padding: EdgeInsets.zero,
                    backgroundColor: Color(0xFF2A5AD7), // Blue button
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {},
                  child: Text("A > Z",style: GoogleFonts.leagueSpartan(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),),
                ),
                CircleAvatar(
                    radius: 10,
                    backgroundColor: AppColors.secondaryColor,
                    child: HugeIcon(
                      size: 12,
                      color: AppColors.primaryColor,
                      icon: HugeIcons.strokeRoundedStar,
                    )),
                CircleAvatar(
                    radius: 10,
                    backgroundColor: AppColors.secondaryColor,
                    child: HugeIcon(
                      size: 12,
                      color: AppColors.primaryColor,
                      icon: HugeIcons.strokeRoundedFavourite,
                    )),
                CircleAvatar(
                    radius: 10,
                    backgroundColor: AppColors.secondaryColor,
                    child: HugeIcon(
                      size: 12,
                      color: AppColors.primaryColor,
                      icon: HugeIcons.strokeRoundedGraduateFemale,
                    )),
                CircleAvatar(
                    radius: 10,
                    backgroundColor: AppColors.secondaryColor,
                    child: HugeIcon(
                      size: 12,
                      color: AppColors.primaryColor,
                      icon: HugeIcons.strokeRoundedGraduateMale,
                    )),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: DoctorListView(),
      ),
    );
  }
}
