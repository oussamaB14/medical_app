// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DoctorModel _$DoctorModelFromJson(Map<String, dynamic> json) => DoctorModel(
      id: json['id'] as String,
      name: json['name'] as String,
      specialty: json['specialty'] as String,
      avatar: json['avatar'] as String,
      experience: (json['experience'] as num).toInt(),
      phoneNumber: json['phoneNumber'] as String,
      location: json['location'] as String,
      bio: json['bio'] as String,
      focus: json['focus'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$DoctorModelToJson(DoctorModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'specialty': instance.specialty,
      'avatar': instance.avatar,
      'experience': instance.experience,
      'phoneNumber': instance.phoneNumber,
      'location': instance.location,
      'bio': instance.bio,
      'focus': instance.focus,
      'createdAt': instance.createdAt.toIso8601String(),
    };
