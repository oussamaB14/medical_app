import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:medical_app/core/router/router_config.dart';
import 'package:medical_app/features/doctors/data/repositories/doctor_repository_impl.dart';
import 'package:medical_app/features/doctors/data/sources/doctor_data_source.dart';
import 'package:medical_app/features/doctors/presentation/bloc/doctor_bloc.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<DoctorBloc>(
          create: (context) => DoctorBloc(
            repository: DoctorRepositoryImpl(
              remoteDataSource: DoctorRemoteDataSourceImpl(
                client: http.Client(),
              ),
            ),
          ),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: router,
        theme: FlexThemeData.light(scheme: FlexScheme.mandyRed),
        darkTheme: FlexThemeData.dark(scheme: FlexScheme.mandyRed),
        themeMode: ThemeMode.light,
      ),
    );
  }
}

