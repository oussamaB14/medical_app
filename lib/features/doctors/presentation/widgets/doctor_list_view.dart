import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_app/features/doctors/presentation/bloc/doctor_bloc.dart';
import 'package:medical_app/features/doctors/presentation/widgets/doctor_screen_card.dart';
// list view of the doctors in the doctors screen 

class DoctorListView extends StatelessWidget {
  const DoctorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DoctorBloc, DoctorState>(
      builder: (context, state) {
        if (state is DoctorLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is DoctorLoaded) {
          return ListView.builder(
            itemCount: state.doctors.length,
            itemBuilder: (context, index) {
              final doctor = state.doctors[index];
              return DoctorScreenCard(doctor: doctor);
            },
          );
        } else if (state is DoctorError) {
          return Center(child: Text(state.message));
        }
        return const Center(child: Text('No doctors available'));
      },
    );
  }
} 