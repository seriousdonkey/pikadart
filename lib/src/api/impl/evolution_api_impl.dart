import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pikadart/src/api/evolution_api.dart';
import 'package:pikadart/src/api/impl/base_api.dart';
import 'package:pikadart/src/api/models/evolution.dart';
import 'package:pikadart/src/api/models/resources.dart';

class EvolutionApiImpl extends BaseApi implements EvolutionApi {
  @override
  Future<ApiResourceList> fetchEvolutionChainList(int offset, int limit) async {
    return handleApiResource("evolution-chain", offset, limit);
  }

  @override
  Future<NamedApiResourceList> fetchEvolutionTriggerList(
      int offset, int limit) async {
    return handleNamedApiResource("evolution-trigger", offset, limit);
  }

  @override
  Future<EvolutionChain> fetchEvolutionChain(int id) async {
    final response = await http.get(Uri.parse("$baseUrl/evolution-chain/$id"));

    if (response.statusCode == 200) {
      return EvolutionChain.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      throw Exception(
          "Failed to fetch data with status code: ${response.statusCode}");
    }
  }

  @override
  Future<EvolutionTrigger> fetchEvolutionTrigger(int id) async {
    final response =
        await http.get(Uri.parse("$baseUrl/evolution-trigger/$id"));

    if (response.statusCode == 200) {
      return EvolutionTrigger.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      throw Exception(
          "Failed to fetch data with status code: ${response.statusCode}");
    }
  }
}
