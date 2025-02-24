import 'package:json_annotation/json_annotation.dart';
import 'package:medical_app/features/doctors/domain/entities/doctor_entity.dart';

part 'doctor_model.g.dart';

@JsonSerializable()
class DoctorModel extends DoctorEntity {
  const DoctorModel({
    required String id,
    required String name,
    required String specialty,
    required String avatar,
    required int experience,
    required String phoneNumber,
    required String location,
    required String bio,
    required String focus,
    required DateTime createdAt,
  }) : super(
          id: id,
          name: name,
          specialty: specialty,
          avatar: avatar,
          experience: experience,
          phoneNumber: phoneNumber,
          location: location,
          bio: bio,
          focus: focus,
          createdAt: createdAt,
        );

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
