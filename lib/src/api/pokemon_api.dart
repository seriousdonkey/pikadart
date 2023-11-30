import 'models/pokemon.dart';
import 'models/resources.dart';

abstract class PokemonApi {
  Future<NamedApiResourceList> fetchAbilityList(int offset, int limit);

  Future<ApiResourceList> fetchCharacteristicList(int offset, int limit);

  Future<NamedApiResourceList> fetchEggGroupList(int offset, int limit);

  Future<NamedApiResourceList> fetchGenderList(int offset, int limit);

  Future<NamedApiResourceList> fetchGrowthRateList(int offset, int limit);

  Future<NamedApiResourceList> fetchNatureList(int offset, int limit);

  Future<NamedApiResourceList> fetchPokeathlonStatList(int offset, int limit);

  Future<NamedApiResourceList> fetchPokemonList(int offset, int limit);

  Future<NamedApiResourceList> fetchPokemonColorList(int offset, int limit);

  Future<NamedApiResourceList> fetchPokemonFormList(int offset, int limit);

  Future<NamedApiResourceList> fetchPokemonHabitatList(int offset, int limit);

  Future<NamedApiResourceList> fetchPokemonShapeList(int offset, int limit);

  Future<NamedApiResourceList> fetchPokemonSpeciesList(int offset, int limit);

  Future<NamedApiResourceList> fetchStatList(int offset, int limit);

  Future<NamedApiResourceList> fetchTypeList(int offset, int limit);

  Future<Pokemon> fetchPokemonByName(String name);

  Future<Pokemon> fetchPokemonById(int id);

  Future<List<LocationAreaEncounter>> fetchPokemonEncounterList(int pokemonId);

  Future<PokemonColor> fetchPokemonColor(int pokemonId);

  Future<PokemonForm> fetchPokemonForm(int pokemonId);

  Future<PokemonHabitat> fetchPokemonHabitat(int pokemonId);

  Future<PokemonShape> fetchPokemonShape(int pokemonId);

  Future<PokemonSpecies> fetchPokemonSpecies(int pokemonId);

  Future<Stat> fetchPokemonStat(int pokemonId);

  Future<Type> fetchPokemonType(int pokemonId);
}
