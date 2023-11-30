import 'package:pikadart/src/api/games_api.dart';
import 'package:pikadart/src/api/impl/base_api.dart';
import 'package:pikadart/src/api/models/resources.dart';

class GamesApiImpl extends BaseApi implements GamesApi {
  @override
  Future<NamedApiResourceList> fetchGenerationList(
      int offset, int limit) async {
    return handleNamedApiResource("generation", offset, limit);
  }

  @override
  Future<NamedApiResourceList> fetchPokedexList(int offset, int limit) async {
    return handleNamedApiResource("pokedex", offset, limit);
  }

  @override
  Future<NamedApiResourceList> fetchVersionList(int offset, int limit) {
    return handleNamedApiResource("version", offset, limit);
  }

  @override
  Future<NamedApiResourceList> fetchVersionGroupList(int offset, int limit) {
    return handleNamedApiResource("version-group", offset, limit);
  }
}
