import 'package:dartz/dartz.dart';
import 'package:medical_app/core/error/failures.dart';
import 'package:medical_app/features/doctors/domain/entities/doctor_entity.dart';

abstract class DoctorRepository {
  Future<Either<Failure, List<DoctorEntity>>> getDoctors();
  Future<Either<Failure, DoctorEntity>> getDoctorById(String id);
} 