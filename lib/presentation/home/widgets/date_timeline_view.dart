import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:medical_app/core/configs/theme/app_colors.dart';
import 'package:medical_app/presentation/home/widgets/appointment_card.dart';

class DateTimelineView extends StatefulWidget {
  const DateTimelineView({super.key});

  @override
  State<DateTimelineView> createState() => _DateTimelineViewState();
}

class _DateTimelineViewState extends State<DateTimelineView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          children: [
            EasyDateTimeLine(
              initialDate: DateTime.now(),
              activeColor: AppColors.primaryColor,
              headerProps: const EasyHeaderProps(
                showHeader: false,
              ),
              timeLineProps: EasyTimeLineProps(
                margin: const EdgeInsets.all(12),
              ),
              dayProps: EasyDayProps(
                activeDayStyle: const DayStyle(
                    borderRadius: 32.0,
                    dayStrStyle: TextStyle(color: Colors.white),
                    dayNumStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                    monthStrStyle: TextStyle(color: Colors.white)),
                inactiveDayStyle: DayStyle(
                  //borderRadius: 40.0,
                  dayNumStyle: TextStyle(
                        color: AppColors.textDarkColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(32.0),

                  ),
                ),
                todayStyle: DayStyle(
                  borderRadius: 32.0,
                  dayStrStyle: TextStyle(color: Colors.white),
                  monthStrStyle: TextStyle(color: Colors.white),

                  dayNumStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),

                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                ),
                dayStructure: DayStructure.dayNumDayStr,
                width: 42,
                height: 64,
              ),
              onDateChange: (date) {
                // Handle the selected date.
              },
            ),
            SizedBox(height: 6),
              AppointmentCard(),
          ],
        ),
      ),
    );
  }
}
