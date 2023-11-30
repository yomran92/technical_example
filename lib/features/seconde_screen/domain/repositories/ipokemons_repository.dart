import 'package:dartz/dartz.dart';

import '../../../../core/feature/domain/entities/error_entity.dart';
import '../../../../core/feature/domain/repositories/irepository.dart';
import '../../data/remote/models/params/get_pokemons_params.dart';
import '../entities/get_pokemons_entity.dart';

abstract class IPokemonsRepository extends IRepository {
  Future<Either<ErrorEntity, GetPokemonsEntity>> getPokemons(
      GetPokemonsParams model);
}
