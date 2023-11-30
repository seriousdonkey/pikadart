import 'models/resources.dart';

abstract class MachineApi {
  Future<ApiResourceList> fetchMachineList(int offset, int limit);
}
