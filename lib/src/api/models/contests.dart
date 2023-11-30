import 'package:pikadart/src/api/models/common.dart';
import 'package:pikadart/src/api/models/resources.dart';

class ContestType {
  /// The identifier for this resource.
  final int id;

  /// The name for this resource.
  final String name;

  /// The berry flavor that correlates with this contest type.
  final NamedApiResource berryFlavor;

  /// The name of this contest type listed in different languages.
  final List<ContestName> names;

  ContestType({
    required this.id,
    required this.name,
    required this.berryFlavor,
    required this.names,
  });

  factory ContestType.fromJson(Map<String, dynamic> json) {
    final berryFlavor = NamedApiResource.fromJson(json["berry_flavor"]);
    final names =
        (json["names"] as List).map((e) => ContestName.fromJson(e)).toList();
    return ContestType(
        id: json["id"],
        name: json["name"],
        berryFlavor: berryFlavor,
        names: names);
  }
}

class ContestName {
  /// The name for this contest.
  final String name;

  /// The color associated with this contest's name.
  final String color;

  /// The language that this name is in.
  final NamedApiResource language;

  ContestName({
    required this.name,
    required this.color,
    required this.language,
  });

  factory ContestName.fromJson(Map<String, dynamic> json) {
    final language = NamedApiResource.fromJson(json["language"]);
    return ContestName(
        name: json["name"], color: json["color"], language: language);
  }
}

class ContestEffect {
  /// The identifier for this resource.
  final int id;

  /// The base number of hearts the user of this move gets.
  final int appeal;

  /// The base number of hearts the user's opponent loses.
  final int jam;

  /// The result of this contest effect listed in different languages.
  final List<Effect> effectEntries;

  /// The flavor text of this contest effect listed in different languages.
  final List<FlavorText> flavorTextEntries;

  ContestEffect({
    required this.id,
    required this.appeal,
    required this.jam,
    required this.effectEntries,
    required this.flavorTextEntries,
  });

  factory ContestEffect.fromJson(Map<String, dynamic> json) {
    final effectEntries = (json["effect_entries"] as List)
        .map((e) => Effect.fromJson(e))
        .toList();
    final flavorTextEntries = (json["flavor_text_entries"] as List)
        .map((e) => FlavorText.fromJson(e))
        .toList();
    return ContestEffect(
        id: json["id"],
        appeal: json["appeal"],
        jam: json["jam"],
        effectEntries: effectEntries,
        flavorTextEntries: flavorTextEntries);
  }
}

class SuperContestEffect {
  /// The identifier for this resource.
  final int id;

  /// The level of appeal this super contest effect has.
  final int appeal;

  /// The flavor text of this super contest effect listed in different languages.
  final List<FlavorText> flavorTextEntries;

  /// A list of moves that have the effect when used in super contests.
  final List<NamedApiResource> moves;

  SuperContestEffect({
    required this.id,
    required this.appeal,
    required this.flavorTextEntries,
    required this.moves,
  });

  factory SuperContestEffect.fromJson(Map<String, dynamic> json) {
    final flavorTextEntries =
        (json["appeal"] as List).map((e) => FlavorText.fromJson(e)).toList();
    final moves = (json["moves"] as List)
        .map((e) => NamedApiResource.fromJson(e))
        .toList();
    return SuperContestEffect(
        id: json["id"],
        appeal: json["appeal"],
        flavorTextEntries: flavorTextEntries,
        moves: moves);
  }
}
