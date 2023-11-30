import 'package:cached_annotation/cached_annotation.dart';
import 'package:pikadart/src/api/evolution_api.dart';
import 'package:pikadart/src/api/impl/evolution_api_impl.dart';
import 'package:pikadart/src/api/models/evolution.dart';
import 'package:pikadart/src/api/models/resources.dart';

part 'evolution_client.cached.dart';

@WithCache()
abstract mixin class EvolutionClient implements _$EvolutionClient {
  factory EvolutionClient() = _EvolutionClient;

  final EvolutionApi _api = EvolutionApiImpl();

  @Cached()
  Future<ApiResourceList> getEvolutionChainList(int offset, int limit) async =>
      _api.fetchEvolutionChainList(offset, limit);

  @Cached()
  Future<NamedApiResourceList> getEvolutionTriggerList(
          int offset, int limit) async =>
      _api.fetchEvolutionTriggerList(offset, limit);

  @Cached()
  Future<EvolutionChain> getEvolutionChain(int id) async =>
      _api.fetchEvolutionChain(id);

  @Cached()
  Future<EvolutionTrigger> getEvolutionTrigger(int id) async =>
      _api.fetchEvolutionTrigger(id);
}
