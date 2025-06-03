import 'package:cached_annotation/cached_annotation.dart';
import 'package:pikadart/src/api/evolution_api.dart';
import 'package:pikadart/src/api/impl/evolution_api_impl.dart';
import 'package:pikadart/src/api/models/evolution.dart';
import 'package:pikadart/src/api/models/resources.dart';
import 'package:pikadart/src/cache/cache_strategy.dart';
import 'package:pikadart/src/cache/memory_cache_strategy.dart';

class EvolutionClient {
  final EvolutionApi _api;

  EvolutionClient({
    CacheStrategy? cacheStrategy,
  }) : _api = EvolutionApiImpl(
          cacheStrategy: cacheStrategy ?? MemoryCacheStrategy(),
        );

  Future<ApiResourceList> getEvolutionChainList(int offset, int limit) async =>
      _api.fetchEvolutionChainList(offset, limit);

  Future<NamedApiResourceList> getEvolutionTriggerList(
          int offset, int limit) async =>
      _api.fetchEvolutionTriggerList(offset, limit);

  Future<EvolutionChain> getEvolutionChain(int id) async =>
      _api.fetchEvolutionChain(id);

  Future<EvolutionTrigger> getEvolutionTrigger(int id) async =>
      _api.fetchEvolutionTrigger(id);
}
