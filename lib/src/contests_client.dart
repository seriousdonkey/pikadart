import 'package:cached_annotation/cached_annotation.dart';
import 'package:pikadart/src/api/contests_api.dart';
import 'package:pikadart/src/api/impl/contests_api_impl.dart';
import 'package:pikadart/src/api/models/contests.dart';
import 'package:pikadart/src/api/models/resources.dart';

part 'contests_client.cached.dart';

@WithCache()
abstract mixin class ContestsClient implements _$ContestsClient {
  factory ContestsClient() = _ContestsClient;

  final ContestsApi _api = ContestsApiImpl();

  @Cached()
  Future<NamedApiResourceList> getContestTypeList(
          int offset, int limit) async =>
      _api.fetchContestTypeList(offset, limit);

  @Cached()
  Future<ApiResourceList> getContestEffectList(int offset, int limit) async =>
      _api.fetchContestEffectList(offset, limit);

  @Cached()
  Future<ApiResourceList> getSuperContestEffectList(
          int offset, int limit) async =>
      _api.fetchSuperContestEffectList(offset, limit);

  @Cached()
  Future<ContestType> getContestType(int id) async => _api.fetchContestType(id);

  @Cached()
  Future<ContestEffect> getContestEffect(int id) async =>
      _api.fetchContestEffect(id);

  @Cached()
  Future<SuperContestEffect> getSuperContestEffect(int id) async =>
      _api.fetchSuperContestEffect(id);
}
