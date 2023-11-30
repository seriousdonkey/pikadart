import 'models/encounters.dart';
import 'models/resources.dart';

abstract class EncountersApi {
  Future<NamedApiResourceList> fetchEncounterMethodList(int offset, int limit);

  Future<NamedApiResourceList> fetchEncounterConditionList(
      int offset, int limit);

  Future<NamedApiResourceList> fetchEncounterConditionValueList(
      int offset, int limit);

  Future<EncounterMethod> fetchEncounterMethod(int id);

  Future<EncounterCondition> fetchEncounterCondition(int id);

  Future<EncounterConditionValue> fetchEncounterConditionValue(int id);
}
