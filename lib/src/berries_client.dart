import 'package:cached_annotation/cached_annotation.dart';
import 'package:pikadart/src/api/berries_api.dart';
import 'package:pikadart/src/api/impl/berries_api_impl.dart';
import 'package:pikadart/src/api/models/berries.dart';
import 'package:pikadart/src/api/models/resources.dart';
import 'package:pikadart/src/cache/cache_strategy.dart';
import 'package:pikadart/src/cache/memory_cache_strategy.dart';

class BerriesClient {
  final BerriesApi _api;

  BerriesClient({
    CacheStrategy? cacheStrategy,
  }) : _api = BerriesApiImpl(
          cacheStrategy: cacheStrategy ?? MemoryCacheStrategy(),
        );

  Future<NamedApiResourceList> getBerryList(int offset, int limit) async =>
      _api.fetchBerryList(offset, limit);

  Future<NamedApiResourceList> getBerryFirmnessList(
          int offset, int limit) async =>
      _api.fetchBerryFirmnessList(offset, limit);

  Future<NamedApiResourceList> getBerryFlavorList(
          int offset, int limit) async =>
      _api.fetchBerryFlavorList(offset, limit);

  Future<Berry> getBerry(int id) async => _api.fetchBerry(id);

  Future<BerryFirmness> getBerryFirmness(int id) async =>
      _api.fetchBerryFirmness(id);

  Future<BerryFlavor> getBerryFlavor(int id) async => _api.fetchBerryFlavor(id);
}
