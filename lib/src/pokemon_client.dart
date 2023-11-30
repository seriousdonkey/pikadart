import 'package:cached_annotation/cached_annotation.dart';
import 'package:pikadart/src/api/impl/pokemon_api_impl.dart';
import 'package:pikadart/src/api/models/pokemon.dart';
import 'package:pikadart/src/api/models/resources.dart';
import 'package:pikadart/src/api/pokemon_api.dart';

part 'pokemon_client.cached.dart';

@WithCache()
abstract mixin class PokemonClient implements _$PokemonClient {
  factory PokemonClient() = _PokemonClient;

  final PokemonApi _api = PokemonApiImpl();

  @Cached()
  Future<NamedApiResourceList> getAbilityList(int offset, int limit) async =>
      _api.fetchAbilityList(offset, limit);

  @Cached()
  Future<ApiResourceList> getCharacteristicList(int offset, int limit) async =>
      _api.fetchCharacteristicList(offset, limit);

  @Cached()
  Future<NamedApiResourceList> getEggGroupList(int offset, int limit) async =>
      _api.fetchEggGroupList(offset, limit);

  @Cached()
  Future<NamedApiResourceList> getGenderList(int offset, int limit) async =>
      _api.fetchEggGroupList(offset, limit);

  @Cached()
  Future<NamedApiResourceList> getGrowthRateList(int offset, int limit) async =>
      _api.fetchGrowthRateList(offset, limit);

  @Cached()
  Future<NamedApiResourceList> getNatureList(int offset, int limit) async =>
      _api.fetchNatureList(offset, limit);

  @Cached()
  Future<NamedApiResourceList> getPokeathlonStatList(
          int offset, int limit) async =>
      _api.fetchPokeathlonStatList(offset, limit);

  @Cached()
  Future<NamedApiResourceList> getPokemonList(int offset, int limit) async =>
      _api.fetchPokemonList(offset, limit);

  @Cached()
  Future<NamedApiResourceList> getPokemonColorList(
          int offset, int limit) async =>
      _api.fetchPokemonColorList(offset, limit);

  @Cached()
  Future<NamedApiResourceList> getPokemonFormList(
          int offset, int limit) async =>
      _api.fetchPokemonFormList(offset, limit);

  @Cached()
  Future<NamedApiResourceList> getPokemonHabitatList(
          int offset, int limit) async =>
      _api.fetchPokemonHabitatList(offset, limit);

  @Cached()
  Future<NamedApiResourceList> getPokemonShapeList(
          int offset, int limit) async =>
      _api.fetchPokemonShapeList(offset, limit);

  @Cached()
  Future<NamedApiResourceList> getPokemonSpeciesList(
          int offset, int limit) async =>
      _api.fetchPokemonSpeciesList(offset, limit);

  @Cached()
  Future<NamedApiResourceList> getStatList(int offset, int limit) async =>
      _api.fetchStatList(offset, limit);

  @Cached()
  Future<NamedApiResourceList> getTypeList(int offset, int limit) async =>
      _api.fetchTypeList(offset, limit);

  @Cached()
  Future<Pokemon> getPokemonById(int id) async => _api.fetchPokemonById(id);

  @Cached()
  Future<Pokemon> getPokemonByName(String name) async =>
      _api.fetchPokemonByName(name);

  @Cached()
  Future<List<LocationAreaEncounter>> getPokemonEncounterList(
          int pokemonId) async =>
      _api.fetchPokemonEncounterList(pokemonId);

  @Cached()
  Future<PokemonColor> getPokemonColor(int pokemonId) async =>
      _api.fetchPokemonColor(pokemonId);

  @Cached()
  Future<PokemonForm> getPokemonForm(int pokemonId) async =>
      _api.fetchPokemonForm(pokemonId);

  @Cached()
  Future<PokemonHabitat> getPokemonHabitat(int pokemonId) async =>
      _api.fetchPokemonHabitat(pokemonId);

  @Cached()
  Future<PokemonShape> getPokemonShape(int pokemonId) async =>
      _api.fetchPokemonShape(pokemonId);

  @Cached()
  Future<PokemonSpecies> getPokemonSpecies(int pokemonId) async =>
      _api.fetchPokemonSpecies(pokemonId);

  @Cached()
  Future<Stat> getPokemonStat(int pokemonId) async =>
      _api.fetchPokemonStat(pokemonId);

  @Cached()
  Future<Type> getPokemonType(int pokemonId) async =>
      _api.fetchPokemonType(pokemonId);
}
