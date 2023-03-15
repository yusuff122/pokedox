import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedox/widgets/pokelist_item.dart';

import '../model/pokemonMOdel.dart';
import '../services/pokedex_api.dart';

class PokemonList extends StatefulWidget {
  const PokemonList({super.key});

  @override
  State<PokemonList> createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
    late Future<List<PokeModel>>? _pokeList;
    
  @override
  void initState() {
    super.initState();
    _pokeList = PokeApi.getPokemon();
  }
  @override
  Widget build(BuildContext context) {

    return FutureBuilder<List<PokeModel>>(future : _pokeList ,builder:(context, snapshot) {

        if(snapshot.hasData ){

          List<PokeModel> _listem = snapshot.data!;
          return GridView.builder(itemCount: _listem.length-1,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: ScreenUtil().orientation == Orientation.portrait ? 2 : 3),
           itemBuilder: (context, index) {
              var o_anki = _listem[index+1];
             return PokeList(pokemon: o_anki,);
           },);

        }
        else if(snapshot.hasError){
          return const Center( child: Text('Hata oluştu'));
        }
        else{
          return const Center(child: CircularProgressIndicator(),);

        }
      }, );
  }
}
