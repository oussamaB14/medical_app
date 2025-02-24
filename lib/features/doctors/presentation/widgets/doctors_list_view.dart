import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_app/core/configs/theme/app_colors.dart';
import 'package:medical_app/features/doctors/presentation/bloc/doctor_bloc.dart';
import 'package:medical_app/features/doctors/presentation/widgets/doctor_item_card.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DoctorBloc, DoctorState>(
      builder: (context, state) {
        if (state is DoctorLoading) {
          return const Center(
              child: CircularProgressIndicator(
            color: AppColors.primaryColor,
          ));
        } else if (state is DoctorError) {
          return Center(child: Text(state.message));
        } else if (state is DoctorLoaded) {
          return ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: state.doctors.length,
            itemBuilder: (context, index) {
              final doctor = state.doctors[index];
              return Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: DoctorItemCard(doctor: doctor),
              );
            },
          );
        }
        return const SizedBox();
      },
    );
  }
}
