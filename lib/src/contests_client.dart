import 'package:pikadart/src/api/contests_api.dart';
import 'package:pikadart/src/api/impl/contests_api_impl.dart';
import 'package:pikadart/src/api/models/contests.dart';
import 'package:pikadart/src/api/models/resources.dart';
import 'package:pikadart/src/cache/cache_strategy.dart';
import 'package:pikadart/src/cache/memory_cache_strategy.dart';

class ContestsClient {
  final ContestsApi _api;

  ContestsClient({
    CacheStrategy? cacheStrategy,
  }) : _api = ContestsApiImpl(
          cacheStrategy: cacheStrategy ?? MemoryCacheStrategy(),
        );

  Future<NamedApiResourceList> getContestTypeList(
          int offset, int limit) async =>
      _api.fetchContestTypeList(offset, limit);

  Future<ApiResourceList> getContestEffectList(int offset, int limit) async =>
      _api.fetchContestEffectList(offset, limit);

  Future<ApiResourceList> getSuperContestEffectList(
          int offset, int limit) async =>
      _api.fetchSuperContestEffectList(offset, limit);

  Future<ContestType> getContestType(int id) async => _api.fetchContestType(id);

  Future<ContestEffect> getContestEffect(int id) async =>
      _api.fetchContestEffect(id);

  Future<SuperContestEffect> getSuperContestEffect(int id) async =>
      _api.fetchSuperContestEffect(id);
}
