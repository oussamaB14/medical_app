import 'package:json_annotation/json_annotation.dart';
import 'package:medical_app/features/doctors/domain/entities/doctor_entity.dart';

part 'doctor_model.g.dart';

@JsonSerializable()
class DoctorModel extends DoctorEntity {
  const DoctorModel({
    required super.id,
    required super.name,
    required super.specialty,
    required super.avatar,
    required super.experience,
    required super.phoneNumber,
    required super.location,
    required super.bio,
    required super.focus,
    required super.createdAt,
  });

  factory DoctorModel.fromJson(Map<String, dynamic> json) =>
      _$DoctorModelFromJson(json);

  Map<String, dynamic> toJson() => _$DoctorModelToJson(this);
}
