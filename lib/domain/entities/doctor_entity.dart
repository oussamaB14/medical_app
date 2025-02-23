import 'package:equatable/equatable.dart';

class DoctorEntity extends Equatable {
  final String id;
  final String name;
  final String specialty;
  final String avatar;
  final int experience;
  final String phoneNumber;
  final String location;
  final String bio;
  final String focus;
  final DateTime createdAt;

  const DoctorEntity({
    required this.id,
    required this.name,
    required this.specialty,
    required this.avatar,
    required this.experience,
    required this.phoneNumber,
    required this.location,
    required this.bio,
    required this.focus,
    required this.createdAt,
  });

  @override
  List<Object> get props => [
        id,
        name,
        specialty,
        avatar,
        experience,
        phoneNumber,
        location,
        bio,
        focus,
        createdAt,
      ];
}
