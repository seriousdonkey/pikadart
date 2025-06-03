import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pikadart/src/cache/cache_strategy.dart';

import '../models/resources.dart';

abstract class BaseApi {
  final baseUrl = "https://pokeapi.co/api/v2";
  final CacheStrategy _cacheStrategy;

  BaseApi({required CacheStrategy cacheStrategy})
      : _cacheStrategy = cacheStrategy;

  Future<NamedApiResourceList> handleNamedApiResource(
    String endpoint,
    int offset,
    int limit,
  ) async {
    final url = "$baseUrl/$endpoint?offset=$offset&limit=$limit";
    final cached = await _cacheStrategy.get<NamedApiResourceList>(url);
    if (cached != null) {
      return cached;
    }

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final list = NamedApiResourceList.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
      await _cacheStrategy.set(url, list);
      return list;
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
    final url = "$baseUrl/$endpoint?offset=$offset&limit=$limit";
    final cached = await _cacheStrategy.get<ApiResourceList>(url);
    if (cached != null) {
      return cached;
    }

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final list = ApiResourceList.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
      await _cacheStrategy.set(url, list);
      return list;
    } else {
      throw Exception(
          "Failed to fetch data with status code: ${response.statusCode}");
    }
  }
}
