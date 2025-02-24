import 'package:flutter/material.dart';
import 'package:medical_app/core/configs/theme/app_colors.dart';

class AppointmentCard extends StatelessWidget {
  const AppointmentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: Text(
              "11 Wednesday - Today",
              style: TextStyle(
                color: Color(0xFF3366FF),
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  _timeSlot("9 AM"),
                  _dottedDivider()
                ],
              ),
              //_dottedDivider(),
              _timeSlot("10 AM", isAppointment: true),
              _timeSlot("11 AM"),
              Row(
                children: [
                  _timeSlot("12 PM"),
                  _dottedDivider()
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _timeSlot(String time, {bool isAppointment = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            time,
            style: const TextStyle(
              color: Color(0xFF3366FF),
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(width: 8),
          if (isAppointment)
            SizedBox(
              width: 180,
              child: _appointmentCard(),
            ),
        ],
      ),
    );
  }

  Widget _dottedDivider() {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 8),
      child: Row(
        children: List.generate(
          15,
          (index) => const Padding(
            padding: EdgeInsets.symmetric(horizontal: 2),
            child: SizedBox(
              width: 4,
              height: 2,
              child: DecoratedBox(
                decoration: BoxDecoration(color: Colors.blue),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _appointmentCard() {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Dr. Olivia Turner, M.D.",
                style: TextStyle(
                  color: Color(0xFF3366FF),
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  _actionIcon(Icons.check_circle, AppColors.primaryColor),
                  const SizedBox(width: 5),
                  _actionIcon(Icons.cancel, AppColors.primaryColor),
                ],
              ),
            ],
          ),
          const SizedBox(height: 3),
          const Text(
            "Treatment and prevention of\nskin and photodermatitis.",
            style: TextStyle(
              color: Colors.black87,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }

  Widget _actionIcon(IconData icon, Color color) {
    return Icon(
      icon,
      color:  color,
      size: 14,
    );
  }
}