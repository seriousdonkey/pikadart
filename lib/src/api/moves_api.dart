import 'models/resources.dart';

abstract class MovesApi {
  Future<NamedApiResourceList> fetchMoveList(int offset, int limit);

  Future<NamedApiResourceList> fetchMoveAilmentList(int offset, int limit);

  Future<NamedApiResourceList> fetchMoveBattleStyleList(int offset, int limit);

  Future<NamedApiResourceList> fetchMoveCategoryList(int offset, int limit);

  Future<NamedApiResourceList> fetchMoveDamageClassList(int offset, int limit);

  Future<NamedApiResourceList> fetchMoveLearnMethodList(int offset, int limit);

  Future<NamedApiResourceList> fetchMoveTargetList(int offset, int limit);
}
