import 'package:pikadart/src/api/models/common.dart';
import 'package:pikadart/src/api/models/resources.dart';

class Pokemon {
  /// The identifier for this resource.
  final int id;

  /// The name for this resource.
  final String name;

  /// The base experience gained for defeating this Pokémon.
  final int baseExperience;

  /// The height of this Pokémon in decimetres.
  final int height;

  /// Set for exactly one Pokémon used as the default for each species.
  final bool isDefault;

  /// Order for sorting. Almost national order, except families are grouped together.
  final int order;

  /// The weight of this Pokémon in hectograms.
  final int weight;

  /// The species this Pokémon belongs to.
  final NamedApiResource species;

  /// A list of abilities this Pokémon could potentially have.
  final List<PokemonAbility> abilities;

  /// A list of forms this Pokémon can take on.
  final List<NamedApiResource> forms;

  /// A list of game indices relevant to Pokémon item by generation.
  final List<VersionGameIndex> gameIndices;

  /// A list of items this Pokémon may be holding when encountered.
  final List<PokemonHeldItem> heldItems;

  /// A list of moves along with learn methods and level details pertaining to specific version groups.
  final List<PokemonMove> moves;

  /// A list of base stat values for this Pokémon.
  final List<PokemonStat> stats;

  /// A list of details showing types this Pokémon has.
  final List<PokemonType> types;

  /// A set of sprites used to depict this Pokémon in the game.
  final PokemonSprites sprites;

  Pokemon({
    required this.id,
    required this.name,
    required this.baseExperience,
    required this.height,
    required this.isDefault,
    required this.order,
    required this.weight,
    required this.species,
    required this.abilities,
    required this.forms,
    required this.gameIndices,
    required this.heldItems,
    required this.moves,
    required this.stats,
    required this.types,
    required this.sprites,
  });

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    final species = NamedApiResource.fromJson(json["species"]);
    final abilities = (json["abilities"] as List)
        .map((e) => PokemonAbility.fromJson(e))
        .toList();
    final forms = (json["forms"] as List)
        .map((e) => NamedApiResource.fromJson(e))
        .toList();
    final gameIndices = (json["game_indices"] as List)
        .map((e) => VersionGameIndex.fromJson(e))
        .toList();
    final heldItems = (json["held_items"] as List)
        .map((e) => PokemonHeldItem.fromJson(e))
        .toList();
    final moves =
        (json["moves"] as List).map((e) => PokemonMove.fromJson(e)).toList();
    final stats =
        (json["stats"] as List).map((e) => PokemonStat.fromJson(e)).toList();
    final types =
        (json["types"] as List).map((e) => PokemonType.fromJson(e)).toList();
    final sprites = PokemonSprites.fromJson(json["sprites"]);
    return Pokemon(
      id: json["id"],
      name: json["name"],
      baseExperience: json["base_experience"],
      height: json["height"],
      isDefault: json["is_default"],
      order: json["order"],
      weight: json["weight"],
      species: species,
      abilities: abilities,
      forms: forms,
      gameIndices: gameIndices,
      heldItems: heldItems,
      moves: moves,
      stats: stats,
      types: types,
      sprites: sprites,
    );
  }
}

///
/// See: https://pokeapi.co/docs/v2#pokemonability
///
class PokemonAbility {
  /// Whether or not this is a hidden ability.
  final bool isHidden;

  /// The slot this ability occupies in this Pokémon species.
  final int slot;

  /// The ability the Pokémon may have.
  final NamedApiResource ability;

  PokemonAbility({
    required this.isHidden,
    required this.slot,
    required this.ability,
  });

  factory PokemonAbility.fromJson(Map<String, dynamic> json) {
    final ability = NamedApiResource.fromJson(json["ability"]);
    return PokemonAbility(
      isHidden: json["is_hidden"],
      slot: json["slot"],
      ability: ability,
    );
  }
}

///
/// See: https://pokeapi.co/docs/v2#pokemonhelditem
///
class PokemonHeldItem {
  /// The item the referenced Pokémon holds.
  final NamedApiResource item;

  /// The details of the different versions in which the item is held.
  final List<PokemonHeldItemVersion> versionDetails;

  PokemonHeldItem({
    required this.item,
    required this.versionDetails,
  });

  factory PokemonHeldItem.fromJson(Map<String, dynamic> json) {
    final item = NamedApiResource.fromJson(json["item"]);
    final versionDetails = (json["version_details"] as List)
        .map((e) => PokemonHeldItemVersion.fromJson(e))
        .toList();
    return PokemonHeldItem(item: item, versionDetails: versionDetails);
  }
}

class PokemonHeldItemVersion {
  /// The version in which the item is held.
  final NamedApiResource version;

  /// How often the item is held.
  final int rarity;

  PokemonHeldItemVersion({
    required this.version,
    required this.rarity,
  });

