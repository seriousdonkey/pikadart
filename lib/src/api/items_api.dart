import 'models/resources.dart';

abstract class ItemsApi {
  Future<NamedApiResourceList> fetchItemList(int offset, int limit);

  Future<NamedApiResourceList> fetchItemAttributeList(int offset, int limit);

  Future<NamedApiResourceList> fetchItemCategoryList(int offset, int limit);

  Future<NamedApiResourceList> fetchItemFlingEffectList(int offset, int limit);

  Future<NamedApiResourceList> fetchItemPocketList(int offset, int limit);
}
