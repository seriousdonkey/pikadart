// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

part of 'encounters_client.dart';

// **************************************************************************
// CachedGenerator
// **************************************************************************

abstract class _$EncountersClient {}

class _EncountersClient with EncountersClient implements _$EncountersClient {
  _EncountersClient();

  final _getEncounterMethodListCached = <String, NamedApiResourceList>{};
  final _getEncounterConditionListCached = <String, NamedApiResourceList>{};
  final _getEncounterConditionValueListCached =
      <String, NamedApiResourceList>{};
  final _getEncounterMethodCached = <String, EncounterMethod>{};
  final _getEncounterConditionCached = <String, EncounterCondition>{};
  final _getEncounterConditionValueCached = <String, EncounterConditionValue>{};

  @override
  Future<NamedApiResourceList> getEncounterMethodList(
      int offset, int limit) async {
    final cachedValue =
        _getEncounterMethodListCached["${offset.hashCode}${limit.hashCode}"];
    if (cachedValue == null) {
      final NamedApiResourceList toReturn;
      try {
        final result = super.getEncounterMethodList(offset, limit);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      _getEncounterMethodListCached["${offset.hashCode}${limit.hashCode}"] =
          toReturn;

      return toReturn;
    } else {
      return cachedValue;
    }
  }

  @override
  Future<NamedApiResourceList> getEncounterConditionList(
      int offset, int limit) async {
    final cachedValue =
        _getEncounterConditionListCached["${offset.hashCode}${limit.hashCode}"];
    if (cachedValue == null) {
      final NamedApiResourceList toReturn;
      try {
        final result = super.getEncounterConditionList(offset, limit);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      _getEncounterConditionListCached["${offset.hashCode}${limit.hashCode}"] =
          toReturn;

      return toReturn;
    } else {
      return cachedValue;
    }
  }

  @override
  Future<NamedApiResourceList> getEncounterConditionValueList(
      int offset, int limit) async {
    final cachedValue = _getEncounterConditionValueListCached[
        "${offset.hashCode}${limit.hashCode}"];
    if (cachedValue == null) {
      final NamedApiResourceList toReturn;
      try {
        final result = super.getEncounterConditionValueList(offset, limit);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      _getEncounterConditionValueListCached[
          "${offset.hashCode}${limit.hashCode}"] = toReturn;

      return toReturn;
    } else {
      return cachedValue;
    }
  }

  @override
  Future<EncounterMethod> getEncounterMethod(int id) async {
    final cachedValue = _getEncounterMethodCached["${id.hashCode}"];
    if (cachedValue == null) {
      final EncounterMethod toReturn;
      try {
        final result = super.getEncounterMethod(id);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      _getEncounterMethodCached["${id.hashCode}"] = toReturn;

      return toReturn;
    } else {
      return cachedValue;
    }
  }

  @override
  Future<EncounterCondition> getEncounterCondition(int id) async {
    final cachedValue = _getEncounterConditionCached["${id.hashCode}"];
    if (cachedValue == null) {
      final EncounterCondition toReturn;
      try {
        final result = super.getEncounterCondition(id);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      _getEncounterConditionCached["${id.hashCode}"] = toReturn;

      return toReturn;
    } else {
      return cachedValue;
    }
  }

  @override
  Future<EncounterConditionValue> getEncounterConditionValue(int id) async {
    final cachedValue = _getEncounterConditionValueCached["${id.hashCode}"];
    if (cachedValue == null) {
      final EncounterConditionValue toReturn;
      try {
        final result = super.getEncounterConditionValue(id);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      _getEncounterConditionValueCached["${id.hashCode}"] = toReturn;

      return toReturn;
    } else {
      return cachedValue;
    }
  }
}