  factory PokemonHeldItemVersion.fromJson(Map<String, dynamic> json) {
    final version = NamedApiResource.fromJson(json["version"]);
    return PokemonHeldItemVersion(version: version, rarity: json["rarity"]);
  }
}

class PokemonMove {
  /// The move the Pokémon can learn.
  final NamedApiResource move;

  /// The details of the version in which the Pokémon can learn the move.
  final List<PokemonMoveVersion> versionGroupDetails;

  PokemonMove({
    required this.move,
    required this.versionGroupDetails,
  });

  factory PokemonMove.fromJson(Map<String, dynamic> json) {
    final move = NamedApiResource.fromJson(json["move"]);
    final versionGroupDetails = (json["version_group_details"] as List)
        .map((e) => PokemonMoveVersion.fromJson(e))
        .toList();
    return PokemonMove(
      move: move,
      versionGroupDetails: versionGroupDetails,
    );
  }
}

class PokemonMoveVersion {
  /// The method by which the move is learned.
  final NamedApiResource moveLearnMethod;

  /// The version group in which the move is learned.
  final NamedApiResource versionGroup;

  /// The minimum level to learn the move.
  final int levelLearnedAt;

  PokemonMoveVersion({
    required this.moveLearnMethod,
    required this.versionGroup,
    required this.levelLearnedAt,
  });

  factory PokemonMoveVersion.fromJson(Map<String, dynamic> json) {
    final moveLearnMethod =
        NamedApiResource.fromJson(json["move_learn_method"]);
    final versionGroup = NamedApiResource.fromJson(json["version_group"]);
    return PokemonMoveVersion(
      moveLearnMethod: moveLearnMethod,
      versionGroup: versionGroup,
      levelLearnedAt: json["level_learned_at"],
    );
  }
}

class PokemonStat {
  /// The stat the Pokémon has.
  final NamedApiResource stat;

  /// The effort points (EV) the Pokémon has in the stat.
  final int effort;

  /// The base value of the stat.
  final int baseStat;

  PokemonStat({
    required this.stat,
    required this.effort,
    required this.baseStat,
  });

  factory PokemonStat.fromJson(Map<String, dynamic> json) {
    final stat = NamedApiResource.fromJson(json["stat"]);
    return PokemonStat(
      stat: stat,
      effort: json["effort"],
      baseStat: json["base_stat"],
    );
  }
}

class PokemonType {
  /// The order the Pokémon's types are listed in.
  final int slot;

  /// The type the referenced Pokémon has.
  final NamedApiResource type;

  PokemonType({
    required this.slot,
    required this.type,
  });

  factory PokemonType.fromJson(Map<String, dynamic> json) {
    final type = NamedApiResource.fromJson(json["type"]);
    return PokemonType(slot: json["slot"], type: type);
  }
}

class PokemonSprites {
  /// The default depiction of this Pokémon from the back in battle.
  final String? backDefault;

  /// The shiny depiction of this Pokémon from the back in battle.
  final String? backShiny;

  /// The default depiction of this Pokémon from the front in battle.
  final String? frontDefault;

  /// The shiny depiction of this Pokémon from the front in battle.
  final String? frontShiny;

  /// The female depiction of this Pokémon from the back in battle.
  final String? backFemale;

  /// The shiny female depiction of this Pokémon from the back in battle.
  final String? backShinyFemale;

  /// The female depiction of this Pokémon from the front in battle.
  final String? frontFemale;

  /// The shiny female depiction of this Pokémon from the front in battle.
  final String? frontShinyFemale;

  /// Other depictions of this Pokémon.
  final PokemonSpritesOther? other;

  PokemonSprites({
    this.backDefault,
    this.backShiny,
    this.frontDefault,
    this.frontShiny,
    this.backFemale,
    this.backShinyFemale,
    this.frontFemale,
    this.frontShinyFemale,
    this.other,
  });

  factory PokemonSprites.fromJson(Map<String, dynamic> json) {
    final other = json["other"] != null
        ? PokemonSpritesOther.fromJson(json["other"])
        : null;

    return PokemonSprites(
      backDefault: json["back_default"],
      backShiny: json["back_shiny"],
      frontDefault: json["front_default"],
      frontShiny: json["front_shiny"],
      backFemale: json["back_female"],
      backShinyFemale: json["back_shiny_female"],
      frontFemale: json["front_female"],
      frontShinyFemale: json["front_shiny_female"],
      other: other,
    );
  }
}

class PokemonSpritesOther {
  /// DreamWorld depictions of this Pokémon.
  final PokemonSpritesDreamWorld? dreamWorld;

  /// Home depictions of this Pokémon.
  final PokemonSpritesHome? home;

  /// OfficalArtwork depictions of this Pokémon.
  final PokemonSpritesOfficialArtwork? officialArtwork;

  PokemonSpritesOther({
    this.dreamWorld,
    this.home,
    this.officialArtwork,
  });

