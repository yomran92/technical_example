import '../../../../core/feature/domain/entities/entity.dart';
import '../../data/remote/models/responses/get_pokemons_response.dart';

class GetPokemonsEntity extends Entity {
  GetPokemonsEntity({
    required this.count,
    required this.next,
    required this.results,
    required this.previous,
  });

  int? count;
  String? next;
  String? previous;
  List<PokemonModel>? results;

  @override
  List<Object?> get props => [results, count, next, previous];
}
