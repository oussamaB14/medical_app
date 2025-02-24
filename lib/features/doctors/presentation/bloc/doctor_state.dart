part of 'doctor_bloc.dart';

abstract class DoctorState extends Equatable {
  const DoctorState();
  
  @override
  List<Object> get props => [];
}

class DoctorInitial extends DoctorState {}

class DoctorLoading extends DoctorState {}

class DoctorLoaded extends DoctorState {
  final List<DoctorEntity> doctors;

  const DoctorLoaded({required this.doctors});

  @override
  List<Object> get props => [doctors];
}

class DoctorError extends DoctorState {
  final String message;

  const DoctorError({required this.message});

  @override
  List<Object> get props => [message];
} 