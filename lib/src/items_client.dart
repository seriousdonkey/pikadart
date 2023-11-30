import 'package:cached_annotation/cached_annotation.dart';
import 'package:pikadart/src/api/impl/items_api_impl.dart';
import 'package:pikadart/src/api/items_api.dart';
import 'package:pikadart/src/api/models/resources.dart';

part 'items_client.cached.dart';

@WithCache()
abstract mixin class ItemsClient implements _$ItemsClient {
  factory ItemsClient() = _ItemsClient;

  final ItemsApi _api = ItemsApiImpl();

  @Cached()
  Future<NamedApiResourceList> getItemList(int offset, int limit) async =>
      _api.fetchItemList(offset, limit);

  @Cached()
  Future<NamedApiResourceList> getItemAttributeList(
          int offset, int limit) async =>
      _api.fetchItemAttributeList(offset, limit);

  @Cached()
  Future<NamedApiResourceList> getItemCategoryList(
          int offset, int limit) async =>
      _api.fetchItemCategoryList(offset, limit);

  @Cached()
  Future<NamedApiResourceList> getItemFlingEffectList(
          int offset, int limit) async =>
      _api.fetchItemFlingEffectList(offset, limit);

  @Cached()
  Future<NamedApiResourceList> getItemPocketList(int offset, int limit) async =>
      _api.fetchItemPocketList(offset, limit);
}
