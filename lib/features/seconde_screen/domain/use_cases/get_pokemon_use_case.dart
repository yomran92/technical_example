import 'package:dartz/dartz.dart';

import '../../../../core/feature/domain/entities/error_entity.dart';
import '../../../../core/feature/domain/use_cases/use_case.dart';
import '../../data/remote/models/params/get_pokemons_params.dart';
import '../../data/repositories/pokemons_repository.dart';
import '../entities/get_pokemons_entity.dart';

class GetPokemonsUseCase extends UseCase<GetPokemonsEntity, GetPokemonsParams> {
  GetPokemonsUseCase(this.repository);
  PokemonsRepository repository;

  @override
  Future<Either<ErrorEntity, GetPokemonsEntity>> call(
          GetPokemonsParams params) async
  {
    return

      repository.getPokemons(params);}
}
