import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pikadart/src/api/impl/base_api.dart';
import 'package:pikadart/src/api/models/pokemon.dart';
import 'package:pikadart/src/api/models/resources.dart';
import 'package:pikadart/src/api/pokemon_api.dart';

class PokemonApiImpl extends BaseApi implements PokemonApi {
  @override
  Future<NamedApiResourceList> fetchAbilityList(int offset, int limit) {
    return handleNamedApiResource("ability", offset, limit);
  }

  @override
  Future<ApiResourceList> fetchCharacteristicList(int offset, int limit) {
    return handleApiResource("characteristic", offset, limit);
  }

  @override
  Future<NamedApiResourceList> fetchEggGroupList(int offset, int limit) {
    return handleNamedApiResource("egg-group", offset, limit);
  }

  @override
  Future<NamedApiResourceList> fetchGenderList(int offset, int limit) {
    return handleNamedApiResource("gender", offset, limit);
  }

  @override
  Future<NamedApiResourceList> fetchGrowthRateList(int offset, int limit) {
    return handleNamedApiResource("growth-rate", offset, limit);
  }

  @override
  Future<NamedApiResourceList> fetchNatureList(int offset, int limit) {
    return handleNamedApiResource("nature", offset, limit);
  }

  @override
  Future<NamedApiResourceList> fetchPokeathlonStatList(int offset, int limit) {
    return handleNamedApiResource("pokeathlon-stat", offset, limit);
  }

  @override
  Future<NamedApiResourceList> fetchPokemonList(int offset, int limit) {
    return handleNamedApiResource("pokemon", offset, limit);
  }

  @override
  Future<NamedApiResourceList> fetchPokemonColorList(int offset, int limit) {
    return handleNamedApiResource("pokemon-color", offset, limit);
  }

  @override
  Future<NamedApiResourceList> fetchPokemonFormList(int offset, int limit) {
    return handleNamedApiResource("pokemon-form", offset, limit);
  }

  @override
  Future<NamedApiResourceList> fetchPokemonHabitatList(int offset, int limit) {
    return handleNamedApiResource("pokemon-habitat", offset, limit);
  }

  @override
  Future<NamedApiResourceList> fetchPokemonShapeList(int offset, int limit) {
    return handleNamedApiResource("pokemon-shape", offset, limit);
  }

  @override
  Future<NamedApiResourceList> fetchPokemonSpeciesList(int offset, int limit) {
    return handleNamedApiResource("pokemon-species", offset, limit);
  }

  @override
  Future<NamedApiResourceList> fetchStatList(int offset, int limit) {
    return handleNamedApiResource("stat", offset, limit);
  }

  @override
  Future<NamedApiResourceList> fetchTypeList(int offset, int limit) {
    return handleNamedApiResource("type", offset, limit);
  }

  @override
  Future<Pokemon> fetchPokemonById(int id) async {
    final response = await http.get(Uri.parse("$baseUrl/pokemon/$id"));

    if (response.statusCode == 200) {
      return Pokemon.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      throw Exception(
          "Failed to fetch data with status code: ${response.statusCode}");
    }
  }

  @override
  Future<Pokemon> fetchPokemonByName(String name) async {
    final response = await http.get(Uri.parse("$baseUrl/pokemon/$name"));

    if (response.statusCode == 200) {
      return Pokemon.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      throw Exception(
          "Failed to fetch data with status code: ${response.statusCode}");
    }
  }

  @override
  Future<List<LocationAreaEncounter>> fetchPokemonEncounterList(
      int pokemonId) async {
    final response =
        await http.get(Uri.parse("$baseUrl/pokemon/$pokemonId/encounters/"));

    if (response.statusCode == 200) {
      return (jsonDecode(response.body) as List)
          .map((e) => LocationAreaEncounter.fromJson(e))
          .toList();
    } else {
      throw Exception(
          "Failed to fetch data with status code: ${response.statusCode}");
    }
  }

  @override
  Future<PokemonColor> fetchPokemonColor(int pokemonId) async {
    final response =
        await http.get(Uri.parse("$baseUrl/pokemon-color/$pokemonId"));

    if (response.statusCode == 200) {
      return PokemonColor.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      throw Exception(
          "Failed to fetch data with status code: ${response.statusCode}");
    }
  }

  @override
  Future<PokemonForm> fetchPokemonForm(int pokemonId) async {
    final response =
        await http.get(Uri.parse("$baseUrl/pokemon-form/$pokemonId"));

    if (response.statusCode == 200) {
      return PokemonForm.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      throw Exception(
          "Failed to fetch data with status code: ${response.statusCode}");
    }
  }

  @override
  Future<PokemonHabitat> fetchPokemonHabitat(int pokemonId) async {
    final response =
        await http.get(Uri.parse("$baseUrl/pokemon-habitat/$pokemonId"));

    if (response.statusCode == 200) {
      return PokemonHabitat.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      throw Exception(
          "Failed to fetch data with status code: ${response.statusCode}");
    }
  }

  @override
  Future<PokemonShape> fetchPokemonShape(int pokemonId) async {
    final response =
        await http.get(Uri.parse("$baseUrl/pokemon-shape/$pokemonId"));

    if (response.statusCode == 200) {
      return PokemonShape.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      throw Exception(
          "Failed to fetch data with status code: ${response.statusCode}");
    }
  }

  @override
  Future<PokemonSpecies> fetchPokemonSpecies(int pokemonId) async {
    final response =
        await http.get(Uri.parse("$baseUrl/pokemon-species/$pokemonId"));

    if (response.statusCode == 200) {
      return PokemonSpecies.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      throw Exception(
          "Failed to fetch data with status code: ${response.statusCode}");
    }
  }

  @override
  Future<Stat> fetchPokemonStat(int pokemonId) async {
    final response = await http.get(Uri.parse("$baseUrl/stat/$pokemonId"));

    if (response.statusCode == 200) {
      return Stat.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      throw Exception(
          "Failed to fetch data with status code: ${response.statusCode}");
    }
  }

  @override
  Future<Type> fetchPokemonType(int pokemonId) async {
    final response = await http.get(Uri.parse("$baseUrl/type/$pokemonId"));

    if (response.statusCode == 200) {
      return Type.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      throw Exception(
          "Failed to fetch data with status code: ${response.statusCode}");
    }
  }
}
