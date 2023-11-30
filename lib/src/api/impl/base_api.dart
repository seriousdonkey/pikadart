import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/resources.dart';

abstract class BaseApi {
  final baseUrl = "https://pokeapi.co/api/v2";

  Future<NamedApiResourceList> handleNamedApiResource(
    String endpoint,
    int offset,
    int limit,
  ) async {
    final response = await http
        .get(Uri.parse("$baseUrl/$endpoint?offset=$offset&limit=$limit"));

    if (response.statusCode == 200) {
      return NamedApiResourceList.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      throw Exception(
          "Failed to fetch data with status code: ${response.statusCode}");
    }
  }

  Future<ApiResourceList> handleApiResource(
    String endpoint,
    int offset,
    int limit,
  ) async {
    final response = await http
        .get(Uri.parse("$baseUrl/$endpoint?offset=$offset&limit=$limit"));

    if (response.statusCode == 200) {
      return ApiResourceList.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      throw Exception(
          "Failed to fetch data with status code: ${response.statusCode}");
    }
  }
}
