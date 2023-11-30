import 'package:pikadart/pikadart.dart';

void main() {
  // Use the general client
  final pokeapiClient = PokeApiClient();
  // Get pikachu data
  final pikachu = pokeapiClient.pokemon.getPokemonByName('pikachu');

  // Or use a specified client
  final berriesClient = BerriesClient();
  // Get a paginated list of berries
  final berries = berriesClient.getBerryList(0, 20);
}
