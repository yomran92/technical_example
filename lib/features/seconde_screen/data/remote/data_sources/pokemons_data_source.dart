import '../../../../../core/feature/data/data_sources/remote_data_source.dart';
import '../models/params/get_pokemons_params.dart';
import '../models/responses/get_pokemons_response.dart';

abstract class IPokemonsRemoteDataSource extends RemoteDataSource {
  Future<GetPokemonsModel> getPokemons(GetPokemonsParams model);

}

class PokemonsRemoteDataSource extends IPokemonsRemoteDataSource {
  @override
  Future<GetPokemonsModel> getPokemons(GetPokemonsParams model) async =>
      GetPokemonsModel.fromJson(
        await
        await get(model))

      ;



}
