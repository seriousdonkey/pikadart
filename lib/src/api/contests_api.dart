import 'models/contests.dart';
import 'models/resources.dart';

abstract class ContestsApi {
  Future<NamedApiResourceList> fetchContestTypeList(int offset, int limit);

  Future<ApiResourceList> fetchContestEffectList(int offset, int limit);

  Future<ApiResourceList> fetchSuperContestEffectList(int offset, int limit);

  Future<ContestType> fetchContestType(int id);

  Future<ContestEffect> fetchContestEffect(int id);

  Future<SuperContestEffect> fetchSuperContestEffect(int id);
}
