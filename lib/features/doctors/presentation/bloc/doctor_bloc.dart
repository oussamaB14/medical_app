import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:medical_app/features/doctors/domain/entities/doctor_entity.dart';
import 'package:medical_app/features/doctors/domain/repositories/doctor_repository.dart';

part 'doctor_event.dart';
part 'doctor_state.dart';

class DoctorBloc extends Bloc<DoctorEvent, DoctorState> {
  final DoctorRepository repository;

  DoctorBloc({required this.repository}) : super(DoctorInitial()) {
    on<FetchDoctors>((event, emit) async {
      emit(DoctorLoading());
      
      try {
        final result = await repository.getDoctors();
        
        result.fold(
          (failure) {
            emit(DoctorError(message: failure.message));
          },
          (doctors) {
           // print('Loaded ${doctors.length} doctors');
            emit(DoctorLoaded(doctors: doctors));
          },
        );
      } catch (e) {
       // print('Unexpected error in bloc: $e');
        emit(DoctorError(message: e.toString()));
      }
    });
  }
} 