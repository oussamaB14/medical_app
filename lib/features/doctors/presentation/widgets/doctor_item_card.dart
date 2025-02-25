import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:medical_app/common/widgets/app_text.dart';
import 'package:medical_app/core/configs/theme/app_colors.dart';
import 'package:medical_app/features/doctors/domain/entities/doctor_entity.dart';

class DoctorItemCard extends StatelessWidget {
  final DoctorEntity doctor;
  
  const DoctorItemCard({
    super.key,
    required this.doctor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      width: 300,
      height: 110,
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Hero(
            tag: 'doctor_avatar_${doctor.id}',
            child: CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                doctor.avatar.isNotEmpty 
                  ? doctor.avatar 
                  : 'https://via.placeholder.com/150'
              ),
              onBackgroundImageError: (exception, stackTrace) {
                // Handle image load errors
              },
            ),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 220,
                child: Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText(
                            doctor.name,
                            style: GoogleFonts.leagueSpartan(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: AppColors.primaryColor,
                            ),
                          ),
                          AppText(
                            doctor.specialty,
                            style: GoogleFonts.leagueSpartan(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: AppColors.textDarkColor,
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
              Row(
                //spacing: 10,
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
                            Text('5'),
                          ],
                        )),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.white,
                      child: HugeIcon(
                        size: 12,
                        color: AppColors.primaryColor,
                        icon: HugeIcons.strokeRoundedHelpCircle,
                      )),
                  SizedBox(width: 8),
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
          )
        ],
      ),
    );
  }
}
