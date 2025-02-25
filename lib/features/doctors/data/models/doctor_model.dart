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

  factory DoctorModel.fromJson(Map<String, dynamic> json) {
    return DoctorModel(
      id: json['id']?.toString() ?? '',
      name: json['name']?.toString() ?? 'Unknown Doctor',
      specialty: json['specialty']?.toString() ?? 'General',
      avatar: json['avatar']?.toString() ?? 'https://via.placeholder.com/150',
      experience: json['experience']?.toInt() ?? 0,
      phoneNumber: json['phoneNumber']?.toString() ?? '',
      location: json['location']?.toString() ?? '',
      bio: json['bio']?.toString() ?? '',
      focus: json['focus']?.toString() ?? '',
      createdAt: json['createdAt'] != null 
        ? DateTime.parse(json['createdAt'].toString())
        : DateTime.now(),
    );
  }

  Map<String, dynamic> toJson() => _$DoctorModelToJson(this);
}
