import 'package:dio/dio.dart';
import '../models/property_model.dart';

class PropertyRepository {
  final String baseUrl =
      'https://8000-winslygeorge-sleek-larav-aqag8vonz5.app.codeanywhere.com/api/properties';
  final Dio _dio = Dio();

  Future<List<Property>> fetchProperties() async {
    final response = await _dio.get(baseUrl);
    return (response.data as List)
        .map((json) => Property.fromJson(json))
        .toList();
  }
}
