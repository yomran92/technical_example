part of 'pokemon_bloc.dart';

abstract class PokemonEvent extends Equatable {
  const PokemonEvent();
}

class GetPokemonsEvent extends PokemonEvent {
  const GetPokemonsEvent({required this.offset});

  final int offset;

  @override
  List<Object?> get props => [];
}
