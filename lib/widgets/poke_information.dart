import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedox/consts/consts.dart';
import 'package:pokedox/consts/helper.dart';

import '../model/pokemonMOdel.dart';

class PokeInformation extends StatelessWidget {
   final PokeModel pokemon;
  const PokeInformation({required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Container(decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(10.w)),
      color: Colors.white
    ),
     child: Padding(
       padding: Helper.getPadding(),
       child: Column(
        
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
           _rowMethod('Name', pokemon.name.toString()),
           _rowMethod('Height', pokemon.height.toString()),
           _rowMethod('Weight', pokemon.weight.toString()),
           _rowMethod('Spawn Time', pokemon.spawnTime.toString()),
           _rowMethod('Weakness', pokemon.weaknesses.toString()),
           _rowMethod('Pre Evolution', pokemon.prevEvolution.toString()),
           _rowMethod('Next Evolation', pokemon.nextEvolution.toString()),
     
       ],),
     ),
    );
  }
  _rowMethod(String label, dynamic value){
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
          Text(label, style: Sabitler.getPokeInfoLabelStyle(), ),
          if(value is List && value.isNotEmpty)
            Text(value.join(), style: Sabitler.getPokeInfoStyle(),)
          else if(value == null)
            Text('Bu bilgi bulunamadı')
          else
            Text(value.toString(), style: Sabitler.getPokeInfoStyle(),)
         ],
        );
  }
}