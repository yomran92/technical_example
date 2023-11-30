

import '../../../../../../core/feature/data/models/responses/response_model.dart';
import '../../../../domain/entities/get_pokemons_entity.dart';


class GetPokemonsModel extends ResponseModel {
  int? count;
  String? next;
  String? previous;
  List<PokemonModel>? results;

  GetPokemonsModel({this.count, this.next, this.previous, this.results});

  GetPokemonsModel.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    if (json['results'] != null) {
      results = <PokemonModel>[];
      json['results'].forEach((v) {
        results!.add(new PokemonModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this.count;
    data['next'] = this.next;
    data['previous'] = this.previous;
    if (this.results != null) {
      data['results'] = this.results!.map((v) => v.toJson()).toList();
    }
    return data;
  }
  @override
  GetPokemonsModel fromJson(Map<String, dynamic> json) =>
      GetPokemonsModel.fromJson(json);

  @override
  GetPokemonsEntity toEntity() => GetPokemonsEntity(
    count: count,next: next,results: results,previous: previous
    // specialties: [], cities: [],
  );
}

class PokemonModel {
  String? name;
  String? url;

  PokemonModel({this.name, this.url});

  PokemonModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    if(json['url']!=null) {
      List<String> lsitData = json['url'].toString().split('/');

      url =  lsitData[lsitData.length-2];
    }
    else{
      url="";
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['url'] = this.url;
    return data;
  }
}
