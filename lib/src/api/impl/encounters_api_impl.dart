import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pikadart/src/api/encounters_api.dart';
import 'package:pikadart/src/api/impl/base_api.dart';
import 'package:pikadart/src/api/models/encounters.dart';
import 'package:pikadart/src/api/models/resources.dart';
import 'package:pikadart/src/cache/cache_strategy.dart';

class EncountersApiImpl extends BaseApi implements EncountersApi {
  final CacheStrategy _cacheStrategy;

  EncountersApiImpl({required super.cacheStrategy})
      : _cacheStrategy = cacheStrategy;

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
    final url = "$baseUrl/encounter-method/$id";
    final cached = await _cacheStrategy.get<EncounterMethod>(url);
    if (cached != null) {
      return cached;
    }

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final method = EncounterMethod.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
      await _cacheStrategy.set(url, method);
      return method;
    } else {
      throw Exception(
          "Failed to fetch data with status code: ${response.statusCode}");
    }
  }

  @override
  Future<EncounterCondition> fetchEncounterCondition(int id) async {
    final url = "$baseUrl/encounter-condition/$id";
    final cached = await _cacheStrategy.get<EncounterCondition>(url);
    if (cached != null) {
      return cached;
    }

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final condition = EncounterCondition.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
      await _cacheStrategy.set(url, condition);
      return condition;
    } else {
      throw Exception(
          "Failed to fetch data with status code: ${response.statusCode}");
    }
  }

  @override
  Future<EncounterConditionValue> fetchEncounterConditionValue(int id) async {
    final url = "$baseUrl/encounter-condition-value/$id";
    final cached = await _cacheStrategy.get<EncounterConditionValue>(url);
    if (cached != null) {
      return cached;
    }

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final value = EncounterConditionValue.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
      await _cacheStrategy.set(url, value);
      return value;
    } else {
      throw Exception(
          "Failed to fetch data with status code: ${response.statusCode}");
    }
  }
}
