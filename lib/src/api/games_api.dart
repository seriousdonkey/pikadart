import 'models/resources.dart';

abstract class GamesApi {
  Future<NamedApiResourceList> fetchGenerationList(int offset, int limit);

  Future<NamedApiResourceList> fetchPokedexList(int offset, int limit);

  Future<NamedApiResourceList> fetchVersionList(int offset, int limit);

  Future<NamedApiResourceList> fetchVersionGroupList(int offset, int limit);
}
