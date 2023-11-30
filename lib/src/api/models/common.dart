import 'package:pikadart/src/api/models/resources.dart';

class Effect {
  /// The localized effect text for an API resource in a specific language.
  final String effect;

  /// The language this effect is in.
  final NamedApiResource language;

  Effect({required this.effect, required this.language});

  factory Effect.fromJson(Map<String, dynamic> json) {
    final language = NamedApiResource.fromJson(json["language"]);
    return Effect(effect: json["effect"], language: language);
  }
}

class FlavorText {
  /// The localized flavor text for an API resource in a specific language.
  final String flavorText;

  /// The language this name is in.
  final NamedApiResource language;

  /// The game version this flavor text is extracted from.
  final NamedApiResource version;

  FlavorText({
    required this.flavorText,
    required this.language,
    required this.version,
  });

  factory FlavorText.fromJson(Map<String, dynamic> json) {
    final language = NamedApiResource.fromJson(json["language"]);
    final version = NamedApiResource.fromJson(json["version"]);
    return FlavorText(
      flavorText: json["flavor_text"],
      language: language,
      version: version,
    );
  }
}

class Name {
  /// The localized name for an API resource in a specific language.
  final String name;

  /// The language this name is in.
  final NamedApiResource language;

  Name({
    required this.name,
    required this.language,
  });

  factory Name.fromJson(Map<String, dynamic> json) {
    final language = NamedApiResource.fromJson(json["language"]);
    return Name(name: json["name"], language: language);
  }
}

class VersionGameIndex {
  /// The internal id of an API resource within game data.
  final int gameIndex;

  /// The version relevent to this game index.
  final NamedApiResource version;

  VersionGameIndex({
    required this.gameIndex,
    required this.version,
  });

  factory VersionGameIndex.fromJson(Map<String, dynamic> json) {
    final version = NamedApiResource.fromJson(json["version"]);
    return VersionGameIndex(
      gameIndex: json["game_index"],
      version: version,
    );
  }
}

class VersionEncounterDetail {
  /// The game version this encounter happens in.
  final NamedApiResource version;

  /// The total percentage of all encounter potential.
  final int maxChance;

  /// A list of encounters and their specifics.
  final List<Encounter> encounterDetails;

  VersionEncounterDetail({
    required this.version,
    required this.maxChance,
    required this.encounterDetails,
  });

  factory VersionEncounterDetail.fromJson(Map<String, dynamic> json) {
    final version = NamedApiResource.fromJson(json["version"]);
    final encounterDetails = (json["encounter_details"] as List)
        .map((e) => Encounter.fromJson(e))
        .toList();
    return VersionEncounterDetail(
      version: version,
      maxChance: json["max_chance"],
      encounterDetails: encounterDetails,
    );
  }
}

class Encounter {
  /// The lowest level the Pokémon could be encountered at.
  final int minLevel;

  /// The highest level the Pokémon could be encountered at.
  final int maxLevel;

  /// A list of condition values that must be in effect for this encounter to occur.
  final List<NamedApiResource> conditionValues;

  /// Percent chance that this encounter will occur.
  final int chance;

  /// The method by which this encounter happens.
  final NamedApiResource method;

  Encounter({
    required this.minLevel,
    required this.maxLevel,
    required this.conditionValues,
    required this.chance,
    required this.method,
  });

  factory Encounter.fromJson(Map<String, dynamic> json) {
    final conditionValues = (json["condition_values"] as List)
        .map((e) => NamedApiResource.fromJson(e))
        .toList();
    final method = NamedApiResource.fromJson(json["method"]);
    return Encounter(
      minLevel: json["min_level"],
      maxLevel: json["max_level"],
      conditionValues: conditionValues,
      chance: json["chance"],
      method: method,
    );
  }
}

class Description {
  /// The localized description for an API resource in a specific language.
  final String description;

  /// The language this name is in.
  final NamedApiResource language;

  Description({
    required this.description,
    required this.language,
  });

  factory Description.fromJson(Map<String, dynamic> json) {
    final language = NamedApiResource.fromJson(json['language']);
    return Description(
      description: json['description'],
      language: language,
    );
  }
}

class GenerationGameIndex {
  /// The internal id of an API resource within game data.
  final int gameIndex;

  /// The generation relevant to this game index.
  final NamedApiResource generation;

  GenerationGameIndex({
    required this.gameIndex,
    required this.generation,
  });

  factory GenerationGameIndex.fromJson(Map<String, dynamic> json) {
    final generation = NamedApiResource.fromJson(json['generation']);
    return GenerationGameIndex(
      gameIndex: json['game_index'],
      generation: generation,
    );
  }
}

class Language {
  /// The identifier for this resource.
  final int id;

  /// The name for this resource.
  final String name;

  /// Whether or not the games are published in this language.
  final bool official;

  /// The two-letter code of the country where this language is spoken. Note that it is not unique.
  final String iso639;

  /// The two-letter code of the language. Note that it is not unique.
  final String iso3166;

  /// The name of this resource listed in different languages.
  final List<Name> names;

  Language({
    required this.id,
    required this.name,
    required this.official,
    required this.iso639,
    required this.iso3166,
    required this.names,
  });

  factory Language.fromJson(Map<String, dynamic> json) {
    final names =
        (json['names'] as List<dynamic>).map((e) => Name.fromJson(e)).toList();
    return Language(
      id: json['id'],
      name: json['name'],
      official: json['official'],
      iso639: json['iso639'],
      iso3166: json['iso3166'],
      names: names,
    );
  }
}
