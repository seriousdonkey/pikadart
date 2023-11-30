// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

part of 'contests_client.dart';

// **************************************************************************
// CachedGenerator
// **************************************************************************

abstract class _$ContestsClient {}

class _ContestsClient with ContestsClient implements _$ContestsClient {
  _ContestsClient();

  final _getContestTypeListCached = <String, NamedApiResourceList>{};
  final _getContestEffectListCached = <String, ApiResourceList>{};
  final _getSuperContestEffectListCached = <String, ApiResourceList>{};
  final _getContestTypeCached = <String, ContestType>{};
  final _getContestEffectCached = <String, ContestEffect>{};
  final _getSuperContestEffectCached = <String, SuperContestEffect>{};

  @override
  Future<NamedApiResourceList> getContestTypeList(int offset, int limit) async {
    final cachedValue =
        _getContestTypeListCached["${offset.hashCode}${limit.hashCode}"];
    if (cachedValue == null) {
      final NamedApiResourceList toReturn;
      try {
        final result = super.getContestTypeList(offset, limit);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      _getContestTypeListCached["${offset.hashCode}${limit.hashCode}"] =
          toReturn;

      return toReturn;
    } else {
      return cachedValue;
    }
  }

  @override
  Future<ApiResourceList> getContestEffectList(int offset, int limit) async {
    final cachedValue =
        _getContestEffectListCached["${offset.hashCode}${limit.hashCode}"];
    if (cachedValue == null) {
      final ApiResourceList toReturn;
      try {
        final result = super.getContestEffectList(offset, limit);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      _getContestEffectListCached["${offset.hashCode}${limit.hashCode}"] =
          toReturn;

      return toReturn;
    } else {
      return cachedValue;
    }
  }

  @override
  Future<ApiResourceList> getSuperContestEffectList(
      int offset, int limit) async {
    final cachedValue =
        _getSuperContestEffectListCached["${offset.hashCode}${limit.hashCode}"];
    if (cachedValue == null) {
      final ApiResourceList toReturn;
      try {
        final result = super.getSuperContestEffectList(offset, limit);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      _getSuperContestEffectListCached["${offset.hashCode}${limit.hashCode}"] =
          toReturn;

      return toReturn;
    } else {
      return cachedValue;
    }
  }

  @override
  Future<ContestType> getContestType(int id) async {
    final cachedValue = _getContestTypeCached["${id.hashCode}"];
    if (cachedValue == null) {
      final ContestType toReturn;
      try {
        final result = super.getContestType(id);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      _getContestTypeCached["${id.hashCode}"] = toReturn;

      return toReturn;
    } else {
      return cachedValue;
    }
  }

  @override
  Future<ContestEffect> getContestEffect(int id) async {
    final cachedValue = _getContestEffectCached["${id.hashCode}"];
    if (cachedValue == null) {
      final ContestEffect toReturn;
      try {
        final result = super.getContestEffect(id);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      _getContestEffectCached["${id.hashCode}"] = toReturn;

      return toReturn;
    } else {
      return cachedValue;
    }
  }

  @override
  Future<SuperContestEffect> getSuperContestEffect(int id) async {
    final cachedValue = _getSuperContestEffectCached["${id.hashCode}"];
    if (cachedValue == null) {
      final SuperContestEffect toReturn;
      try {
        final result = super.getSuperContestEffect(id);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      _getSuperContestEffectCached["${id.hashCode}"] = toReturn;

      return toReturn;
    } else {
      return cachedValue;
    }
  }
}
