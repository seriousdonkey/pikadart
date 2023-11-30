// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

part of 'pokemon_client.dart';

// **************************************************************************
// CachedGenerator
// **************************************************************************

abstract class _$PokemonClient {}

class _PokemonClient with PokemonClient implements _$PokemonClient {
  _PokemonClient();

  final _getAbilityListCached = <String, NamedApiResourceList>{};
  final _getCharacteristicListCached = <String, ApiResourceList>{};
  final _getEggGroupListCached = <String, NamedApiResourceList>{};
  final _getGenderListCached = <String, NamedApiResourceList>{};
  final _getGrowthRateListCached = <String, NamedApiResourceList>{};
  final _getNatureListCached = <String, NamedApiResourceList>{};
  final _getPokeathlonStatListCached = <String, NamedApiResourceList>{};
  final _getPokemonListCached = <String, NamedApiResourceList>{};
  final _getPokemonColorListCached = <String, NamedApiResourceList>{};
  final _getPokemonFormListCached = <String, NamedApiResourceList>{};
  final _getPokemonHabitatListCached = <String, NamedApiResourceList>{};
  final _getPokemonShapeListCached = <String, NamedApiResourceList>{};
  final _getPokemonSpeciesListCached = <String, NamedApiResourceList>{};
  final _getStatListCached = <String, NamedApiResourceList>{};
  final _getTypeListCached = <String, NamedApiResourceList>{};
  final _getPokemonByIdCached = <String, Pokemon>{};
  final _getPokemonByNameCached = <String, Pokemon>{};
  final _getPokemonEncounterListCached =
      <String, List<LocationAreaEncounter>>{};
  final _getPokemonColorCached = <String, PokemonColor>{};
  final _getPokemonFormCached = <String, PokemonForm>{};
  final _getPokemonHabitatCached = <String, PokemonHabitat>{};
  final _getPokemonShapeCached = <String, PokemonShape>{};
  final _getPokemonSpeciesCached = <String, PokemonSpecies>{};
  final _getPokemonStatCached = <String, Stat>{};
  final _getPokemonTypeCached = <String, Type>{};

