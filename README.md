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
  pikadart: ^1.0.0
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

## Next Steps

- **Add tests**
- **More flexible caching**
- **More documentation**