  factory PokemonSpritesOther.fromJson(Map<String, dynamic> json) {
    final dreamWorld = json["dream_world"] != null
        ? PokemonSpritesDreamWorld.fromJson(json["dream_world"])
        : null;
    final home =
        json["home"] != null ? PokemonSpritesHome.fromJson(json["home"]) : null;
    final officialArtwork = json["official-artwork"] != null
        ? PokemonSpritesOfficialArtwork.fromJson(json["official-artwork"])
        : null;
    return PokemonSpritesOther(
      dreamWorld: dreamWorld,
      home: home,
      officialArtwork: officialArtwork,
    );
  }
}

class PokemonSpritesDreamWorld {
  /// The DreamWorld default depiction of this Pokémon from the front.
  final String? frontDefault;

  /// The DreamWorld female depiction of this Pokémon from the front.
  final String? frontFemale;

  PokemonSpritesDreamWorld({
    this.frontDefault,
    this.frontFemale,
  });

  factory PokemonSpritesDreamWorld.fromJson(Map<String, dynamic> json) {
    return PokemonSpritesDreamWorld(
      frontDefault: json["front_default"],
      frontFemale: json["front_female"],
    );
  }
}

class PokemonSpritesHome {
  /// The Home default depiction of this Pokémon from the front.
  final String? frontDefault;

  /// The Home female depiction of this Pokémon from the front.
  final String? frontFemale;

  /// The Home shiny depiction of this Pokémon from the front.
  final String? frontShiny;

  /// The Home shiny female depiction of this Pokémon from the front.
  final String? frontShinyFemale;

  PokemonSpritesHome({
    this.frontDefault,
    this.frontFemale,
    this.frontShiny,
    this.frontShinyFemale,
  });

  factory PokemonSpritesHome.fromJson(Map<String, dynamic> json) {
    return PokemonSpritesHome(
      frontDefault: json["front_default"],
      frontFemale: json["front_female"],
      frontShiny: json["front_shiny"],
      frontShinyFemale: json["front_shiny_female"],
    );
  }
}

class PokemonSpritesOfficialArtwork {
  /// The OfficialArtwork default depiction of this Pokémon from the front.
  final String? frontDefault;

  /// The OfficialArtwork shiny depiction of this Pokémon from the front.
  final String? frontShiny;

  PokemonSpritesOfficialArtwork({
    this.frontDefault,
    this.frontShiny,
  });

  factory PokemonSpritesOfficialArtwork.fromJson(Map<String, dynamic> json) {
    return PokemonSpritesOfficialArtwork(
      frontDefault: json["front_default"],
      frontShiny: json["front_shiny"],
    );
  }
}

class LocationAreaEncounter {
  /// The location area the referenced Pokémon can be encountered in.
  final NamedApiResource locationArea;

  /// A list of versions and encounters with the referenced Pokémon that might happen.
  final List<VersionEncounterDetail> versionDetails;

  LocationAreaEncounter({
    required this.locationArea,
    required this.versionDetails,
  });

  factory LocationAreaEncounter.fromJson(Map<String, dynamic> json) {
    final locationArea = NamedApiResource.fromJson(json["location_area"]);
    final versionDetails = (json["version_details"] as List)
        .map((e) => VersionEncounterDetail.fromJson(e))
        .toList();
    return LocationAreaEncounter(
      locationArea: locationArea,
      versionDetails: versionDetails,
    );
  }
}

class PokemonColor {
  /// The identifier for this resource.
  final int id;

  /// The name for this resource.
  final String name;

  /// The name of this resource listed in different languages.
  final List<Name> names;

  /// A list of the Pokémon species that have this color.
  final List<NamedApiResource> pokemonSpecies;

  PokemonColor({
    required this.id,
    required this.name,
    required this.names,
    required this.pokemonSpecies,
  });

  factory PokemonColor.fromJson(Map<String, dynamic> json) {
    final names = (json["name"] as List).map((e) => Name.fromJson(e)).toList();
    final pokemonSpecies = (json["pokemon_species"] as List)
        .map((e) => NamedApiResource.fromJson(e))
        .toList();
    return PokemonColor(
      id: json["id"],
      name: json["name"],
      names: names,
      pokemonSpecies: pokemonSpecies,
    );
  }
}

class PokemonForm {
  /// The identifier for this resource.
  final int id;

  /// The name for this resource.
  final String name;

  /// The order in which forms should be sorted within all forms. Multiple forms may have equal order, in which case they should fall back on sorting by name.
  final int order;

  /// The order in which forms should be sorted within a species' forms.
  final int formOrder;

  /// True for exactly one form used as the default for each Pokémon.
  final bool isDefault;

  /// Whether or not this form can only happen during battle.
  final bool isBattleOnly;

  /// Whether or not this form requires mega evolution.
  final bool isMega;

  /// The name of this form.
  final String formName;

  /// The Pokémon that can take on this form.
  final NamedApiResource pokemon;

