import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedox/consts/helper.dart';
import 'package:pokedox/model/pokemonMOdel.dart';
import 'package:pokedox/pages/detay_sayfa.dart';
import 'package:pokedox/widgets/poke_image.dart';

import '../consts/consts.dart';

class PokeList extends StatelessWidget {
  final PokeModel pokemon;
   PokeList({required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.w)),
        elevation: 3,
        shadowColor: Colors.white60,
         color: Helper.getColorFromType(pokemon.type![0]),
        child: Padding(
          padding:Helper.getPadding(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
              pokemon.name.toString() ?? 'Daha sonra deneyin',style: Sabitler.pokemonTextStyle(),),
              Chip(label: Text( pokemon.type![0].toString(), style: Sabitler.pokemonTextStyle(),)),
              Expanded(child: PokeImage(pokeModel:pokemon))
            ],
          ),
        ),
        
      ),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetaySayfa(pokemon: pokemon),)); 
      },
    );
  }
}