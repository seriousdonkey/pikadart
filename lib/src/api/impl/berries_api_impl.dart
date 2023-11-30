import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pikadart/src/api/berries_api.dart';
import 'package:pikadart/src/api/impl/base_api.dart';
import 'package:pikadart/src/api/models/berries.dart';
import 'package:pikadart/src/api/models/resources.dart';

class BerriesApiImpl extends BaseApi implements BerriesApi {
  @override
  Future<Berry> fetchBerry(int id) async {
    final response = await http.get(Uri.parse("$baseUrl/berry/$id"));

    if (response.statusCode == 200) {
      return Berry.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      throw Exception(
          "Failed to fetch data with status code: ${response.statusCode}");
    }
  }

  @override
  Future<BerryFirmness> fetchBerryFirmness(int id) async {
    final response = await http.get(Uri.parse("$baseUrl/berry-firmness/$id"));

    if (response.statusCode == 200) {
      return BerryFirmness.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      throw Exception(
          "Failed to fetch data with status code: ${response.statusCode}");
    }
  }

  @override
  Future<BerryFlavor> fetchBerryFlavor(int id) async {
    final response = await http.get(Uri.parse("$baseUrl/berry-flavor/$id"));

    if (response.statusCode == 200) {
      return BerryFlavor.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      throw Exception(
          "Failed to fetch data with status code: ${response.statusCode}");
    }
  }

  @override
  Future<NamedApiResourceList> fetchBerryList(int offset, int limit) async {
    return await handleNamedApiResource("berry", offset, limit);
  }

  @override
  Future<NamedApiResourceList> fetchBerryFirmnessList(
      int offset, int limit) async {
    return await handleNamedApiResource("berry-firmness", offset, limit);
  }

  @override
  Future<NamedApiResourceList> fetchBerryFlavorList(
      int offset, int limit) async {
    return await handleNamedApiResource("berry-flavor", offset, limit);
  }
}
