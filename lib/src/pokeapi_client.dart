import 'package:pikadart/src/berries_client.dart';
import 'package:pikadart/src/cache/cache_strategy.dart';
import 'package:pikadart/src/contests_client.dart';
import 'package:pikadart/src/encounters_client.dart';
import 'package:pikadart/src/evolution_client.dart';
import 'package:pikadart/src/games_client.dart';
import 'package:pikadart/src/items_client.dart';
import 'package:pikadart/src/pokemon_client.dart';

/// The PokeApiClient class is a Dart class designed to interact with various
/// endpoints of the Pokémon API. It encapsulates separate clients for
/// different categories of data, such as Pokémon, Berries, Contests,
/// Encounters, Evolution, Games, and Items.
class PokeApiClient {
  final CacheStrategy? cacheStrategy;

  final PokemonClient _pokemonClient;
  final BerriesClient _berriesClient;
  final ContestsClient _contestsClient;
  final EncountersClient _encountersClient;
  final EvolutionClient _evolutionClient;
  final GamesClient _gamesClient;
  final ItemsClient _itemsClient;

  PokeApiClient({this.cacheStrategy})
      : _pokemonClient = PokemonClient(cacheStrategy: cacheStrategy),
        _berriesClient = BerriesClient(cacheStrategy: cacheStrategy),
        _contestsClient = ContestsClient(cacheStrategy: cacheStrategy),
        _encountersClient = EncountersClient(cacheStrategy: cacheStrategy),
        _evolutionClient = EvolutionClient(cacheStrategy: cacheStrategy),
        _gamesClient = GamesClient(cacheStrategy: cacheStrategy),
        _itemsClient = ItemsClient(cacheStrategy: cacheStrategy);

  /// Returns [PokemonClient].
  PokemonClient get pokemon {
    return _pokemonClient;
  }

  /// Returns [BerriesClient].
  BerriesClient get berries {
    return _berriesClient;
  }

  /// Returns [ContestsClient].
  ContestsClient get contests {
    return _contestsClient;
  }

  /// Returns [EncounterClient].
  EncountersClient get encounters {
    return _encountersClient;
  }

  /// Returns [EvolutionClient].
  EvolutionClient get evolution {
    return _evolutionClient;
  }

  /// Returns [GamesClient].
  GamesClient get games {
    return _gamesClient;
  }

  /// Returns [ItemsClient].
  ItemsClient get items {
    return _itemsClient;
  }
}
