import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_app/features/doctors/presentation/bloc/doctor_bloc.dart';
import 'package:medical_app/features/doctors/presentation/widgets/doctors_list_view.dart';
import 'package:medical_app/presentation/home/widgets/date_timeline_view.dart';
import 'package:medical_app/presentation/home/widgets/home_app_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    context.read<DoctorBloc>().add(FetchDoctors());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(110.0),
        child: HomeAppBar(),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                const DateTimelineView(),
                const SizedBox(height: 10),
              ],
            ),
          ),
          const SliverFillRemaining(
            child: DoctorsListView(),
          ),
        ],
      ),
    );
  }
}
