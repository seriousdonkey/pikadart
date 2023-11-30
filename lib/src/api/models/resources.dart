class NamedApiResource {
  /// The name of the referenced resource.
  final String name;

  /// The URL of the referenced resource.
  final String url;

  /// The category.
  String get category {
    return _urlToCat();
  }

  /// The id.
  int get id {
    return _urlToId();
  }

  NamedApiResource({required this.name, required this.url});

  factory NamedApiResource.fromJson(Map<String, dynamic> json) {
    final name = json["name"];
    final url = json["url"];
    return NamedApiResource(name: name, url: url);
  }

  int _urlToId() {
    final regex = RegExp(r"/-?[0-9]+/$");
    final match = regex.firstMatch(url)!.group(0)!;
    return int.parse(match.replaceAll(RegExp(r'[^0-9-]'), ''));
  }

  String _urlToCat() {
    final regex = RegExp(r"/[a-z\\-]+/-?[0-9]+/$");
    final match = regex.firstMatch(url)!.group(0)!;
    return match.replaceAll(RegExp(r'[^a-z-]'), '');
  }
}

class NamedApiResourceList {
  /// The total number of resources available.
  final int count;

  /// A list of named API resources.
  final List<NamedApiResource> results;

  NamedApiResourceList({
    required this.count,
    required this.results,
  });

  factory NamedApiResourceList.fromJson(Map<String, dynamic> json) {
    final count = json["count"];

    final results = (json["results"] as List)
        .map((e) => NamedApiResource.fromJson(e))
        .toList();

    return NamedApiResourceList(count: count, results: results);
  }
}

class ApiResource {
  /// The URL of the referenced resource.
  final String url;

  /// The category.
  String get category {
    return _urlToCat();
  }

  /// This id.
  int get id {
    return _urlToId();
  }

  ApiResource({required this.url});

  factory ApiResource.fromJson(Map<String, dynamic> json) {
    final url = json["url"];
    return ApiResource(url: url);
  }

  int _urlToId() {
    final regex = RegExp(r"/-?[0-9]+/$");
    final match = regex.firstMatch(url)!.group(0)!;
    return int.parse(match.replaceAll(RegExp(r'[^0-9-]'), ''));
  }

  String _urlToCat() {
    final regex = RegExp(r"/[a-z\\-]+/-?[0-9]+/$");
    final match = regex.firstMatch(url)!.group(0)!;
    return match.replaceAll(RegExp(r'[^a-z-]'), '');
  }
}

class ApiResourceList {
  /// The total number of resources available.
  final int count;

  /// A list of API resources.
  final List<ApiResource> results;

  ApiResourceList({
    required this.count,
    required this.results,
  });

  factory ApiResourceList.fromJson(Map<String, dynamic> json) {
    final count = json["count"];

    final results =
        (json["results"] as List).map((e) => ApiResource.fromJson(e)).toList();

    return ApiResourceList(count: count, results: results);
  }
}