  @override
  Future<NamedApiResourceList> getAbilityList(int offset, int limit) async {
    final cachedValue =
        _getAbilityListCached["${offset.hashCode}${limit.hashCode}"];
    if (cachedValue == null) {
      final NamedApiResourceList toReturn;
      try {
        final result = super.getAbilityList(offset, limit);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      _getAbilityListCached["${offset.hashCode}${limit.hashCode}"] = toReturn;

      return toReturn;
    } else {
      return cachedValue;
    }
  }

  @override
  Future<ApiResourceList> getCharacteristicList(int offset, int limit) async {
    final cachedValue =
        _getCharacteristicListCached["${offset.hashCode}${limit.hashCode}"];
    if (cachedValue == null) {
      final ApiResourceList toReturn;
      try {
        final result = super.getCharacteristicList(offset, limit);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      _getCharacteristicListCached["${offset.hashCode}${limit.hashCode}"] =
          toReturn;

      return toReturn;
    } else {
      return cachedValue;
    }
  }

  @override
  Future<NamedApiResourceList> getEggGroupList(int offset, int limit) async {
    final cachedValue =
        _getEggGroupListCached["${offset.hashCode}${limit.hashCode}"];
    if (cachedValue == null) {
      final NamedApiResourceList toReturn;
      try {
        final result = super.getEggGroupList(offset, limit);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      _getEggGroupListCached["${offset.hashCode}${limit.hashCode}"] = toReturn;

      return toReturn;
    } else {
      return cachedValue;
    }
  }

  @override
  Future<NamedApiResourceList> getGenderList(int offset, int limit) async {
    final cachedValue =
        _getGenderListCached["${offset.hashCode}${limit.hashCode}"];
    if (cachedValue == null) {
      final NamedApiResourceList toReturn;
      try {
        final result = super.getGenderList(offset, limit);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      _getGenderListCached["${offset.hashCode}${limit.hashCode}"] = toReturn;

      return toReturn;
    } else {
      return cachedValue;
    }
  }

  @override
  Future<NamedApiResourceList> getGrowthRateList(int offset, int limit) async {
    final cachedValue =
        _getGrowthRateListCached["${offset.hashCode}${limit.hashCode}"];
    if (cachedValue == null) {
      final NamedApiResourceList toReturn;
      try {
        final result = super.getGrowthRateList(offset, limit);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      _getGrowthRateListCached["${offset.hashCode}${limit.hashCode}"] =
          toReturn;

      return toReturn;
    } else {
      return cachedValue;
    }
  }

  @override
  Future<NamedApiResourceList> getNatureList(int offset, int limit) async {
    final cachedValue =
        _getNatureListCached["${offset.hashCode}${limit.hashCode}"];
    if (cachedValue == null) {
      final NamedApiResourceList toReturn;
      try {
        final result = super.getNatureList(offset, limit);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      _getNatureListCached["${offset.hashCode}${limit.hashCode}"] = toReturn;

      return toReturn;
    } else {
      return cachedValue;
    }
  }

  @override
  Future<NamedApiResourceList> getPokeathlonStatList(
      int offset, int limit) async {
    final cachedValue =
        _getPokeathlonStatListCached["${offset.hashCode}${limit.hashCode}"];
    if (cachedValue == null) {
      final NamedApiResourceList toReturn;
      try {
        final result = super.getPokeathlonStatList(offset, limit);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      _getPokeathlonStatListCached["${offset.hashCode}${limit.hashCode}"] =
          toReturn;

      return toReturn;
    } else {
      return cachedValue;
    }
  }

  @override
  Future<NamedApiResourceList> getPokemonList(int offset, int limit) async {
    final cachedValue =
        _getPokemonListCached["${offset.hashCode}${limit.hashCode}"];
    if (cachedValue == null) {
      final NamedApiResourceList toReturn;
      try {
        final result = super.getPokemonList(offset, limit);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      _getPokemonListCached["${offset.hashCode}${limit.hashCode}"] = toReturn;

      return toReturn;
    } else {
      return cachedValue;
    }
  }

  @override
  Future<NamedApiResourceList> getPokemonColorList(
      int offset, int limit) async {
    final cachedValue =
        _getPokemonColorListCached["${offset.hashCode}${limit.hashCode}"];
    if (cachedValue == null) {
      final NamedApiResourceList toReturn;
      try {
        final result = super.getPokemonColorList(offset, limit);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      _getPokemonColorListCached["${offset.hashCode}${limit.hashCode}"] =
          toReturn;

      return toReturn;
    } else {
      return cachedValue;
    }
  }

  @override
  Future<NamedApiResourceList> getPokemonFormList(int offset, int limit) async {
    final cachedValue =
        _getPokemonFormListCached["${offset.hashCode}${limit.hashCode}"];
    if (cachedValue == null) {
      final NamedApiResourceList toReturn;
      try {
        final result = super.getPokemonFormList(offset, limit);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      _getPokemonFormListCached["${offset.hashCode}${limit.hashCode}"] =
          toReturn;

      return toReturn;
    } else {
      return cachedValue;
    }
  }

  @override
  Future<NamedApiResourceList> getPokemonHabitatList(
      int offset, int limit) async {
    final cachedValue =
        _getPokemonHabitatListCached["${offset.hashCode}${limit.hashCode}"];
    if (cachedValue == null) {
      final NamedApiResourceList toReturn;
      try {
        final result = super.getPokemonHabitatList(offset, limit);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      _getPokemonHabitatListCached["${offset.hashCode}${limit.hashCode}"] =
          toReturn;

      return toReturn;
    } else {
      return cachedValue;
    }
  }

  @override
  Future<NamedApiResourceList> getPokemonShapeList(
      int offset, int limit) async {
    final cachedValue =
        _getPokemonShapeListCached["${offset.hashCode}${limit.hashCode}"];
    if (cachedValue == null) {
      final NamedApiResourceList toReturn;
      try {
        final result = super.getPokemonShapeList(offset, limit);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      _getPokemonShapeListCached["${offset.hashCode}${limit.hashCode}"] =
          toReturn;

      return toReturn;
    } else {
      return cachedValue;
    }
  }

  @override
  Future<NamedApiResourceList> getPokemonSpeciesList(
      int offset, int limit) async {
    final cachedValue =
        _getPokemonSpeciesListCached["${offset.hashCode}${limit.hashCode}"];
    if (cachedValue == null) {
      final NamedApiResourceList toReturn;
      try {
        final result = super.getPokemonSpeciesList(offset, limit);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      _getPokemonSpeciesListCached["${offset.hashCode}${limit.hashCode}"] =
          toReturn;

      return toReturn;
    } else {
      return cachedValue;
    }
  }

  @override
  Future<NamedApiResourceList> getStatList(int offset, int limit) async {
    final cachedValue =
        _getStatListCached["${offset.hashCode}${limit.hashCode}"];
    if (cachedValue == null) {
      final NamedApiResourceList toReturn;
      try {
        final result = super.getStatList(offset, limit);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      _getStatListCached["${offset.hashCode}${limit.hashCode}"] = toReturn;

      return toReturn;
    } else {
      return cachedValue;
    }
  }

  @override
  Future<NamedApiResourceList> getTypeList(int offset, int limit) async {
    final cachedValue =
        _getTypeListCached["${offset.hashCode}${limit.hashCode}"];
    if (cachedValue == null) {
      final NamedApiResourceList toReturn;
      try {
        final result = super.getTypeList(offset, limit);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      _getTypeListCached["${offset.hashCode}${limit.hashCode}"] = toReturn;

      return toReturn;
    } else {
      return cachedValue;
    }
  }

  @override
  Future<Pokemon> getPokemonById(int id) async {
    final cachedValue = _getPokemonByIdCached["${id.hashCode}"];
    if (cachedValue == null) {
      final Pokemon toReturn;
      try {
        final result = super.getPokemonById(id);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      _getPokemonByIdCached["${id.hashCode}"] = toReturn;

      return toReturn;
    } else {
      return cachedValue;
    }
  }

  @override
  Future<Pokemon> getPokemonByName(String name) async {
    final cachedValue = _getPokemonByNameCached["${name.hashCode}"];
    if (cachedValue == null) {
      final Pokemon toReturn;
      try {
        final result = super.getPokemonByName(name);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      _getPokemonByNameCached["${name.hashCode}"] = toReturn;

      return toReturn;
    } else {
      return cachedValue;
    }
  }

  @override
  Future<List<LocationAreaEncounter>> getPokemonEncounterList(
      int pokemonId) async {
    final cachedValue = _getPokemonEncounterListCached["${pokemonId.hashCode}"];
    if (cachedValue == null) {
      final List<LocationAreaEncounter> toReturn;
      try {
        final result = super.getPokemonEncounterList(pokemonId);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      _getPokemonEncounterListCached["${pokemonId.hashCode}"] = toReturn;

      return toReturn;
    } else {
      return cachedValue;
    }
  }

  @override
  Future<PokemonColor> getPokemonColor(int pokemonId) async {
    final cachedValue = _getPokemonColorCached["${pokemonId.hashCode}"];
    if (cachedValue == null) {
      final PokemonColor toReturn;
      try {
        final result = super.getPokemonColor(pokemonId);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      _getPokemonColorCached["${pokemonId.hashCode}"] = toReturn;

      return toReturn;
    } else {
      return cachedValue;
    }
  }

  @override
  Future<PokemonForm> getPokemonForm(int pokemonId) async {
    final cachedValue = _getPokemonFormCached["${pokemonId.hashCode}"];
    if (cachedValue == null) {
      final PokemonForm toReturn;
      try {
        final result = super.getPokemonForm(pokemonId);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      _getPokemonFormCached["${pokemonId.hashCode}"] = toReturn;

      return toReturn;
    } else {
      return cachedValue;
    }
  }

  @override
  Future<PokemonHabitat> getPokemonHabitat(int pokemonId) async {
    final cachedValue = _getPokemonHabitatCached["${pokemonId.hashCode}"];
    if (cachedValue == null) {
      final PokemonHabitat toReturn;
      try {
        final result = super.getPokemonHabitat(pokemonId);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      _getPokemonHabitatCached["${pokemonId.hashCode}"] = toReturn;

      return toReturn;
    } else {
      return cachedValue;
    }
  }

  @override
  Future<PokemonShape> getPokemonShape(int pokemonId) async {
    final cachedValue = _getPokemonShapeCached["${pokemonId.hashCode}"];
    if (cachedValue == null) {
      final PokemonShape toReturn;
      try {
        final result = super.getPokemonShape(pokemonId);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      _getPokemonShapeCached["${pokemonId.hashCode}"] = toReturn;

      return toReturn;
    } else {
      return cachedValue;
    }
  }

  @override
  Future<PokemonSpecies> getPokemonSpecies(int pokemonId) async {
    final cachedValue = _getPokemonSpeciesCached["${pokemonId.hashCode}"];
    if (cachedValue == null) {
      final PokemonSpecies toReturn;
      try {
        final result = super.getPokemonSpecies(pokemonId);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      _getPokemonSpeciesCached["${pokemonId.hashCode}"] = toReturn;

      return toReturn;
    } else {
      return cachedValue;
    }
  }

  @override
  Future<Stat> getPokemonStat(int pokemonId) async {
    final cachedValue = _getPokemonStatCached["${pokemonId.hashCode}"];
    if (cachedValue == null) {
      final Stat toReturn;
      try {
        final result = super.getPokemonStat(pokemonId);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      _getPokemonStatCached["${pokemonId.hashCode}"] = toReturn;

      return toReturn;
    } else {
      return cachedValue;
    }
  }

  @override
  Future<Type> getPokemonType(int pokemonId) async {
    final cachedValue = _getPokemonTypeCached["${pokemonId.hashCode}"];
    if (cachedValue == null) {
      final Type toReturn;
      try {
        final result = super.getPokemonType(pokemonId);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      _getPokemonTypeCached["${pokemonId.hashCode}"] = toReturn;

      return toReturn;
    } else {
      return cachedValue;
    }
  }
}
