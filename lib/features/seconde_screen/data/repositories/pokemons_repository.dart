import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';


import '../../../../core/exceptions/app_exceptions.dart';
import '../../../../core/feature/domain/entities/error_entity.dart';
import '../../domain/entities/get_pokemons_entity.dart';
import '../../domain/repositories/ipokemons_repository.dart';
import '../remote/data_sources/pokemons_data_source.dart';
import '../remote/models/params/get_pokemons_params.dart';
import '../remote/models/responses/get_pokemons_response.dart';

@Injectable(as: IPokemonsRepository)
class PokemonsRepository extends IPokemonsRepository {
  PokemonsRemoteDataSource remoteDataSource;

  PokemonsRepository(this.remoteDataSource);

  @override
  Future<Either<ErrorEntity, GetPokemonsEntity>> getPokemons(
      GetPokemonsParams model) async {
    try {
      final GetPokemonsModel remote = await remoteDataSource.getPokemons(model);

         return Right(remote.toEntity());

    } on NoInternetException catch (e){

        return Left(ErrorEntity.fromAppException(e));

      rethrow;
    } on AppException catch (e) {
      return Left(ErrorEntity.fromAppException(e));
    } on Exception catch (e) {
      return Left(ErrorEntity.fromException(e));
    }
  }

}
