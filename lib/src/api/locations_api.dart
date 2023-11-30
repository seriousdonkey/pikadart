import 'models/resources.dart';

abstract class LocationsApi {
  Future<NamedApiResourceList> fetchLocationList(int offset, int limit);

  Future<NamedApiResourceList> fetchLocationAreaList(int offset, int limit);

  Future<NamedApiResourceList> fetchPalParkAreaList(int offset, int limit);

  Future<NamedApiResourceList> fetchRegionList(int offset, int limit);
}
