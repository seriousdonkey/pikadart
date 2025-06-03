import 'package:pikadart/src/api/impl/items_api_impl.dart';
import 'package:pikadart/src/api/items_api.dart';
import 'package:pikadart/src/api/models/resources.dart';
import 'package:pikadart/src/cache/cache_strategy.dart';
import 'package:pikadart/src/cache/memory_cache_strategy.dart';

class ItemsClient {
  final ItemsApi _api;

  ItemsClient({
    CacheStrategy? cacheStrategy,
  }) : _api = ItemsApiImpl(
          cacheStrategy: cacheStrategy ?? MemoryCacheStrategy(),
        );

  Future<NamedApiResourceList> getItemList(int offset, int limit) async =>
      _api.fetchItemList(offset, limit);

  Future<NamedApiResourceList> getItemAttributeList(
          int offset, int limit) async =>
      _api.fetchItemAttributeList(offset, limit);

  Future<NamedApiResourceList> getItemCategoryList(
          int offset, int limit) async =>
      _api.fetchItemCategoryList(offset, limit);

  Future<NamedApiResourceList> getItemFlingEffectList(
          int offset, int limit) async =>
      _api.fetchItemFlingEffectList(offset, limit);

  Future<NamedApiResourceList> getItemPocketList(int offset, int limit) async =>
      _api.fetchItemPocketList(offset, limit);
}
