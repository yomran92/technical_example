import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../injection_container.dart';
import '../../../data/remote/models/params/get_pokemons_params.dart';
import '../../../data/repositories/pokemons_repository.dart';
import '../../../domain/entities/get_pokemons_entity.dart';
import '../../../domain/use_cases/get_pokemon_use_case.dart';

part 'pokemon_event.dart';
part 'pokemon_state.dart';

class PokemonBloc extends Bloc<PokemonEvent, PokemonState> {
  PokemonBloc() : super(PokemonInitial()) {
    on<GetPokemonsEvent>(_getPokemonCallback);
  }

  Future<FutureOr<void>> _getPokemonCallback(
      GetPokemonsEvent event, Emitter<PokemonState> emit) async {
    emit(GetPokemonsLoading());
    try {
      final res = await GetPokemonsUseCase(sl<PokemonsRepository>()).call(
          GetPokemonsParams(body: GetPokemonsParamsBody(offset: event.offset)));

      emit(
        res.fold(
          (l) => GetPokemonsError(l.errorMessage),
          (r) => GetPokemonsLoaded(getPokemonsEntity: r),
        ),
      );
    } catch (e) {
      print(e.toString());
    }
  }
}
