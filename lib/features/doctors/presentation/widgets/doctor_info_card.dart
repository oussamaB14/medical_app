import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:iconly/iconly.dart';
import 'package:medical_app/core/configs/theme/app_colors.dart';
import 'package:medical_app/features/doctors/domain/entities/doctor_entity.dart';

class DoctorInfoCard extends StatelessWidget {
  final DoctorEntity doctor;

  const DoctorInfoCard({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 292,
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        color: AppColors.secondaryColor, // Light blue background
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Doctor's Profile Image
                  CircleAvatar(
                    radius: 70,
                    backgroundImage: NetworkImage(doctor.avatar),
                  ),
                  const SizedBox(width: 12),

                  // Doctor Details
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Container(
                            width: 108,
                            height: 27,
                            decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.circular(
                                  25), // Fully rounded edges
                            ),
                            child: Row(
                              children: [
                                // Circular Icon Container
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: CircleAvatar(
                                      radius: 10,
                                      backgroundColor: AppColors.secondaryColor,
                                      child: HugeIcon(
                                        size: 14,
                                        color: AppColors.primaryColor,
                                        icon: HugeIcons.strokeRoundedAward04,
                                      )),
                                ),

                                const SizedBox(
                                    width: 10), // Spacing between icon and text

                                // Experience Text
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "15 years\n",
                                        style: GoogleFonts.leagueSpartan(
                                          fontSize: 12,
                                          fontWeight:
                                              FontWeight.bold, // Make it bold
                                          color: Colors.white,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "experience",
                                        style: GoogleFonts.leagueSpartan(
                                          fontSize: 12,
                                          fontWeight:
                                              FontWeight.w400, // Normal weight
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Container(
                              width: 108,
                              //height: 108,
                              decoration: BoxDecoration(
                                color: AppColors.primaryColor,
                                borderRadius: BorderRadius.circular(
                                    20), // Fully rounded edges
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: RichText(
                                    text: TextSpan(children: [
                                  TextSpan(
                                    text: "Focus: ",
                                    style: GoogleFonts.leagueSpartan(
                                      fontSize: 12,
                                      fontWeight:
                                          FontWeight.bold, // Normal weight
                                      color: Colors.white,
                                    ),
                                  ),
                                  TextSpan(
                                    text: doctor.focus,
                                    style: GoogleFonts.leagueSpartan(
                                      fontSize: 12,
                                      fontWeight:
                                          FontWeight.normal, // Normal weight
                                      color: Colors.white,
                                    ),
                                  ),
                                ])),
                              )),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  width: 257,
                  height: 39,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Column(
                    children: [
                      Text(
                        doctor.name,
                        style: GoogleFonts.leagueSpartan(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: AppColors.primaryColor,
                        ),
                      ),
                      Text(
                        doctor.specialty,
                        style: GoogleFonts.leagueSpartan(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.textDarkColor,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    child: Card(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                        child: Row(
                          spacing: 4,
                          children: [
                            SizedBox(height: 4),
                            Icon(
                              Icons.star,
                              size: 15,
                              color: AppColors.primaryColor,
                            ),
                            Text('5'),
                          ],
                        )),
                  ),
                  SizedBox(
                    width: 50,
                    child: Card(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                        child: Row(
                          spacing: 4,
                          children: [
                            SizedBox(height: 4),
                            HugeIcon(
                              size: 12,
                              color: AppColors.primaryColor,
                              icon: HugeIcons.strokeRoundedMessage01,
                            ),
                            Text('40'),
                          ],
                        )),
                  ),
                  SizedBox(
                    width: 166,
                    child: Card(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                        child: Row(
                          spacing: 4,
                          children: [
                            SizedBox(height: 4),
                            HugeIcon(
                              size: 12,
                              color: AppColors.primaryColor,
                              icon: HugeIcons.strokeRoundedAlarmClock,
                            ),
                            Text(
                              'Mon-Sat / 9:00AM - 5:00PM',
                              style: GoogleFonts.leagueSpartan(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: AppColors.primaryColor,
                              ),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
              Row(
                spacing: 4,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(82, 21),
                      padding: EdgeInsets.zero,
                      backgroundColor: Color(0xFF2A5AD7), // Blue button
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      spacing: 2,
                      children: [
                        Icon(
                          IconlyLight.calendar,
                          color: Colors.white,
                          size: 15,
                        ),
                        Text("Schedule"),
                      ],
                    ),
                  ),
                  Spacer(),
                  CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.white,
                      child: HugeIcon(
                        size: 12,
                        color: AppColors.primaryColor,
                        icon: HugeIcons.strokeRoundedAlert01,
                      )),
                  CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.white,
                      child: HugeIcon(
                        size: 12,
                        color: AppColors.primaryColor,
                        icon: HugeIcons.strokeRoundedHelpCircle,
                      )),
                  CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.white,
                      child: HugeIcon(
                        size: 12,
                        color: AppColors.primaryColor,
                        icon: HugeIcons.strokeRoundedStar,
                      )),
                  CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.white,
                      child: HugeIcon(
                        size: 12,
                        color: AppColors.primaryColor,
                        icon: HugeIcons.strokeRoundedFavourite,
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
