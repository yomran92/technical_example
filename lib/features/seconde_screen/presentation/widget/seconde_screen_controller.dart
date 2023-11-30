
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../../core/feature/presentation/base_controller.dart';
import '../../data/remote/models/responses/get_pokemons_response.dart';
import '../../domain/entities/get_pokemons_entity.dart';
import '../blocs/pokemon/pokemon_bloc.dart';

class SecondeScreenController extends Controller {
  SecondeScreenController(
  {required this.bloc}
      );



  GetPokemonsState? state;

  final PokemonBloc bloc;
  GetPokemonsEntity? getPokemonsEntity;
  List<PokemonModel>? results=[];
  // final IndicatorController indicatorController = IndicatorController();

  @override
  init() {
    super.init();
    getData();
  }
getData(){
  bloc.add(  GetPokemonsEvent(offset: 0));
  results!.clear();

}
getRefresh(){
results!.clear();

  bloc.add(const GetPokemonsEvent(offset: 0));

}
  getNextPage(int index){
    bloc.add(  GetPokemonsEvent(offset:20*index ));

  }
  @override
  dispose() {
    // bloc.close();
    super.dispose();
  }

  bool enablePullUp=false;


  final  refreshController = RefreshController();

  void listener(BuildContext context, PokemonState  state) {
    if (state is GetPokemonsLoaded) {
      getPokemonsEntity = state.getPokemonsEntity;
      if (getPokemonsEntity!.next == null) {
        enablePullUp = false;
      } else {
        enablePullUp = true;
      }
      //
      if (getPokemonsEntity!.results != null) {
        results!.addAll(
            getPokemonsEntity!.results ?? []);
      }
      if (state is GetPokemonsError) {
        results!.clear();
      }
      refreshController.loadComplete();
      refreshController.refreshCompleted();
    }
  }






 }
