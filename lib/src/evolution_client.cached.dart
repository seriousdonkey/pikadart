// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

part of 'evolution_client.dart';

// **************************************************************************
// CachedGenerator
// **************************************************************************

abstract class _$EvolutionClient {}

class _EvolutionClient with EvolutionClient implements _$EvolutionClient {
  _EvolutionClient();

  final _getEvolutionChainListCached = <String, ApiResourceList>{};
  final _getEvolutionTriggerListCached = <String, NamedApiResourceList>{};
  final _getEvolutionChainCached = <String, EvolutionChain>{};
  final _getEvolutionTriggerCached = <String, EvolutionTrigger>{};

  @override
  Future<ApiResourceList> getEvolutionChainList(int offset, int limit) async {
    final cachedValue =
        _getEvolutionChainListCached["${offset.hashCode}${limit.hashCode}"];
    if (cachedValue == null) {
      final ApiResourceList toReturn;
      try {
        final result = super.getEvolutionChainList(offset, limit);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      _getEvolutionChainListCached["${offset.hashCode}${limit.hashCode}"] =
          toReturn;

      return toReturn;
    } else {
      return cachedValue;
    }
  }

  @override
  Future<NamedApiResourceList> getEvolutionTriggerList(
      int offset, int limit) async {
    final cachedValue =
        _getEvolutionTriggerListCached["${offset.hashCode}${limit.hashCode}"];
    if (cachedValue == null) {
      final NamedApiResourceList toReturn;
      try {
        final result = super.getEvolutionTriggerList(offset, limit);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      _getEvolutionTriggerListCached["${offset.hashCode}${limit.hashCode}"] =
          toReturn;

      return toReturn;
    } else {
      return cachedValue;
    }
  }

  @override
  Future<EvolutionChain> getEvolutionChain(int id) async {
    final cachedValue = _getEvolutionChainCached["${id.hashCode}"];
    if (cachedValue == null) {
      final EvolutionChain toReturn;
      try {
        final result = super.getEvolutionChain(id);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      _getEvolutionChainCached["${id.hashCode}"] = toReturn;

      return toReturn;
    } else {
      return cachedValue;
    }
  }

  @override
  Future<EvolutionTrigger> getEvolutionTrigger(int id) async {
    final cachedValue = _getEvolutionTriggerCached["${id.hashCode}"];
    if (cachedValue == null) {
      final EvolutionTrigger toReturn;
      try {
        final result = super.getEvolutionTrigger(id);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      _getEvolutionTriggerCached["${id.hashCode}"] = toReturn;

      return toReturn;
    } else {
      return cachedValue;
    }
  }
}
