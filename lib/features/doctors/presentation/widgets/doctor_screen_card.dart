import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:medical_app/core/configs/theme/app_colors.dart';

class DoctorScreenCard extends StatefulWidget {
  const DoctorScreenCard({super.key});

  @override
  State<DoctorScreenCard> createState() => _DoctorScreenCardState();
}

class _DoctorScreenCardState extends State<DoctorScreenCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 131,
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        color: AppColors.secondaryColor, // Light blue background
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              // Doctor's Profile Image
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(
                    'assets/doctor.jpg'), // Replace with your image path
              ),
              const SizedBox(width: 12),
      
              // Doctor Details
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dr. Alexander Bennett, Ph.D.",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2A5AD7), // Blue color for name
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "Dermato-Genetics",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black87,
                      ),
                    ),
      
                    // Action Buttons
                    const SizedBox(height: 8),
                    Row(
                      spacing: 4,
                      children: [
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
                          child: Text("Info"),
                        ),
                        const SizedBox(width: 8),
      
                        // Icons Row
                        CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.white,
                            child: HugeIcon(
                              size: 12,
                              color: AppColors.primaryColor,
                              icon: HugeIcons.strokeRoundedCalendar01,
                            )),
                        CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.white,
                            child: HugeIcon(
                              size: 12,
                              color: AppColors.primaryColor,
                              icon: HugeIcons.strokeRoundedAlert02,
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
                              icon: HugeIcons.strokeRoundedFavourite,
                            )),
      
                        // IconButton(
                        //   icon: Icon(Icons.calendar_today, color: Colors.blue),
                        //   onPressed: () {},
                        // ),
                        // IconButton(
                        //   icon: Icon(Icons.info_outline, color: Colors.blue),
                        //   onPressed: () {},
                        // ),
                        // IconButton(
                        //   icon: Icon(Icons.help_outline, color: Colors.blue),
                        //   onPressed: () {},
                        // ),
                        // IconButton(
                        //   icon: Icon(Icons.favorite_border, color: Colors.blue),
                        //   onPressed: () {},
                        // ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
