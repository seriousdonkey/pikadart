import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pikadart/src/api/evolution_api.dart';
import 'package:pikadart/src/api/impl/base_api.dart';
import 'package:pikadart/src/api/models/evolution.dart';
import 'package:pikadart/src/api/models/resources.dart';
import 'package:pikadart/src/cache/cache_strategy.dart';

class EvolutionApiImpl extends BaseApi implements EvolutionApi {
  final CacheStrategy _cacheStrategy;

  EvolutionApiImpl({required super.cacheStrategy})
      : _cacheStrategy = cacheStrategy;

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
    final url = "$baseUrl/evolution-chain/$id";
    final cached = await _cacheStrategy.get<EvolutionChain>(url);
    if (cached != null) {
      return cached;
    }

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final chain = EvolutionChain.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
      await _cacheStrategy.set(url, chain);
      return chain;
    } else {
      throw Exception(
          "Failed to fetch data with status code: ${response.statusCode}");
    }
  }

  @override
  Future<EvolutionTrigger> fetchEvolutionTrigger(int id) async {
    final url = "$baseUrl/evolution-trigger/$id";
    final cached = await _cacheStrategy.get<EvolutionTrigger>(url);
    if (cached != null) {
      return cached;
    }

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final trigger = EvolutionTrigger.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
      await _cacheStrategy.set(url, trigger);
      return trigger;
    } else {
      throw Exception(
          "Failed to fetch data with status code: ${response.statusCode}");
    }
  }
}
