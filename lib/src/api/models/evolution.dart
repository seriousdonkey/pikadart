import 'package:pikadart/src/api/models/common.dart';
import 'package:pikadart/src/api/models/resources.dart';

class EvolutionChain {
  /// The identifier for this resource.
  final int id;

  /// The item that a Pokémon would be holding when mating that would trigger the egg hatching a baby Pokémon rather than a basic Pokémon.
  final NamedApiResource? babyTriggerIcon;

  /// The base chain link object. Each link contains evolution details for a Pokémon in the chain. Each link references the next Pokémon in the natural evolution order.
  final ChainLink chain;

  EvolutionChain({
    required this.id,
    required this.babyTriggerIcon,
    required this.chain,
  });

  factory EvolutionChain.fromJson(Map<String, dynamic> json) {
    final babyTriggerIcon =
        NamedApiResource.fromJson(json["baby_trigger_icon"]);
    final chain = ChainLink.fromJson(json["chain_link"]);
    return EvolutionChain(
      id: json["id"],
      babyTriggerIcon: babyTriggerIcon,
      chain: chain,
    );
  }
}

class ChainLink {
  /// Whether or not this link is for a baby Pokémon. This would only ever be true on the base link.
  final bool isBaby;

  /// The Pokémon species at this point in the evolution chain.
  final NamedApiResource species;

  /// All details regarding the specific details of the referenced Pokémon species evolution.
  final List<EvolutionDetail> evolutionDetails;

  /// A List of chain objects.
  final List<ChainLink> evolvesTo;

  ChainLink({
    required this.isBaby,
    required this.species,
    required this.evolutionDetails,
    required this.evolvesTo,
  });

  factory ChainLink.fromJson(Map<String, dynamic> json) {
    final species = NamedApiResource.fromJson(json["species"]);
    final evolutionDetails = (json["evolution_details"] as List)
        .map((e) => EvolutionDetail.fromJson(e))
        .toList();
    final evolvesTo =
        (json["evolves_to"] as List).map((e) => ChainLink.fromJson(e)).toList();
    return ChainLink(
      isBaby: json["is_baby"],
      species: species,
      evolutionDetails: evolutionDetails,
      evolvesTo: evolvesTo,
    );
  }
}

class EvolutionDetail {
  /// The type of event that triggers evolution into this Pokémon species.
  final NamedApiResource trigger;

  /// The item required to cause evolution this into Pokémon species.
  final NamedApiResource? item;

  /// The id of the gender of the evolving Pokémon species must be in order to evolve into this Pokémon species.
  final int? gender;

  /// The item the evolving Pokémon species must be holding during the evolution trigger event to evolve into this Pokémon species.
  final NamedApiResource? heldItem;

  /// The move that must be known by the evolving Pokémon species during the evolution trigger event in order to evolve into this Pokémon species.
  final NamedApiResource? knownMove;

  /// The evolving Pokémon species must know a move with this type during the evolution trigger event in order to evolve into this Pokémon species.
  final NamedApiResource? knownMoveType;

  /// The location the evolution must be triggered at.
  final NamedApiResource? location;

  /// The minimum required level of the evolving Pokémon species to evolve into this Pokémon species.
  final int? minLevel;

  /// The minimum required level of happiness the evolving Pokémon species to evolve into this Pokémon species.
  final int? minHappiness;

  /// The minimum required level of beauty the evolving Pokémon species to evolve into this Pokémon species.
  final int? minBeauty;

  /// The minimum required level of affection the evolving Pokémon species to evolve into this Pokémon species.
  final int? minAffection;

  /// The Pokémon species that must be in the players party in order for the evolving Pokémon species to evolve into this Pokémon species.
  final NamedApiResource? partySpecies;

  /// The player must have a Pokémon of this type in their party during the evolution trigger event in order for the evolving Pokémon species to evolve into this Pokémon species.
  final NamedApiResource? partyType;

  /// The required relation between the Pokémon's Attack and Defense stats. 1 means Attack > Defense. 0 means Attack = Defense. -1 means Attack < Defense.
  final int? relativePhysicalStats;

  /// The required time of day. Day or night.
  final String? timeOfDay;

  /// Pokémon species for which this one must be traded.
  final NamedApiResource? tradeSpecies;

  /// Whether or not it must be raining in the overworld to cause evolution this Pokémon species.
  final bool needsOverworldRain;

  /// Whether or not the 3DS needs to be turned upside-down as this Pokémon levels up.
  final bool turnUpsideDown;

  EvolutionDetail({
    required this.trigger,
    this.item,
    this.gender,
    this.heldItem,
    this.knownMove,
    this.knownMoveType,
    this.location,
    this.minLevel,
    this.minHappiness,
    this.minBeauty,
    this.minAffection,
    this.partySpecies,
    this.partyType,
    this.relativePhysicalStats,
    this.timeOfDay,
    this.tradeSpecies,
    this.needsOverworldRain = false,
    this.turnUpsideDown = false,
  });

  factory EvolutionDetail.fromJson(Map<String, dynamic> json) {
    final trigger = NamedApiResource.fromJson(json["trigger"]);
    final item =
        json["item"] != null ? NamedApiResource.fromJson(json["item"]) : null;
    final heldItem = json["held_item"] != null
        ? NamedApiResource.fromJson(json["held_item"])
        : null;
    final knownMove = json["known_move"] != null
        ? NamedApiResource.fromJson(json["known_move"])
        : null;
    final knownMoveType = json["known_move_type"] != null
        ? NamedApiResource.fromJson(json["known_move_type"])
        : null;
    final location = json["location"] != null
        ? NamedApiResource.fromJson(json["location"])
        : null;
    final partySpecies = json["party_species"] != null
        ? NamedApiResource.fromJson(json["party_species"])
        : null;
    final partyType = json["party_type"] != null
        ? NamedApiResource.fromJson(json["party_type"])
        : null;
    final tradeSpecies = json["trade_species"] != null
        ? NamedApiResource.fromJson(json["trade_species"])
        : null;

    return EvolutionDetail(
      trigger: trigger,
      item: item,
      gender: json["gender"],
      heldItem: heldItem,
      knownMove: knownMove,
      knownMoveType: knownMoveType,
      location: location,
      minLevel: json["min_level"],
      minHappiness: json["min_happiness"],
      minBeauty: json["min_beauty"],
      minAffection: json["min_affection"],
      partySpecies: partySpecies,
      partyType: partyType,
      relativePhysicalStats: json["relative_physical_stats"],
      timeOfDay: json["time_of_day"],
      tradeSpecies: tradeSpecies,
      needsOverworldRain: json["needs_overworld_rain"],
      turnUpsideDown: json["turn_upside_down"],
    );
  }
}

class EvolutionTrigger {
  /// The identifier for this resource.
  final int id;

  /// The name for this resource.
  final String name;

  /// The name of this resource listed in different languages.
  final List<Name> names;

  /// A list of pokemon species that result from this evolution trigger.
  final List<NamedApiResource> pokemonSpecies;

  EvolutionTrigger({
    required this.id,
    required this.name,
    required this.names,
    required this.pokemonSpecies,
  });

  factory EvolutionTrigger.fromJson(Map<String, dynamic> json) {
    final names = (json["names"] as List).map((e) => Name.fromJson(e)).toList();
    final pokemonSpecies = (json["pokemon_species"] as List)
        .map((e) => NamedApiResource.fromJson(e))
        .toList();
    return EvolutionTrigger(
      id: json["id"],
      name: json["name"],
      names: names,
      pokemonSpecies: pokemonSpecies,
    );
  }
}