  /// A list of details showing types this Pokémon form has.
  final List<PokemonFormType> types;

  /// The version group this Pokémon form was introduced in.
  final NamedApiResource versionGroup;

  /// A set of sprites used to depict this Pokémon form in the game.
  final PokemonFormSprites sprites;

  /// The form specific full name of this Pokémon form, or empty if the form does not have a specific name.
  final List<Name>? names;

  /// The form specific form name of this Pokémon form, or empty if the form does not have a specific name.
  final List<Name> formNames;

  PokemonForm({
    required this.id,
    required this.name,
    required this.order,
    required this.formOrder,
    required this.isDefault,
    required this.isBattleOnly,
    required this.isMega,
    required this.formName,
    required this.pokemon,
    required this.types,
    required this.versionGroup,
    required this.sprites,
    required this.names,
    required this.formNames,
  });

  factory PokemonForm.fromJson(Map<String, dynamic> json) {
    final pokemon = NamedApiResource.fromJson(json["pokemon"]);
    final types = (json["types"] as List)
        .map((e) => PokemonFormType.fromJson(e))
        .toList();
    final versionGroup = NamedApiResource.fromJson(json["version_group"]);
    final sprites = PokemonFormSprites.fromJson(json["sprites"]);
    final names = (json["names"] as List).map((e) => Name.fromJson(e)).toList();
    final formNames =
        (json["form_names"] as List).map((e) => Name.fromJson(e)).toList();
    return PokemonForm(
      id: json["id"],
      name: json["name"],
      order: json["order"],
      formOrder: json["form_order"],
      isDefault: json["is_default"],
      isBattleOnly: json["is_battle_only"],
      isMega: json["is_mega"],
      formName: json["form_name"],
      pokemon: pokemon,
      types: types,
      versionGroup: versionGroup,
      sprites: sprites,
      names: names,
      formNames: formNames,
    );
  }
}

class PokemonFormType {
  /// The order the Pokémon's types are listed in.
  final int slot;

  /// The type the referenced Form has.
  final NamedApiResource type;

  PokemonFormType({
    required this.slot,
    required this.type,
  });

  factory PokemonFormType.fromJson(Map<String, dynamic> json) {
    final type = NamedApiResource.fromJson(json["type"]);
    return PokemonFormType(slot: json["slot"], type: type);
  }
}

class PokemonFormSprites {
  /// The default depiction of this Pokémon form from the back in battle.
  final String? backDefault;

  /// The shiny depiction of this Pokémon form from the back in battle.
  final String? backShiny;

  /// The default depiction of this Pokémon form from the front in battle.
  final String? frontDefault;

  /// The shiny depiction of this Pokémon form from the front in battle.
  final String? frontShiny;

  PokemonFormSprites({
    this.backDefault,
    this.backShiny,
    this.frontDefault,
    this.frontShiny,
  });

  factory PokemonFormSprites.fromJson(Map<String, dynamic> json) {
    return PokemonFormSprites(
      backDefault: json["back_default"],
      backShiny: json["back_shiny"],
      frontDefault: json["front_default"],
      frontShiny: json["front_shiny"],
    );
  }
}

class PokemonHabitat {
  /// The identifier for this resource.
  final int id;

  /// The name for this resource.
  final String name;

  /// The name of this resource listed in different languages.
  final List<Name> names;

  /// A list of the Pokémon species that can be found in this habitat.
  final List<NamedApiResource> pokemonSpecies;

  PokemonHabitat({
    required this.id,
    required this.name,
    required this.names,
    required this.pokemonSpecies,
  });

  factory PokemonHabitat.fromJson(Map<String, dynamic> json) {
    final pokemonSpecies = (json['pokemon_species'])
        .map((e) => NamedApiResource.fromJson(e))
        .toList();
    return PokemonHabitat(
      id: json['id'],
      name: json['name'],
      names: (json['names']).map((e) => Name.fromJson(e)).toList(),
      pokemonSpecies: pokemonSpecies,
    );
  }
}

class PokemonShape {
  /// The identifier for this resource.
  final int id;

  /// The name for this resource.
  final String name;

  /// The "scientific" name of this Pokémon shape listed in different languages.
  final List<AwesomeName> awesomeNames;

  /// The name of this resource listed in different languages.
  final List<Name> names;

  /// A list of the Pokémon species that have this shape
  final List<NamedApiResource> pokemonSpecies;

  PokemonShape({
    required this.id,
    required this.name,
    required this.awesomeNames,
    required this.names,
    required this.pokemonSpecies,
  });

  factory PokemonShape.fromJson(Map<String, dynamic> json) {
    final awesomeNames =
        (json['awesome_names']).map((e) => AwesomeName.fromJson(e)).toList();
    final names = (json['names']).map((e) => Name.fromJson(e)).toList();
    final pokemonSpecies = (json['pokemon_species'])
        .map((e) => NamedApiResource.fromJson(e))
        .toList();
    return PokemonShape(
      id: json['id'],
      name: json['name'],
      awesomeNames: awesomeNames,
      names: names,
      pokemonSpecies: pokemonSpecies,
    );
  }
}

