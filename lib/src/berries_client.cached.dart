// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

part of 'berries_client.dart';

// **************************************************************************
// CachedGenerator
// **************************************************************************

abstract class _$BerriesClient {}

class _BerriesClient with BerriesClient implements _$BerriesClient {
  _BerriesClient();

  final _getBerryListCached = <String, NamedApiResourceList>{};
  final _getBerryFirmnessListCached = <String, NamedApiResourceList>{};
  final _getBerryFlavorListCached = <String, NamedApiResourceList>{};
  final _getBerryCached = <String, Berry>{};
  final _getBerryFirmnessCached = <String, BerryFirmness>{};
  final _getBerryFlavorCached = <String, BerryFlavor>{};

  @override
  Future<NamedApiResourceList> getBerryList(int offset, int limit) async {
    final cachedValue =
        _getBerryListCached["${offset.hashCode}${limit.hashCode}"];
    if (cachedValue == null) {
      final NamedApiResourceList toReturn;
      try {
        final result = super.getBerryList(offset, limit);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      _getBerryListCached["${offset.hashCode}${limit.hashCode}"] = toReturn;

      return toReturn;
    } else {
      return cachedValue;
    }
  }

  @override
  Future<NamedApiResourceList> getBerryFirmnessList(
      int offset, int limit) async {
    final cachedValue =
        _getBerryFirmnessListCached["${offset.hashCode}${limit.hashCode}"];
    if (cachedValue == null) {
      final NamedApiResourceList toReturn;
      try {
        final result = super.getBerryFirmnessList(offset, limit);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      _getBerryFirmnessListCached["${offset.hashCode}${limit.hashCode}"] =
          toReturn;

      return toReturn;
    } else {
      return cachedValue;
    }
  }

  @override
  Future<NamedApiResourceList> getBerryFlavorList(int offset, int limit) async {
    final cachedValue =
        _getBerryFlavorListCached["${offset.hashCode}${limit.hashCode}"];
    if (cachedValue == null) {
      final NamedApiResourceList toReturn;
      try {
        final result = super.getBerryFlavorList(offset, limit);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      _getBerryFlavorListCached["${offset.hashCode}${limit.hashCode}"] =
          toReturn;

      return toReturn;
    } else {
      return cachedValue;
    }
  }

  @override
  Future<Berry> getBerry(int id) async {
    final cachedValue = _getBerryCached["${id.hashCode}"];
    if (cachedValue == null) {
      final Berry toReturn;
      try {
        final result = super.getBerry(id);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      _getBerryCached["${id.hashCode}"] = toReturn;

      return toReturn;
    } else {
      return cachedValue;
    }
  }

  @override
  Future<BerryFirmness> getBerryFirmness(int id) async {
    final cachedValue = _getBerryFirmnessCached["${id.hashCode}"];
    if (cachedValue == null) {
      final BerryFirmness toReturn;
      try {
        final result = super.getBerryFirmness(id);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      _getBerryFirmnessCached["${id.hashCode}"] = toReturn;

      return toReturn;
    } else {
      return cachedValue;
    }
  }

  @override
  Future<BerryFlavor> getBerryFlavor(int id) async {
    final cachedValue = _getBerryFlavorCached["${id.hashCode}"];
    if (cachedValue == null) {
      final BerryFlavor toReturn;
      try {
        final result = super.getBerryFlavor(id);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      _getBerryFlavorCached["${id.hashCode}"] = toReturn;

      return toReturn;
    } else {
      return cachedValue;
    }
  }
}
