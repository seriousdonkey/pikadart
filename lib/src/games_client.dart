import 'package:cached_annotation/cached_annotation.dart';
import 'package:pikadart/src/api/games_api.dart';
import 'package:pikadart/src/api/impl/games_api_impl.dart';
import 'package:pikadart/src/api/models/resources.dart';
import 'package:pikadart/src/cache/cache_strategy.dart';
import 'package:pikadart/src/cache/memory_cache_strategy.dart';

class GamesClient {
  final GamesApi _api;

  GamesClient({
    CacheStrategy? cacheStrategy,
  }) : _api = GamesApiImpl(
          cacheStrategy: cacheStrategy ?? MemoryCacheStrategy(),
        );

  Future<NamedApiResourceList> getGenerationList(int offset, int limit) async =>
      _api.fetchGenerationList(offset, limit);

  Future<NamedApiResourceList> getPokedexList(int offset, int limit) async =>
      _api.fetchPokedexList(offset, limit);

  Future<NamedApiResourceList> getVersionList(int offset, int limit) async =>
      _api.fetchVersionList(offset, limit);

  Future<NamedApiResourceList> getVersionGroupList(
          int offset, int limit) async =>
      _api.fetchVersionGroupList(offset, limit);
}
