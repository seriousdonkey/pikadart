import 'package:pikadart/src/api/models/common.dart';
import 'package:pikadart/src/api/models/resources.dart';

class Berry {
  /// The identifier for this resource.
  final int id;

  /// The name for this resource.
  final String name;

  /// Time it takes the tree to grow one stage, in hours. Berry trees go through four of these growth stages before they can be picked.
  final int growthTime;

  /// The maximum number of these berries that can grow on one tree in Generation IV.
  final int maxHarvest;

  /// The power of the move "Natural Gift" when used with this Berry.
  final int naturalGiftPower;

  /// The size of this Berry, in millimeters.
  final int size;

  /// The smoothness of this Berry, used in making Pokéblocks or Poffins.
  final int smoothness;

  /// The speed at which this Berry dries out the soil as it grows. A higher rate means the soil dries more quickly.
  final int soilDryness;

  /// The firmness of this berry, used in making Pokéblocks or Poffins.
  final NamedApiResource firmness;

  /// A list of references to each flavor a berry can have and the potency of each of those flavors in regard to this berry.
  final List<BerryFlavorMap> flavors;

  /// Berries are actually items. This is a reference to the item specific data for this berry.
  final NamedApiResource item;

  /// The type inherited by "Natural Gift" when used with this Berry.
  final NamedApiResource naturalGiftType;

  Berry({
    required this.id,
    required this.name,
    required this.growthTime,
    required this.maxHarvest,
    required this.naturalGiftPower,
    required this.size,
    required this.smoothness,
    required this.soilDryness,
    required this.firmness,
    required this.flavors,
    required this.item,
    required this.naturalGiftType,
  });

  factory Berry.fromJson(Map<String, dynamic> json) {
    final firmness = NamedApiResource.fromJson(json["firmness"]);
    final flavors = (json["flavors"] as List)
        .map((e) => BerryFlavorMap.fromJson(e))
        .toList();
    final item = NamedApiResource.fromJson(json["item"]);
    final naturalGiftType =
        NamedApiResource.fromJson(json["natural_gift_type"]);
    return Berry(
        id: json["id"],
        name: json["name"],
        growthTime: json["growth_time"],
        maxHarvest: json["max_harvest"],
        naturalGiftPower: json["natural_gift_power"],
        size: json["size"],
        smoothness: json["smoothness"],
        soilDryness: json["soil_dryness"],
        firmness: firmness,
        flavors: flavors,
        item: item,
        naturalGiftType: naturalGiftType);
  }
}

class BerryFlavorMap {
  /// How powerful the referenced flavor is for this berry.
  final int potency;

  /// The referenced berry flavor.
  final NamedApiResource flavor;

  BerryFlavorMap({
    required this.potency,
    required this.flavor,
  });

  factory BerryFlavorMap.fromJson(Map<String, dynamic> json) {
    final flavor = NamedApiResource.fromJson(json["flavor"]);
    return BerryFlavorMap(potency: json["potency"], flavor: flavor);
  }
}

class BerryFirmness {
  /// The identifier for this resource.
  final int id;

  /// The name for this resource.
  final String name;

  /// A list of the berries with this firmness.
  final List<NamedApiResource> berries;

  /// The name of this resource listed in different languages.
  final List<Name> names;

  BerryFirmness({
    required this.id,
    required this.name,
    required this.berries,
    required this.names,
  });

  factory BerryFirmness.fromJson(Map<String, dynamic> json) {
    final berries = (json["berries"] as List)
        .map((e) => NamedApiResource.fromJson(e))
        .toList();
    final names = (json["names"] as List).map((e) => Name.fromJson(e)).toList();
    return BerryFirmness(
        id: json["id"], name: json["name"], berries: berries, names: names);
  }
}

class BerryFlavor {
  /// The identifier for this resource.
  final int id;

  /// The name for this resource.
  final String name;

  /// A list of the berries with this flavor.
  final List<FlavorBerryMap> berries;

  /// The contest type that correlates with this berry flavor.
  final NamedApiResource contestType;

  /// The name of this resource listed in different languages.
  final List<Name> names;

  BerryFlavor({
    required this.id,
    required this.name,
    required this.berries,
    required this.contestType,
    required this.names,
  });

  factory BerryFlavor.fromJson(Map<String, dynamic> json) {
    final berries = (json["berries"] as List)
        .map((e) => FlavorBerryMap.fromJson(e))
        .toList();
    final contestType = NamedApiResource.fromJson(json["contest_type"]);
    final names = (json["names"] as List).map((e) => Name.fromJson(e)).toList();

    return BerryFlavor(
        id: json["id"],
        name: json["name"],
        berries: berries,
        contestType: contestType,
        names: names);
  }
}

class FlavorBerryMap {
  /// How powerful the referenced flavor is for this berry.
  final int potency;

  /// The berry with the referenced flavor.
  final NamedApiResource berry;

  FlavorBerryMap({
    required this.potency,
    required this.berry,
  });

  factory FlavorBerryMap.fromJson(Map<String, dynamic> json) {
    final berry = NamedApiResource.fromJson(json["berry"]);
    return FlavorBerryMap(potency: json["potency"], berry: berry);
  }
}
