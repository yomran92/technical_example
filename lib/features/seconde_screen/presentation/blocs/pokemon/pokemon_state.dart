part of 'pokemon_bloc.dart';

abstract class PokemonState extends Equatable {
  const PokemonState({this.message});
  final String? message;
}

class PokemonInitial extends PokemonState {
  @override
  List<Object> get props => [];
}

 abstract class GetPokemonsState extends PokemonState {
  const GetPokemonsState({String? message}) : super(message: message);
}

class GetPokemonsLoading extends GetPokemonsState {
  @override
  List<Object?> get props => [];
}

class GetPokemonsLoaded extends GetPokemonsState {
  const GetPokemonsLoaded({this.getPokemonsEntity});
  final GetPokemonsEntity? getPokemonsEntity;

  @override
  List<Object> get props => [getPokemonsEntity!];
}

class GetPokemonsError extends GetPokemonsState {
  const GetPokemonsError(String message) : super(message: message);

  @override
  List<Object?> get props => [message];
}
