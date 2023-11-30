import 'package:get_it/get_it.dart';
import 'package:technical_test/features/seconde_screen/data/repositories/pokemons_repository.dart';
import 'package:technical_test/features/seconde_screen/domain/use_cases/get_pokemon_use_case.dart';
import 'package:technical_test/features/seconde_screen/presentation/blocs/pokemon/pokemon_bloc.dart';

import 'core/navigation_service.dart';
import 'features/seconde_screen/data/remote/data_sources/pokemons_data_source.dart';


final sl = GetIt.instance;
bool servicesInjected = false;
void initInjection() {
  if (servicesInjected) {
    return;
  }





  //Bloc
  sl.registerLazySingleton(() => PokemonBloc());


  // //! use cases
  sl.registerLazySingleton(() => GetPokemonsUseCase(sl()));

  //! repos

  sl.registerLazySingleton(() => PokemonsRepository(sl()));

  //! data sources

  sl.registerLazySingleton(() => PokemonsRemoteDataSource());


  //!
  servicesInjected = true;
}

Future<void> resetInjection() async {
  await sl.reset(
    dispose: true,
  );
  servicesInjected = false;
  initInjection();
}
