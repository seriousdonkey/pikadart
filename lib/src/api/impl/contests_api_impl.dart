import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pikadart/src/api/contests_api.dart';
import 'package:pikadart/src/api/impl/base_api.dart';
import 'package:pikadart/src/api/models/contests.dart';
import 'package:pikadart/src/api/models/resources.dart';

class ContestsApiImpl extends BaseApi implements ContestsApi {
  @override
  Future<NamedApiResourceList> fetchContestTypeList(
      int offset, int limit) async {
    return handleNamedApiResource("contest-type", offset, limit);
  }

  @override
  Future<ApiResourceList> fetchContestEffectList(int offset, int limit) async {
    return handleApiResource("contest-effect", offset, limit);
  }

  @override
  Future<ApiResourceList> fetchSuperContestEffectList(
      int offset, int limit) async {
    return handleApiResource("super-contest-effect", offset, limit);
  }

  @override
  Future<ContestType> fetchContestType(int id) async {
    final response = await http.get(Uri.parse("$baseUrl/contest-type/$id"));

    if (response.statusCode == 200) {
      return ContestType.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      throw Exception(
          "Failed to fetch data with status code: ${response.statusCode}");
    }
  }

  @override
  Future<ContestEffect> fetchContestEffect(int id) async {
    final response = await http.get(Uri.parse("$baseUrl/contest-effect/$id"));

    if (response.statusCode == 200) {
      return ContestEffect.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      throw Exception(
          "Failed to fetch data with status code: ${response.statusCode}");
    }
  }

  @override
  Future<SuperContestEffect> fetchSuperContestEffect(int id) async {
    final response =
        await http.get(Uri.parse("$baseUrl/super-contest-effect/$id"));

    if (response.statusCode == 200) {
      return SuperContestEffect.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      throw Exception(
          "Failed to fetch data with status code: ${response.statusCode}");
    }
  }
}
