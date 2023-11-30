import 'package:pikadart/src/api/impl/base_api.dart';
import 'package:pikadart/src/api/items_api.dart';
import 'package:pikadart/src/api/models/resources.dart';

class ItemsApiImpl extends BaseApi implements ItemsApi {
  @override
  Future<NamedApiResourceList> fetchItemList(int offset, int limit) {
    return handleNamedApiResource("item", offset, limit);
  }

  @override
  Future<NamedApiResourceList> fetchItemAttributeList(int offset, int limit) {
    return handleNamedApiResource("item-attribute", offset, limit);
  }

  @override
  Future<NamedApiResourceList> fetchItemCategoryList(int offset, int limit) {
    return handleNamedApiResource("item-category", offset, limit);
  }

  @override
  Future<NamedApiResourceList> fetchItemFlingEffectList(int offset, int limit) {
    return handleNamedApiResource("item-fling-effect", offset, limit);
  }

  @override
  Future<NamedApiResourceList> fetchItemPocketList(int offset, int limit) {
    return handleNamedApiResource("item-pocket", offset, limit);
  }
}
