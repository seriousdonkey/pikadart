import 'package:pikadart/src/api/encounters_api.dart';
import 'package:pikadart/src/api/impl/encounters_api_impl.dart';
import 'package:pikadart/src/api/models/encounters.dart';
import 'package:pikadart/src/api/models/resources.dart';
import 'package:pikadart/src/cache/cache_strategy.dart';
import 'package:pikadart/src/cache/memory_cache_strategy.dart';

class EncountersClient {
  final EncountersApi _api;

  EncountersClient({
    CacheStrategy? cacheStrategy,
  }) : _api = EncountersApiImpl(
          cacheStrategy: cacheStrategy ?? MemoryCacheStrategy(),
        );

  Future<NamedApiResourceList> getEncounterMethodList(
          int offset, int limit) async =>
      _api.fetchEncounterMethodList(offset, limit);

  Future<NamedApiResourceList> getEncounterConditionList(
          int offset, int limit) async =>
      _api.fetchEncounterConditionList(offset, limit);

  Future<NamedApiResourceList> getEncounterConditionValueList(
          int offset, int limit) async =>
      _api.fetchEncounterConditionValueList(offset, limit);

  Future<EncounterMethod> getEncounterMethod(int id) async =>
      _api.fetchEncounterMethod(id);

  Future<EncounterCondition> getEncounterCondition(int id) async =>
      _api.fetchEncounterCondition(id);

  Future<EncounterConditionValue> getEncounterConditionValue(int id) async =>
      _api.fetchEncounterConditionValue(id);
}
