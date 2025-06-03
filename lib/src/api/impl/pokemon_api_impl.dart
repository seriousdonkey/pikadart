import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pikadart/src/api/impl/base_api.dart';
import 'package:pikadart/src/api/models/pokemon.dart';
import 'package:pikadart/src/api/models/resources.dart';
import 'package:pikadart/src/api/pokemon_api.dart';
import 'package:pikadart/src/cache/cache_strategy.dart';

class PokemonApiImpl extends BaseApi implements PokemonApi {
  final CacheStrategy _cacheStrategy;

  PokemonApiImpl({required super.cacheStrategy})
      : _cacheStrategy = cacheStrategy;

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
    final url = "$baseUrl/pokemon/$id";
    final cached = await _cacheStrategy.get<Pokemon>(url);
    if (cached != null) {
      return cached;
    }

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final pokemon =
          Pokemon.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
      await _cacheStrategy.set(url, pokemon);

      return pokemon;
    } else {
      throw Exception(
          "Failed to fetch data with status code: ${response.statusCode}");
    }
  }

  @override
  Future<Pokemon> fetchPokemonByName(String name) async {
    final url = "$baseUrl/pokemon/$name";
    final cached = await _cacheStrategy.get<Pokemon>(url);
    if (cached != null) {
      return cached;
    }

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final pokemon =
          Pokemon.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
      await _cacheStrategy.set(url, pokemon);
      return pokemon;
    } else {
      throw Exception(
          "Failed to fetch data with status code: ${response.statusCode}");
    }
  }

  @override
  Future<List<LocationAreaEncounter>> fetchPokemonEncounterList(
      int pokemonId) async {
    final url = "$baseUrl/pokemon/$pokemonId/encounters/";
    final cached = await _cacheStrategy.get<List<LocationAreaEncounter>>(url);
    if (cached != null) {
      return cached;
    }

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final encounters = (jsonDecode(response.body) as List)
          .map((e) => LocationAreaEncounter.fromJson(e))
          .toList();
      await _cacheStrategy.set(url, encounters);
      return encounters;
    } else {
      throw Exception(
          "Failed to fetch data with status code: ${response.statusCode}");
    }
  }

  @override
  Future<PokemonColor> fetchPokemonColor(int pokemonId) async {
    final url = "$baseUrl/pokemon-color/$pokemonId";
    final cached = await _cacheStrategy.get<PokemonColor>(url);
    if (cached != null) {
      return cached;
    }

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final color = PokemonColor.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
      await _cacheStrategy.set(url, color);
      return color;
    } else {
      throw Exception(
          "Failed to fetch data with status code: ${response.statusCode}");
    }
  }

  @override
  Future<PokemonForm> fetchPokemonForm(int pokemonId) async {
    final url = "$baseUrl/pokemon-form/$pokemonId";
    final cached = await _cacheStrategy.get<PokemonForm>(url);
    if (cached != null) {
      return cached;
    }

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final form = PokemonForm.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
      await _cacheStrategy.set(url, form);
      return form;
    } else {
      throw Exception(
          "Failed to fetch data with status code: ${response.statusCode}");
    }
  }

  @override
  Future<PokemonHabitat> fetchPokemonHabitat(int pokemonId) async {
    final url = "$baseUrl/pokemon-habitat/$pokemonId";
    final cached = await _cacheStrategy.get<PokemonHabitat>(url);
    if (cached != null) {
      return cached;
    }

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final habitat = PokemonHabitat.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
      await _cacheStrategy.set(url, habitat);
      return habitat;
    } else {
      throw Exception(
          "Failed to fetch data with status code: ${response.statusCode}");
    }
  }

  @override
  Future<PokemonShape> fetchPokemonShape(int pokemonId) async {
    final url = "$baseUrl/pokemon-shape/$pokemonId";
    final cached = await _cacheStrategy.get<PokemonShape>(url);
    if (cached != null) {
      return cached;
    }

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final shape = PokemonShape.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
      await _cacheStrategy.set(url, shape);
      return shape;
    } else {
      throw Exception(
          "Failed to fetch data with status code: ${response.statusCode}");
    }
  }

  @override
  Future<PokemonSpecies> fetchPokemonSpecies(int pokemonId) async {
    final url = "$baseUrl/pokemon-species/$pokemonId";
    final cached = await _cacheStrategy.get<PokemonSpecies>(url);
    if (cached != null) {
      return cached;
    }

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final species = PokemonSpecies.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
      await _cacheStrategy.set(url, species);
      return species;
    } else {
      throw Exception(
          "Failed to fetch data with status code: ${response.statusCode}");
    }
  }

  @override
  Future<Stat> fetchPokemonStat(int pokemonId) async {
    final url = "$baseUrl/stat/$pokemonId";
    final cached = await _cacheStrategy.get<Stat>(url);
    if (cached != null) {
      return cached;
    }

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final stat =
          Stat.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
      await _cacheStrategy.set(url, stat);
      return stat;
    } else {
      throw Exception(
          "Failed to fetch data with status code: ${response.statusCode}");
    }
  }

  @override
  Future<Type> fetchPokemonType(int pokemonId) async {
    final url = "$baseUrl/type/$pokemonId";
    final cached = await _cacheStrategy.get<Type>(url);
    if (cached != null) {
      return cached;
    }

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final type =
          Type.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
      await _cacheStrategy.set(url, type);
      return type;
    } else {
      throw Exception(
          "Failed to fetch data with status code: ${response.statusCode}");
    }
  }
}
