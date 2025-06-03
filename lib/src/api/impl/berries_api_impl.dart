import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pikadart/src/api/berries_api.dart';
import 'package:pikadart/src/api/impl/base_api.dart';
import 'package:pikadart/src/api/models/berries.dart';
import 'package:pikadart/src/api/models/resources.dart';
import 'package:pikadart/src/cache/cache_strategy.dart';

class BerriesApiImpl extends BaseApi implements BerriesApi {
  final CacheStrategy _cacheStrategy;

  BerriesApiImpl({required super.cacheStrategy})
      : _cacheStrategy = cacheStrategy;

  @override
  Future<Berry> fetchBerry(int id) async {
    final url = "$baseUrl/berry/$id";
    final cached = await _cacheStrategy.get<Berry>(url);
    if (cached != null) {
      return cached;
    }

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final berry =
          Berry.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
      await _cacheStrategy.set(url, berry);
      return berry;
    } else {
      throw Exception(
          "Failed to fetch data with status code: ${response.statusCode}");
    }
  }

  @override
  Future<BerryFirmness> fetchBerryFirmness(int id) async {
    final url = "$baseUrl/berry-firmness/$id";
    final cached = await _cacheStrategy.get<BerryFirmness>(url);
    if (cached != null) {
      return cached;
    }

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final firmness = BerryFirmness.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
      await _cacheStrategy.set(url, firmness);
      return firmness;
    } else {
      throw Exception(
          "Failed to fetch data with status code: ${response.statusCode}");
    }
  }

  @override
  Future<BerryFlavor> fetchBerryFlavor(int id) async {
    final url = "$baseUrl/berry-flavor/$id";
    final cached = await _cacheStrategy.get<BerryFlavor>(url);
    if (cached != null) {
      return cached;
    }

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final flavor = BerryFlavor.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
      await _cacheStrategy.set(url, flavor);
      return flavor;
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