class AwesomeName {
  /// The localized "scientific" name for an API resource in a specific language.
  final String awesomeName;

  /// The language this "scientific" name is in.
  final NamedApiResource language;

  AwesomeName({
    required this.awesomeName,
    required this.language,
  });

  factory AwesomeName.fromJson(Map<String, dynamic> json) {
    final language = NamedApiResource.fromJson(json['language']);
    return AwesomeName(
      awesomeName: json['awesome_name'],
      language: language,
    );
  }
}

class PokemonSpecies {
  /// The identifier for this resource.
  final int id;

  /// The name for this resource.
  final String name;

  /// The order in which species should be sorted. Based on National Dex order, except families are grouped together and sorted by stage.
  final int order;

  /// The chance of this Pokémon being female, in eighths; or -1 for genderless.
  final int genderRate;

  /// The base capture rate; up to 255. The higher the number, the easier the catch.
  final int captureRate;

  /// The happiness when caught by a normal Pokéball; up to 255. The higher the number, the happier the Pokémon.
  final int baseHappiness;

  /// Whether or not this is a baby Pokémon.
  final bool isBaby;

  /// Whether or not this is a legendary Pokémon.
  final bool isLegendary;

  /// Whether or not this is a mythical Pokémon.
  final bool isMythical;

  /// Initial hatch counter: one must walk 255 × (hatch_counter + 1) steps before this Pokémon's egg hatches, unless utilizing bonuses like Flame Body's.
  final int hatchCounter;

  /// Whether or not this Pokémon has visual gender differences.
  final bool hasGenderDifferences;

  /// Whether or not this Pokémon has multiple forms and can switch between them.
  final bool formsSwitchable;

  /// The rate at which this Pokémon species gains levels.
  final NamedApiResource growthRate;

  /// A list of Pokedexes and the indexes reserved within them for this Pokémon species.
  final List<PokemonSpeciesDexEntry> pokedexNumbers;

  /// A list of egg groups this Pokémon species is a member of.
  final List<NamedApiResource> eggGroups;

  /// The color of this Pokémon for Pokédex search.
  final NamedApiResource color;

  /// The shape of this Pokémon for Pokédex search.
  final NamedApiResource shape;

  /// The Pokémon species that evolves into this Pokemon_species.
  final NamedApiResource? evolvesFromSpecies;

  /// The evolution chain this Pokémon species is a member of.
  final ApiResource evolutionChain;

  /// The habitat this Pokémon species can be encountered in.
  final NamedApiResource? habitat;

  /// The generation this Pokémon species was introduced in.
  final NamedApiResource generation;

  /// The name of this resource listed in different languages.
  final List<Name> names;

  /// A list of encounters that can be had with this Pokémon species in pal park.
  final List<PalParkEncounterArea> palParkEncounters;

  /// Descriptions of different forms Pokémon take on within the Pokémon species.
  final List<Description> formDescriptions;

  /// The genus of this Pokémon species listed in multiple languages.
  final List<Genus> genera;

  /// A list of the Pokémon that exist within this Pokémon species.
  final List<PokemonSpeciesVariety> varieties;

  /// A list of flavor text entries for this Pokémon species.
  final List<PokemonSpeciesFlavorText> flavorTextEntries;

  PokemonSpecies({
    required this.id,
    required this.name,
    required this.order,
    required this.genderRate,
    required this.captureRate,
    required this.baseHappiness,
    required this.isBaby,
    required this.isLegendary,
    required this.isMythical,
    required this.hatchCounter,
    required this.hasGenderDifferences,
    required this.formsSwitchable,
    required this.growthRate,
    required this.pokedexNumbers,
    required this.eggGroups,
    required this.color,
    required this.shape,
    required this.evolvesFromSpecies,
    required this.evolutionChain,
    required this.habitat,
    required this.generation,
    required this.names,
    required this.palParkEncounters,
    required this.formDescriptions,
    required this.genera,
    required this.varieties,
    required this.flavorTextEntries,
  });

