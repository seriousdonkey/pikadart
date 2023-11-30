import 'package:pikadart/src/api/impl/base_api.dart';
import 'package:pikadart/src/api/machine_api.dart';
import 'package:pikadart/src/api/models/resources.dart';

class MachineApiImpl extends BaseApi implements MachineApi {
  @override
  Future<ApiResourceList> fetchMachineList(int offset, int limit) {
    return handleApiResource("machine", offset, limit);
  }
}
