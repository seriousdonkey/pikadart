import 'package:cached_annotation/cached_annotation.dart';
import 'package:pikadart/src/api/encounters_api.dart';
import 'package:pikadart/src/api/impl/encounters_api_impl.dart';
import 'package:pikadart/src/api/models/encounters.dart';
import 'package:pikadart/src/api/models/resources.dart';

part 'encounters_client.cached.dart';

@WithCache()
abstract mixin class EncountersClient implements _$EncountersClient {
  factory EncountersClient() = _EncountersClient;

  final EncountersApi _api = EncountersApiImpl();

  @Cached()
  Future<NamedApiResourceList> getEncounterMethodList(
          int offset, int limit) async =>
      _api.fetchEncounterMethodList(offset, limit);

  @Cached()
  Future<NamedApiResourceList> getEncounterConditionList(
          int offset, int limit) async =>
      _api.fetchEncounterConditionList(offset, limit);

  @Cached()
  Future<NamedApiResourceList> getEncounterConditionValueList(
          int offset, int limit) async =>
      _api.fetchEncounterConditionValueList(offset, limit);

  @Cached()
  Future<EncounterMethod> getEncounterMethod(int id) async =>
      _api.fetchEncounterMethod(id);

  @Cached()
  Future<EncounterCondition> getEncounterCondition(int id) async =>
      _api.fetchEncounterCondition(id);

  @Cached()
  Future<EncounterConditionValue> getEncounterConditionValue(int id) async =>
      _api.fetchEncounterConditionValue(id);
}
