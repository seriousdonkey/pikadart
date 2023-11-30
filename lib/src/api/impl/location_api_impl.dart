import 'package:pikadart/src/api/impl/base_api.dart';
import 'package:pikadart/src/api/locations_api.dart';
import 'package:pikadart/src/api/models/resources.dart';

class LocationsApiImpl extends BaseApi implements LocationsApi {
  @override
  Future<NamedApiResourceList> fetchLocationList(int offset, int limit) {
    return handleNamedApiResource("location", offset, limit);
  }

  @override
  Future<NamedApiResourceList> fetchLocationAreaList(int offset, int limit) {
    return handleNamedApiResource("location-area", offset, limit);
  }

  @override
  Future<NamedApiResourceList> fetchPalParkAreaList(int offset, int limit) {
    return handleNamedApiResource("pal-park-area", offset, limit);
  }

  @override
  Future<NamedApiResourceList> fetchRegionList(int offset, int limit) {
    return handleNamedApiResource("region", offset, limit);
  }
}
