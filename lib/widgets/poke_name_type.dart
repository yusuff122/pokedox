import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedox/consts/consts.dart';
import 'package:pokedox/model/pokemonMOdel.dart';

class PokeNameTypeWidget extends StatelessWidget {
  final PokeModel pokemon;
  const PokeNameTypeWidget({ required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 0.05.sh),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
      //  mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
           /* crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,*/
            children: [
              Expanded(child: Text(pokemon.name.toString(),style: Sabitler.pokemonTextStyle(),)),
              Text(pokemon.num.toString(),style: Sabitler.pokemonTextStyle(),),
    
            ],
    
          ),
          
          SizedBox(height: 0.02.sh,),
          Chip(label: Text(pokemon.type?.join(' , ') ?? '', style: Sabitler.pokemonTextStyle(),))
    
        ],
      ),
    );
  }
}