  factory PokemonSpecies.fromJson(Map<String, dynamic> json) {
    final growthRate = NamedApiResource.fromJson(json['growth_rate']);
    final pokedexNumbers = (json['pokedex_numbers'] as List<dynamic>)
        .map((e) => PokemonSpeciesDexEntry.fromJson(e))
        .toList();
    final eggGroups = (json['egg_groups'] as List<dynamic>)
        .map((e) => NamedApiResource.fromJson(e))
        .toList();
    final color = NamedApiResource.fromJson(json['color']);
    final shape = NamedApiResource.fromJson(json['shape']);
    final evolvesFromSpecies = json['evolves_from_species'] != null
        ? NamedApiResource.fromJson(json['evolves_from_species'])
        : null;
    final evolutionChain = ApiResource.fromJson(json['evolution_chain']);
    final habitat = json['habitat'] != null
        ? NamedApiResource.fromJson(json['habitat'])
        : null;
    final generation = NamedApiResource.fromJson(json['generation']);
    final names =
        (json['names'] as List<dynamic>).map((e) => Name.fromJson(e)).toList();
    final palParkEncounters = (json['pal_park_encounters'] as List<dynamic>)
        .map((e) => PalParkEncounterArea.fromJson(e))
        .toList();
    final formDescriptions = (json['form_descriptions'] as List<dynamic>)
        .map((e) => Description.fromJson(e))
        .toList();
    final genera = (json['genera'] as List<dynamic>)
        .map((e) => Genus.fromJson(e))
        .toList();
    final varieties = (json['varieties'] as List<dynamic>)
        .map((e) => PokemonSpeciesVariety.fromJson(e))
        .toList();
    final flavorTextEntries = (json['flavor_text_entries'] as List<dynamic>)
        .map((e) => PokemonSpeciesFlavorText.fromJson(e))
        .toList();
    return PokemonSpecies(
      id: json['id'],
      name: json['name'],
      order: json['order'],
      genderRate: json['gender_rate'],
      captureRate: json['capture_rate'],
      baseHappiness: json['base_happiness'],
      isBaby: json['is_baby'],
      isLegendary: json['is_legendary'],
      isMythical: json['is_mythical'],
      hatchCounter: json['hatch_counter'],
      hasGenderDifferences: json['has_gender_differences'],
      formsSwitchable: json['forms_switchable'],
      growthRate: growthRate,
      pokedexNumbers: pokedexNumbers,
      eggGroups: eggGroups,
      color: color,
      shape: shape,
      evolvesFromSpecies: evolvesFromSpecies,
      evolutionChain: evolutionChain,
      habitat: habitat,
      generation: generation,
      names: names,
      palParkEncounters: palParkEncounters,
      formDescriptions: formDescriptions,
      genera: genera,
      varieties: varieties,
      flavorTextEntries: flavorTextEntries,
    );
  }
}

class PokemonSpeciesFlavorText {
  /// The localized flavor text for an API resource in a specific language.
  final String flavorText;

  /// The language this name is in.
  final NamedApiResource language;

  /// The game version this flavor text is extracted from.
  final NamedApiResource version;

  PokemonSpeciesFlavorText({
    required this.flavorText,
    required this.language,
    required this.version,
  });

  factory PokemonSpeciesFlavorText.fromJson(Map<String, dynamic> json) {
    final language = NamedApiResource.fromJson(json['language']);
    final version = NamedApiResource.fromJson(json['version']);
    return PokemonSpeciesFlavorText(
      flavorText: json['flavor_text'],
      language: language,
      version: version,
    );
  }
}

class Genus {
  /// The localized genus for the referenced Pokémon species.
  final String genus;

  /// The language this genus is in.
  final NamedApiResource language;

  Genus({
    required this.genus,
    required this.language,
  });

  factory Genus.fromJson(Map<String, dynamic> json) {
    final language = NamedApiResource.fromJson(json['language']);
    return Genus(
      genus: json['genus'],
      language: language,
    );
  }
}

class PokemonSpeciesDexEntry {
  /// The index number within the Pokédex.
  final int entryNumber;

  /// The Pokédex the referenced Pokémon species can be found in.
  final NamedApiResource pokedex;

  PokemonSpeciesDexEntry({
    required this.entryNumber,
    required this.pokedex,
  });

  factory PokemonSpeciesDexEntry.fromJson(Map<String, dynamic> json) {
    final pokedex = NamedApiResource.fromJson(json['pokedex']);
    return PokemonSpeciesDexEntry(
      entryNumber: json['entry_number'],
      pokedex: pokedex,
    );
  }
}

class PalParkEncounterArea {
  /// The base score given to the player when the referenced Pokémon is caught during a pal park run.
  final int baseScore;

  /// The base rate for encountering the referenced Pokémon in this pal park area.
  final int rate;

  /// The pal park area where this encounter happens.
  final NamedApiResource area;

  PalParkEncounterArea({
    required this.baseScore,
    required this.rate,
    required this.area,
  });

  factory PalParkEncounterArea.fromJson(Map<String, dynamic> json) {
    final area = NamedApiResource.fromJson(json['area']);
    return PalParkEncounterArea(
      baseScore: json['base_score'],
      rate: json['rate'],
      area: area,
    );
  }
}

class PokemonSpeciesVariety {
  /// Whether this variety is the default variety.
  final bool isDefault;

  /// The Pokémon variety.
  final NamedApiResource pokemon;

  PokemonSpeciesVariety({
    required this.isDefault,
    required this.pokemon,
  });

