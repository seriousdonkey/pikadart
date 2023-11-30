import 'models/evolution.dart';
import 'models/resources.dart';

abstract class EvolutionApi {
  Future<ApiResourceList> fetchEvolutionChainList(int offset, int limit);

  Future<NamedApiResourceList> fetchEvolutionTriggerList(int offset, int limit);

  Future<EvolutionChain> fetchEvolutionChain(int id);

  Future<EvolutionTrigger> fetchEvolutionTrigger(int id);
}
