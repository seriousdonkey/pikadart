// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

part of 'items_client.dart';

// **************************************************************************
// CachedGenerator
// **************************************************************************

abstract class _$ItemsClient {}

class _ItemsClient with ItemsClient implements _$ItemsClient {
  _ItemsClient();

  final _getItemListCached = <String, NamedApiResourceList>{};
  final _getItemAttributeListCached = <String, NamedApiResourceList>{};
  final _getItemCategoryListCached = <String, NamedApiResourceList>{};
  final _getItemFlingEffectListCached = <String, NamedApiResourceList>{};
  final _getItemPocketListCached = <String, NamedApiResourceList>{};

  @override
  Future<NamedApiResourceList> getItemList(int offset, int limit) async {
    final cachedValue =
        _getItemListCached["${offset.hashCode}${limit.hashCode}"];
    if (cachedValue == null) {
      final NamedApiResourceList toReturn;
      try {
        final result = super.getItemList(offset, limit);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      _getItemListCached["${offset.hashCode}${limit.hashCode}"] = toReturn;

      return toReturn;
    } else {
      return cachedValue;
    }
  }

  @override
  Future<NamedApiResourceList> getItemAttributeList(
      int offset, int limit) async {
    final cachedValue =
        _getItemAttributeListCached["${offset.hashCode}${limit.hashCode}"];
    if (cachedValue == null) {
      final NamedApiResourceList toReturn;
      try {
        final result = super.getItemAttributeList(offset, limit);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      _getItemAttributeListCached["${offset.hashCode}${limit.hashCode}"] =
          toReturn;

      return toReturn;
    } else {
      return cachedValue;
    }
  }

  @override
  Future<NamedApiResourceList> getItemCategoryList(
      int offset, int limit) async {
    final cachedValue =
        _getItemCategoryListCached["${offset.hashCode}${limit.hashCode}"];
    if (cachedValue == null) {
      final NamedApiResourceList toReturn;
      try {
        final result = super.getItemCategoryList(offset, limit);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      _getItemCategoryListCached["${offset.hashCode}${limit.hashCode}"] =
          toReturn;

      return toReturn;
    } else {
      return cachedValue;
    }
  }

  @override
  Future<NamedApiResourceList> getItemFlingEffectList(
      int offset, int limit) async {
    final cachedValue =
        _getItemFlingEffectListCached["${offset.hashCode}${limit.hashCode}"];
    if (cachedValue == null) {
      final NamedApiResourceList toReturn;
      try {
        final result = super.getItemFlingEffectList(offset, limit);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      _getItemFlingEffectListCached["${offset.hashCode}${limit.hashCode}"] =
          toReturn;

      return toReturn;
    } else {
      return cachedValue;
    }
  }

  @override
  Future<NamedApiResourceList> getItemPocketList(int offset, int limit) async {
    final cachedValue =
        _getItemPocketListCached["${offset.hashCode}${limit.hashCode}"];
    if (cachedValue == null) {
      final NamedApiResourceList toReturn;
      try {
        final result = super.getItemPocketList(offset, limit);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      _getItemPocketListCached["${offset.hashCode}${limit.hashCode}"] =
          toReturn;

      return toReturn;
    } else {
      return cachedValue;
    }
  }
}
