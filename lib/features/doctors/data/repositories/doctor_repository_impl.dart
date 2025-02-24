import 'package:dartz/dartz.dart';
import 'package:medical_app/core/error/failures.dart';
import 'package:medical_app/features/doctors/data/sources/doctor_data_source.dart';
import 'package:medical_app/features/doctors/domain/entities/doctor_entity.dart';
import 'package:medical_app/features/doctors/domain/repositories/doctor_repository.dart';

class DoctorRepositoryImpl implements DoctorRepository {
  final DoctorRemoteDataSource remoteDataSource;

  DoctorRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, List<DoctorEntity>>> getDoctors() async {
    try {
      final doctors = await remoteDataSource.getDoctors();
      return Right(doctors);
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
