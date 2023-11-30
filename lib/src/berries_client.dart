import 'package:cached_annotation/cached_annotation.dart';
import 'package:pikadart/src/api/berries_api.dart';
import 'package:pikadart/src/api/impl/berries_api_impl.dart';
import 'package:pikadart/src/api/models/berries.dart';
import 'package:pikadart/src/api/models/resources.dart';

part 'berries_client.cached.dart';

@WithCache()
abstract mixin class BerriesClient implements _$BerriesClient {
  factory BerriesClient() = _BerriesClient;

  final BerriesApi _api = BerriesApiImpl();

  @Cached()
  Future<NamedApiResourceList> getBerryList(int offset, int limit) async =>
      _api.fetchBerryList(offset, limit);

  @Cached()
  Future<NamedApiResourceList> getBerryFirmnessList(
          int offset, int limit) async =>
      _api.fetchBerryFirmnessList(offset, limit);

  @Cached()
  Future<NamedApiResourceList> getBerryFlavorList(
          int offset, int limit) async =>
      _api.fetchBerryFlavorList(offset, limit);

  @Cached()
  Future<Berry> getBerry(int id) async => _api.fetchBerry(id);

  @Cached()
  Future<BerryFirmness> getBerryFirmness(int id) async =>
      _api.fetchBerryFirmness(id);

  @Cached()
  Future<BerryFlavor> getBerryFlavor(int id) async => _api.fetchBerryFlavor(id);
}
