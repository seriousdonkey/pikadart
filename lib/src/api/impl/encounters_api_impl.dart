import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pikadart/src/api/encounters_api.dart';
import 'package:pikadart/src/api/impl/base_api.dart';
import 'package:pikadart/src/api/models/encounters.dart';
import 'package:pikadart/src/api/models/resources.dart';

class EncountersApiImpl extends BaseApi implements EncountersApi {
  @override
  Future<NamedApiResourceList> fetchEncounterMethodList(
      int offset, int limit) async {
    return handleNamedApiResource("encounter-method", offset, limit);
  }

  @override
  Future<NamedApiResourceList> fetchEncounterConditionList(
      int offset, int limit) async {
    return handleNamedApiResource("encounter-condition", offset, limit);
  }

  @override
  Future<NamedApiResourceList> fetchEncounterConditionValueList(
      int offset, int limit) async {
    return handleNamedApiResource("encounter-condition-value", offset, limit);
  }

  @override
  Future<EncounterMethod> fetchEncounterMethod(int id) async {
    final response = await http.get(Uri.parse("$baseUrl/encounter-method/$id"));

    if (response.statusCode == 200) {
      return EncounterMethod.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      throw Exception(
          "Failed to fetch data with status code: ${response.statusCode}");
    }
  }

  @override
  Future<EncounterCondition> fetchEncounterCondition(int id) async {
    final response =
        await http.get(Uri.parse("$baseUrl/encounter-condition/$id"));

    if (response.statusCode == 200) {
      return EncounterCondition.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      throw Exception(
          "Failed to fetch data with status code: ${response.statusCode}");
    }
  }

  @override
  Future<EncounterConditionValue> fetchEncounterConditionValue(int id) async {
    final response =
        await http.get(Uri.parse("$baseUrl/encounter-condition-value/$id"));

    if (response.statusCode == 200) {
      return EncounterConditionValue.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      throw Exception(
          "Failed to fetch data with status code: ${response.statusCode}");
    }
  }
}
