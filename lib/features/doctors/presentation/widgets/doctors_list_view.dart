import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_app/features/doctors/domain/entities/doctor_entity.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:medical_app/features/doctors/presentation/bloc/doctor_bloc.dart';
import 'package:medical_app/features/doctors/presentation/widgets/doctor_item_card.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DoctorBloc, DoctorState>(
      builder: (context, state) {
        if (state is DoctorLoading) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Skeletonizer(
              enabled: true,
              child: ListView.separated(
                padding: EdgeInsets.zero,
                // Show 3 skeleton items while loading
                itemCount: 3,
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 16),
                itemBuilder: (context, index) {
                  return DoctorItemCard(
                    doctor: DoctorEntity(
                      id: '0',
                      name: '',
                      specialty: '',
                      avatar: '',
                      experience: 0,
                      phoneNumber: "",
                      location: "",
                      bio: "",
                      focus: "",
                      createdAt: DateTime.now(),
                    ),
                  );
                },
              ),
            ),
          );
        } else if (state is DoctorError) {
          return Center(
            child: Text(state.message),
          );
        } else if (state is DoctorLoaded) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ListView.separated(
              padding: EdgeInsets.zero,
              itemCount: state.doctors.length,
              separatorBuilder: (context, index) => const SizedBox(height: 16),
              itemBuilder: (context, index) {
                final doctor = state.doctors[index];
                return DoctorItemCard(doctor: doctor);
              },
            ),
          );
        }
        return const SizedBox();
      },
    );
  }
}
