import 'package:pikadart/src/api/impl/base_api.dart';
import 'package:pikadart/src/api/models/resources.dart';
import 'package:pikadart/src/api/utility_api.dart';

class UtilityApiImpl extends BaseApi implements UtilityApi {
  @override
  Future<NamedApiResourceList> fetchLanguageList(int offset, int limit) {
    return handleNamedApiResource("language", offset, limit);
  }
}
