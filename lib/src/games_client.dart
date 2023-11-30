import 'package:cached_annotation/cached_annotation.dart';
import 'package:pikadart/src/api/games_api.dart';
import 'package:pikadart/src/api/impl/games_api_impl.dart';
import 'package:pikadart/src/api/models/resources.dart';

part 'games_client.cached.dart';

@WithCache()
abstract mixin class GamesClient implements _$GamesClient {
  factory GamesClient() = _GamesClient;

  final GamesApi _api = GamesApiImpl();

  @Cached()
  Future<NamedApiResourceList> getGenerationList(int offset, int limit) async =>
      _api.fetchGenerationList(offset, limit);

  @Cached()
  Future<NamedApiResourceList> getPokedexList(int offset, int limit) async =>
      _api.fetchPokedexList(offset, limit);

  @Cached()
  Future<NamedApiResourceList> getVersionList(int offset, int limit) async =>
      _api.fetchVersionList(offset, limit);

  @Cached()
  Future<NamedApiResourceList> getVersionGroupList(
          int offset, int limit) async =>
      _api.fetchVersionGroupList(offset, limit);
}
