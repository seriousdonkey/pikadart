import 'package:pikadart/src/api/models/common.dart';
import 'package:pikadart/src/api/models/resources.dart';

class EncounterMethod {
  /// The identifier for this resource.
  final int id;

  /// The name for this resource.
  final String name;

  /// A good value for sorting.
  final int order;

  /// The name of this resource listed in different languages.
  final List<Name> names;

  EncounterMethod({
    required this.id,
    required this.name,
    required this.order,
    required this.names,
  });

  factory EncounterMethod.fromJson(Map<String, dynamic> json) {
    final names = (json["names"] as List).map((e) => Name.fromJson(e)).toList();
    return EncounterMethod(
      id: json["id"],
      name: json["name"],
      order: json["order"],
      names: names,
    );
  }
}

class EncounterCondition {
  /// The identifier for this resource.
  final int id;

  /// The name for this resource.
  final String name;

  /// The name of this resource listed in different languages.
  final List<Name> names;

  /// A list of possible values for this encounter condition.
  final List<NamedApiResource> values;

  EncounterCondition({
    required this.id,
    required this.name,
    required this.names,
    required this.values,
  });

  factory EncounterCondition.fromJson(Map<String, dynamic> json) {
    final names = (json["names"] as List).map((e) => Name.fromJson(e)).toList();
    final values = (json["values"] as List)
        .map((e) => NamedApiResource.fromJson(e))
        .toList();
    return EncounterCondition(
      id: json["id"],
      name: json["name"],
      names: names,
      values: values,
    );
  }
}

class EncounterConditionValue {
  /// The identifier for this resource.
  final int id;

  /// The name for this resource.
  final String name;

  /// The condition this encounter condition value pertains to.
  final NamedApiResource condition;

  /// The name of this resource listed in different languages.
  final List<Name> names;

  EncounterConditionValue({
    required this.id,
    required this.name,
    required this.condition,
    required this.names,
  });

  factory EncounterConditionValue.fromJson(Map<String, dynamic> json) {
    final condition = NamedApiResource.fromJson(json["condition"]);
    final names = (json["names"] as List).map((e) => Name.fromJson(e)).toList();
    return EncounterConditionValue(
      id: json["id"],
      name: json["name"],
      condition: condition,
      names: names,
    );
  }
}
