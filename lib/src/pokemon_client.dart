import 'package:pikadart/src/api/impl/pokemon_api_impl.dart';
import 'package:pikadart/src/api/models/pokemon.dart';
import 'package:pikadart/src/api/models/resources.dart';
import 'package:pikadart/src/api/pokemon_api.dart';
import 'package:pikadart/src/cache/cache_strategy.dart';
import 'package:pikadart/src/cache/memory_cache_strategy.dart';

class PokemonClient {
  final PokemonApi _api;

  PokemonClient({
    CacheStrategy? cacheStrategy,
  }) : _api = PokemonApiImpl(
            cacheStrategy: cacheStrategy ?? MemoryCacheStrategy());

  Future<NamedApiResourceList> getAbilityList(int offset, int limit) async =>
      _api.fetchAbilityList(offset, limit);

  Future<ApiResourceList> getCharacteristicList(int offset, int limit) async =>
      _api.fetchCharacteristicList(offset, limit);

  Future<NamedApiResourceList> getEggGroupList(int offset, int limit) async =>
      _api.fetchEggGroupList(offset, limit);

  Future<NamedApiResourceList> getGenderList(int offset, int limit) async =>
      _api.fetchEggGroupList(offset, limit);

  Future<NamedApiResourceList> getGrowthRateList(int offset, int limit) async =>
      _api.fetchGrowthRateList(offset, limit);

  Future<NamedApiResourceList> getNatureList(int offset, int limit) async =>
      _api.fetchNatureList(offset, limit);

  Future<NamedApiResourceList> getPokeathlonStatList(
          int offset, int limit) async =>
      _api.fetchPokeathlonStatList(offset, limit);

  Future<NamedApiResourceList> getPokemonList(int offset, int limit) async =>
      _api.fetchPokemonList(offset, limit);

  Future<NamedApiResourceList> getPokemonColorList(
          int offset, int limit) async =>
      _api.fetchPokemonColorList(offset, limit);

  Future<NamedApiResourceList> getPokemonFormList(
          int offset, int limit) async =>
      _api.fetchPokemonFormList(offset, limit);

  Future<NamedApiResourceList> getPokemonHabitatList(
          int offset, int limit) async =>
      _api.fetchPokemonHabitatList(offset, limit);

  Future<NamedApiResourceList> getPokemonShapeList(
          int offset, int limit) async =>
      _api.fetchPokemonShapeList(offset, limit);

  Future<NamedApiResourceList> getPokemonSpeciesList(
          int offset, int limit) async =>
      _api.fetchPokemonSpeciesList(offset, limit);

  Future<NamedApiResourceList> getStatList(int offset, int limit) async =>
      _api.fetchStatList(offset, limit);

  Future<NamedApiResourceList> getTypeList(int offset, int limit) async =>
      _api.fetchTypeList(offset, limit);

  Future<Pokemon> getPokemonById(int id) async => _api.fetchPokemonById(id);

  Future<Pokemon> getPokemonByName(String name) async =>
      _api.fetchPokemonByName(name);

  Future<List<LocationAreaEncounter>> getPokemonEncounterList(
          int pokemonId) async =>
      _api.fetchPokemonEncounterList(pokemonId);

  Future<PokemonColor> getPokemonColor(int pokemonId) async =>
      _api.fetchPokemonColor(pokemonId);

  Future<PokemonForm> getPokemonForm(int pokemonId) async =>
      _api.fetchPokemonForm(pokemonId);

  Future<PokemonHabitat> getPokemonHabitat(int pokemonId) async =>
      _api.fetchPokemonHabitat(pokemonId);

  Future<PokemonShape> getPokemonShape(int pokemonId) async =>
      _api.fetchPokemonShape(pokemonId);

  Future<PokemonSpecies> getPokemonSpecies(int pokemonId) async =>
      _api.fetchPokemonSpecies(pokemonId);

  Future<Stat> getPokemonStat(int pokemonId) async =>
      _api.fetchPokemonStat(pokemonId);

  Future<Type> getPokemonType(int pokemonId) async =>
      _api.fetchPokemonType(pokemonId);
}
