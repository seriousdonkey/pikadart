import 'models/berries.dart';
import 'models/resources.dart';

abstract class BerriesApi {
  Future<NamedApiResourceList> fetchBerryList(int offset, int limit);

  Future<NamedApiResourceList> fetchBerryFirmnessList(int offset, int limit);

  Future<NamedApiResourceList> fetchBerryFlavorList(int offset, int limit);

  Future<Berry> fetchBerry(int id);

  Future<BerryFirmness> fetchBerryFirmness(int id);

  Future<BerryFlavor> fetchBerryFlavor(int id);
}
