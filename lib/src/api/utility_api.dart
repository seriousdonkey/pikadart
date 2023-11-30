import 'models/resources.dart';

abstract class UtilityApi {
  Future<NamedApiResourceList> fetchLanguageList(int offset, int limit);
}
