// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

part of 'games_client.dart';

// **************************************************************************
// CachedGenerator
// **************************************************************************

abstract class _$GamesClient {}

class _GamesClient with GamesClient implements _$GamesClient {
  _GamesClient();

  final _getGenerationListCached = <String, NamedApiResourceList>{};
  final _getPokedexListCached = <String, NamedApiResourceList>{};
  final _getVersionListCached = <String, NamedApiResourceList>{};
  final _getVersionGroupListCached = <String, NamedApiResourceList>{};

  @override
  Future<NamedApiResourceList> getGenerationList(int offset, int limit) async {
    final cachedValue =
        _getGenerationListCached["${offset.hashCode}${limit.hashCode}"];
    if (cachedValue == null) {
      final NamedApiResourceList toReturn;
      try {
        final result = super.getGenerationList(offset, limit);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      _getGenerationListCached["${offset.hashCode}${limit.hashCode}"] =
          toReturn;

      return toReturn;
    } else {
      return cachedValue;
    }
  }

  @override
  Future<NamedApiResourceList> getPokedexList(int offset, int limit) async {
    final cachedValue =
        _getPokedexListCached["${offset.hashCode}${limit.hashCode}"];
    if (cachedValue == null) {
      final NamedApiResourceList toReturn;
      try {
        final result = super.getPokedexList(offset, limit);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      _getPokedexListCached["${offset.hashCode}${limit.hashCode}"] = toReturn;

      return toReturn;
    } else {
      return cachedValue;
    }
  }

  @override
  Future<NamedApiResourceList> getVersionList(int offset, int limit) async {
    final cachedValue =
        _getVersionListCached["${offset.hashCode}${limit.hashCode}"];
    if (cachedValue == null) {
      final NamedApiResourceList toReturn;
      try {
        final result = super.getVersionList(offset, limit);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      _getVersionListCached["${offset.hashCode}${limit.hashCode}"] = toReturn;

      return toReturn;
    } else {
      return cachedValue;
    }
  }

  @override
  Future<NamedApiResourceList> getVersionGroupList(
      int offset, int limit) async {
    final cachedValue =
        _getVersionGroupListCached["${offset.hashCode}${limit.hashCode}"];
    if (cachedValue == null) {
      final NamedApiResourceList toReturn;
      try {
        final result = super.getVersionGroupList(offset, limit);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      _getVersionGroupListCached["${offset.hashCode}${limit.hashCode}"] =
          toReturn;

      return toReturn;
    } else {
      return cachedValue;
    }
  }
}
