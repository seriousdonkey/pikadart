import 'package:pikadart/pikadart.dart';

void main() async {
  // Use the general client with default memory cache strategy
  final pokeapiClient = PokeApiClient();
  // Or use a specific cache strategy
  final customPokeapiClient =
      PokeApiClient(cacheStrategy: MemoryCacheStrategy(ttl: Duration(days: 1)));

  // Get pikachu data
  final pikachu = await pokeapiClient.pokemon.getPokemonByName('pikachu');

  // Or use a specified client
  final berriesClient = BerriesClient();
  // Get a paginated list of berries
  final berries = berriesClient.getBerryList(0, 20);
}