  factory PokemonSpeciesVariety.fromJson(Map<String, dynamic> json) {
    final pokemon = NamedApiResource.fromJson(json['pokemon']);
    return PokemonSpeciesVariety(
      isDefault: json['is_default'],
      pokemon: pokemon,
    );
  }
}

class Stat {
  /// The identifier for this resource.
  final int id;

  /// The name for this resource.
  final String name;

  /// ID the games use for this stat.
  final int gameIndex;

  /// Whether this stat only exists within a battle.
  final bool isBattleOnly;

  /// A detail of moves which affect this stat positively or negatively.
  final MoveStatAffectSets affectingMoves;

  /// A detail of natures which affect this stat positively or negatively.
  final NatureStatAffectSets affectingNatures;

  /// A list of characteristics that are set on a Pokémon when its highest base stat is this stat.
  final List<ApiResource> characteristics;

  /// The class of damage this stat is directly related to.
  final NamedApiResource? moveDamageClass;

  /// The name of this resource listed in different languages.
  final List<Name> names;

  Stat({
    required this.id,
    required this.name,
    required this.gameIndex,
    required this.isBattleOnly,
    required this.affectingMoves,
    required this.affectingNatures,
    required this.characteristics,
    required this.moveDamageClass,
    required this.names,
  });

  factory Stat.fromJson(Map<String, dynamic> json) {
    final affectingMoves = MoveStatAffectSets.fromJson(json['affecting_moves']);
    final affectingNatures =
        NatureStatAffectSets.fromJson(json['affecting_natures']);
    final characteristics = (json['characteristics'] as List<dynamic>)
        .map((e) => ApiResource.fromJson(e))
        .toList();
    final moveDamageClass = json['move_damage_class'] != null
        ? NamedApiResource.fromJson(json['move_damage_class'])
        : null;
    final names =
        (json['names'] as List<dynamic>).map((e) => Name.fromJson(e)).toList();
    return Stat(
      id: json['id'],
      name: json['name'],
      gameIndex: json['game_index'],
      isBattleOnly: json['is_battle_only'],
      affectingMoves: affectingMoves,
      affectingNatures: affectingNatures,
      characteristics: characteristics,
      moveDamageClass: moveDamageClass,
      names: names,
    );
  }
}

class MoveStatAffectSets {
  /// A list of moves and how they change the referenced stat.
  final List<MoveStatAffect> increase;

  /// A list of moves and how they change the referenced stat.
  final List<MoveStatAffect> decrease;

  MoveStatAffectSets({
    required this.increase,
    required this.decrease,
  });

  factory MoveStatAffectSets.fromJson(Map<String, dynamic> json) {
    final increase = (json['increase'] as List<dynamic>)
        .map((e) => MoveStatAffect.fromJson(e))
        .toList();
    final decrease = (json['decrease'] as List<dynamic>)
        .map((e) => MoveStatAffect.fromJson(e))
        .toList();
    return MoveStatAffectSets(
      increase: increase,
      decrease: decrease,
    );
  }
}

class MoveStatAffect {
  /// The maximum amount of change to the referenced stat.
  final int change;

  /// The move causing the change.
  final NamedApiResource move;

  MoveStatAffect({
    required this.change,
    required this.move,
  });

  factory MoveStatAffect.fromJson(Map<String, dynamic> json) {
    final move = NamedApiResource.fromJson(json['move']);
    return MoveStatAffect(
      change: json['change'],
      move: move,
    );
  }
}

class NatureStatAffectSets {
  /// A list of natures and how they change the referenced stat.
  final List<NamedApiResource> increase;

  /// A list of nature sand how they change the referenced stat.
  final List<NamedApiResource> decrease;

  NatureStatAffectSets({
    required this.increase,
    required this.decrease,
  });

  factory NatureStatAffectSets.fromJson(Map<String, dynamic> json) {
    final increase = (json['increase'] as List<dynamic>)
        .map((e) => NamedApiResource.fromJson(e))
        .toList();
    final decrease = (json['decrease'] as List<dynamic>)
        .map((e) => NamedApiResource.fromJson(e))
        .toList();
    return NatureStatAffectSets(
      increase: increase,
      decrease: decrease,
    );
  }
}

class Type {
  /// The identifier for this resource.
  final int id;

  /// The name for this resource.
  final String name;

  /// A detail of how effective this type is toward others and vice versa.
  final TypeRelations damageRelations;

  /// A list of details of how effective this type was toward others and vice versa in previous generations
  final List<TypeRelationsPast> pastDamageRelations;

  /// A list of game indices relevent to this item by generation.
  final List<GenerationGameIndex> gameIndices;

  /// The generation this type was introduced in.
  final NamedApiResource generation;

  /// The class of damage inflicted by this type.
  final NamedApiResource? moveDamageClass;

  /// The name of this resource listed in different languages.
  final List<Name> names;

  /// A list of details of Pokémon that have this type.
  final List<TypePokemon> pokemon;

  /// A list of moves that have this type.
  final List<NamedApiResource> moves;

