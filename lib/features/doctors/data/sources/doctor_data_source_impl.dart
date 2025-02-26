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
    final response = await client.get(Uri.parse('${DoctorApi.baseUrl}/doctors'));
    
    if (response.statusCode == 200) {
      final List<dynamic> jsonList = json.decode(response.body);
      return jsonList.map((json) => DoctorModel.fromJson(json)).toList();
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