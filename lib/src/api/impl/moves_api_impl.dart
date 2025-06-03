import 'package:pikadart/src/api/impl/base_api.dart';
import 'package:pikadart/src/api/models/resources.dart';
import 'package:pikadart/src/api/moves_api.dart';

class MovesApiImpl extends BaseApi implements MovesApi {
  MovesApiImpl({required super.cacheStrategy});

  @override
  Future<NamedApiResourceList> fetchMoveList(int offset, int limit) {
    return handleNamedApiResource("move", offset, limit);
  }

  @override
  Future<NamedApiResourceList> fetchMoveAilmentList(int offset, int limit) {
    return handleNamedApiResource("move-ailment", offset, limit);
  }

  @override
  Future<NamedApiResourceList> fetchMoveBattleStyleList(int offset, int limit) {
    return handleNamedApiResource("move-battle-style", offset, limit);
  }

  @override
  Future<NamedApiResourceList> fetchMoveCategoryList(int offset, int limit) {
    return handleNamedApiResource("move-category", offset, limit);
  }

  @override
  Future<NamedApiResourceList> fetchMoveDamageClassList(int offset, int limit) {
    return handleNamedApiResource("move-damage-class", offset, limit);
  }

  @override
  Future<NamedApiResourceList> fetchMoveLearnMethodList(int offset, int limit) {
    return handleNamedApiResource("move-learn-method", offset, limit);
  }

  @override
  Future<NamedApiResourceList> fetchMoveTargetList(int offset, int limit) {
    return handleNamedApiResource("move-target", offset, limit);
  }
}
