# PikaDart

## Overview

This Dart package serves as a wrapper for the [PokeApi](https://pokeapi.co/), providing a convenient and efficient way to
interact with the Pokémon API in Dart projects. The package is designed to simplify the process of
making API requests and includes an automatic caching mechanism to enhance performance.

Inspired by [PokeKotlin](https://github.com/PokeAPI/pokekotlin).

## Features

- **PokeApi Integration:** Seamlessly interact with the PokeApi using Dart.
- **Automatic Caching:** Improve response times by automatically caching API responses.
- **Easy to Use:** Simple and intuitive methods make it easy to retrieve Pokémon data.

## Installation

To use this package in your Dart project, add the following to your `pubspec.yaml` file:

```yaml
dependencies:
  pikadart: ^1.1.0
```

## Example

### Get a Pokémon by it's name

```dart
  // Using general client
  final pokeapiClient = PokeapiClient();
  final pikachu = pokeapiClient.pokemon.getPokemonByName('pikachu');

  // Or using a specified client
  final pokemonClient = PokemonClient();
  final pikachu = pokemonClient.getPokemonByName('pikachu');
```

### Get a list of berries with pagination

```dart
  // Using general client
  final pokeapiClient = PokeapiClient();
  final berries = pokeapiClient.berries.getBerryList(0, 20);

  // Or using a specified client
  final berriesClient = BerriesClient();
  final berries = berriesClient.getBerryList(0, 20);
```

## Cache Configuration

### Using MemoryCacheStrategy

By default, PikaDart uses an in-memory cache. You can configure the time to live of the cache entry.

```dart
final cacheStrategy = MemoryCacheStrategy(
  ttl: Duration(days: 1)
);

final pokeapiClient = PokeapiClient(cacheStrategy: cacheStrategy);
```

### Custom Cache Implementation

You can implement your own caching strategy by implementing the `CacheStrategy` interface:

```dart
class CustomCacheStrategy implements CacheStrategy {
  @override
  Future<T?> get<T>(String key) async {
    // Your custom cache retrieval logic
  }

  @override
  Future<void> set<T>(String key, T value) async {
    // Your custom cache storage logic
  }

  @override
  Future<void> remove(String key) async {
    // Your custom cache remove logic
  }

  @override
  Future<void> clear() async {
    // Your custom cache clearing logic
  }
}

// Using the custom cache strategy
final customCacheStrategy = CustomCacheStrategy();
final pokeapiClient = PokeapiClient(cacheStrategy: customCacheStrategy);
```

## Next Steps

- **Add tests**