  Type({
    required this.id,
    required this.name,
    required this.damageRelations,
    required this.pastDamageRelations,
    required this.gameIndices,
    required this.generation,
    required this.moveDamageClass,
    required this.names,
    required this.pokemon,
    required this.moves,
  });

  factory Type.fromJson(Map<String, dynamic> json) {
    final damageRelations = TypeRelations.fromJson(json['damage_relations']);
    final pastDamageRelations = (json["past_damage_relations"] as List)
        .map((e) => TypeRelationsPast.fromJson(e))
        .toList();
    final gameIndices = (json['game_indices'] as List<dynamic>)
        .map((e) => GenerationGameIndex.fromJson(e))
        .toList();
    final generation = NamedApiResource.fromJson(json['generation']);
    final moveDamageClass = json['move_damage_class'] != null
        ? NamedApiResource.fromJson(json['move_damage_class'])
        : null;
    final names =
        (json['names'] as List<dynamic>).map((e) => Name.fromJson(e)).toList();
    final pokemon = (json['pokemon'] as List<dynamic>)
        .map((e) => TypePokemon.fromJson(e))
        .toList();
    final moves = (json['moves'] as List<dynamic>)
        .map((e) => NamedApiResource.fromJson(e))
        .toList();
    return Type(
      id: json['id'],
      name: json['name'],
      damageRelations: damageRelations,
      pastDamageRelations: pastDamageRelations,
      gameIndices: gameIndices,
      generation: generation,
      moveDamageClass: moveDamageClass,
      names: names,
      pokemon: pokemon,
      moves: moves,
    );
  }
}

class TypePokemon {
  /// The order the Pokémon's types are listed in.
  final int slot;

  /// The Pokémon that has the referenced type.
  final NamedApiResource pokemon;

  TypePokemon({
    required this.slot,
    required this.pokemon,
  });

  factory TypePokemon.fromJson(Map<String, dynamic> json) {
    final pokemon = NamedApiResource.fromJson(json['pokemon']);
    return TypePokemon(
      slot: json['slot'],
      pokemon: pokemon,
    );
  }
}

class TypeRelations {
  /// A list of types this type has no effect on.
  final List<NamedApiResource> noDamageTo;

  /// A list of types this type is not very effect against.
  final List<NamedApiResource> halfDamageTo;

  /// A list of types this type is very effect against.
  final List<NamedApiResource> doubleDamageTo;

  /// A list of types that have no effect on this type.
  final List<NamedApiResource> noDamageFrom;

  /// A list of types that are not very effective against this type.
  final List<NamedApiResource> halfDamageFrom;

  /// A list of types that are very effective against this type.
  final List<NamedApiResource> doubleDamageFrom;

  TypeRelations({
    required this.noDamageTo,
    required this.halfDamageTo,
    required this.doubleDamageTo,
    required this.noDamageFrom,
    required this.halfDamageFrom,
    required this.doubleDamageFrom,
  });

  factory TypeRelations.fromJson(Map<String, dynamic> json) {
    final noDamageTo = (json['no_damage_to'] as List<dynamic>)
        .map((e) => NamedApiResource.fromJson(e))
        .toList();
    final halfDamageTo = (json['half_damage_to'] as List<dynamic>)
        .map((e) => NamedApiResource.fromJson(e))
        .toList();
    final doubleDamageTo = (json['double_damage_to'] as List<dynamic>)
        .map((e) => NamedApiResource.fromJson(e))
        .toList();
    final noDamageFrom = (json['no_damage_from'] as List<dynamic>)
        .map((e) => NamedApiResource.fromJson(e))
        .toList();
    final halfDamageFrom = (json['half_damage_from'] as List<dynamic>)
        .map((e) => NamedApiResource.fromJson(e))
        .toList();
    final doubleDamageFrom = (json['double_damage_from'] as List<dynamic>)
        .map((e) => NamedApiResource.fromJson(e))
        .toList();
    return TypeRelations(
      noDamageTo: noDamageTo,
      halfDamageTo: halfDamageTo,
      doubleDamageTo: doubleDamageTo,
      noDamageFrom: noDamageFrom,
      halfDamageFrom: halfDamageFrom,
      doubleDamageFrom: doubleDamageFrom,
    );
  }
}

class TypeRelationsPast {
  /// The last generation in which the referenced type had the listed damage relations
  final NamedApiResource generation;

  /// The damage relations the referenced type had up to and including the listed generation
  final TypeRelations damageRelations;

  TypeRelationsPast({
    required this.generation,
    required this.damageRelations,
  });

  factory TypeRelationsPast.fromJson(Map<String, dynamic> json) {
    final generation = NamedApiResource.fromJson(json["generation"]);
    final damageRelations = TypeRelations.fromJson(json["damage_relations"]);
    return TypeRelationsPast(
        generation: generation, damageRelations: damageRelations);
  }
}
