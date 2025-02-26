import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:medical_app/core/configs/constants/doctor_api.dart';
import 'package:medical_app/features/doctors/data/models/doctor_model.dart';

abstract class DoctorRemoteDataSource {
  Future<List<DoctorModel>> getDoctors();
  Future<DoctorModel> getDoctorById(String id);
}

class DoctorRemoteDataSourceImpl implements DoctorRemoteDataSource {
  static String api = DoctorApi.baseUrl;
  final http.Client client;

  DoctorRemoteDataSourceImpl({required this.client});

  @override
  Future<List<DoctorModel>> getDoctors() async {
    final response = await client.get(Uri.parse('$api/doctors'));
    
    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.map((json) => DoctorModel.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load doctors: ${response.statusCode}');
    }
  }

  @override
  Future<DoctorModel> getDoctorById(String id) async {
    final response = await client.get(Uri.parse('${DoctorApi.baseUrl}/doctors/$id'));
    
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return DoctorModel.fromJson(data);
    } else {
      throw Exception('Failed to load doctor: ${response.statusCode}');
    }
  }
}