import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:medical_app/core/configs/constants/doctor_api.dart';
import 'package:medical_app/features/doctors/data/models/doctor_model.dart';
import 'package:medical_app/features/doctors/data/sources/doctor_data_source.dart';

class DoctorRemoteDataSourceImpl implements DoctorRemoteDataSource {
  final http.Client client;

  DoctorRemoteDataSourceImpl({required this.client});

  @override
  Future<List<DoctorModel>> getDoctors() async {
    try {
      final response = await client.get(Uri.parse('${DoctorApi.baseUrl}/doctors'));
      
      if (response.statusCode == 200) {
        final List<dynamic> jsonList = json.decode(response.body);
        return jsonList.map((json) {
          // Add null checks and default values
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
        }).toList();
      } else {
        throw Exception('Failed to load doctors: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Failed to load doctors: $e');
    }
  }
} 