import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pikadart/src/api/contests_api.dart';
import 'package:pikadart/src/api/impl/base_api.dart';
import 'package:pikadart/src/api/models/contests.dart';
import 'package:pikadart/src/api/models/resources.dart';
import 'package:pikadart/src/cache/cache_strategy.dart';

class ContestsApiImpl extends BaseApi implements ContestsApi {
  final CacheStrategy _cacheStrategy;

  ContestsApiImpl({required super.cacheStrategy})
      : _cacheStrategy = cacheStrategy;

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
    final url = "$baseUrl/contest-type/$id";
    final cached = await _cacheStrategy.get<ContestType>(url);
    if (cached != null) {
      return cached;
    }

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final type = ContestType.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
      await _cacheStrategy.set(url, type);
      return type;
    } else {
      throw Exception(
          "Failed to fetch data with status code: ${response.statusCode}");
    }
  }

  @override
  Future<ContestEffect> fetchContestEffect(int id) async {
    final url = "$baseUrl/contest-effect/$id";
    final cached = await _cacheStrategy.get<ContestEffect>(url);
    if (cached != null) {
      return cached;
    }

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final effect = ContestEffect.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
      await _cacheStrategy.set(url, effect);
      return effect;
    } else {
      throw Exception(
          "Failed to fetch data with status code: ${response.statusCode}");
    }
  }

  @override
  Future<SuperContestEffect> fetchSuperContestEffect(int id) async {
    final url = "$baseUrl/super-contest-effect/$id";
    final cached = await _cacheStrategy.get<SuperContestEffect>(url);
    if (cached != null) {
      return cached;
    }

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final effect = SuperContestEffect.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
      await _cacheStrategy.set(url, effect);
      return effect;
    } else {
      throw Exception(
          "Failed to fetch data with status code: ${response.statusCode}");
    }
  }
}
