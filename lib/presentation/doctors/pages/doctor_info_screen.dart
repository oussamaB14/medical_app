import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:iconly/iconly.dart';
import 'package:medical_app/core/configs/theme/app_colors.dart';
import 'package:medical_app/features/doctors/presentation/widgets/doctor_info_card.dart';
import 'package:medical_app/features/doctors/domain/entities/doctor_entity.dart';
import 'package:medical_app/features/doctors/data/repositories/doctor_repository_impl.dart';
import 'package:medical_app/features/doctors/data/sources/doctor_data_source_impl.dart';
import 'package:http/http.dart' as http;

class DoctorInfoScreen extends StatefulWidget {
  final String doctorId;

  const DoctorInfoScreen({super.key, required this.doctorId});

  @override
  State<DoctorInfoScreen> createState() => _DoctorInfoScreenState();
}

class _DoctorInfoScreenState extends State<DoctorInfoScreen> {
  DoctorEntity? doctor;
  bool isLoading = true;
  String? errorMessage;

  @override
  void initState() {
    super.initState();
    _fetchDoctorDetails();
  }

  Future<void> _fetchDoctorDetails() async {
    final repository = DoctorRepositoryImpl(
      remoteDataSource: DoctorRemoteDataSourceImpl(client: http.Client()),
    );

    final result = await repository.getDoctorById(widget.doctorId);
    result.fold(
      (failure) {
        setState(() {
          errorMessage = failure.message;
          isLoading = false;
        });
      },
      (doctorData) {
        setState(() {
          doctor = doctorData;
          isLoading = false;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(IconlyLight.arrow_left_2,
              color: AppColors.primaryColor),
          onPressed: () => context.go('/doctors'),
        ),
        title: Text("Doctor Info",
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
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : errorMessage != null
              ? Center(child: Text(errorMessage!))
              : Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    DoctorInfoCard(doctor: doctor!),
                  ],
                ),
              ),
    );
  }
}