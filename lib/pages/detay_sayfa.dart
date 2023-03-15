import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedox/consts/consts.dart';
import 'package:pokedox/consts/helper.dart';
import 'package:pokedox/model/pokemonMOdel.dart';
import 'package:pokedox/widgets/pokelist_item.dart';

import '../widgets/poke_information.dart';
import '../widgets/poke_name_type.dart';

class DetaySayfa extends StatelessWidget {
  final PokeModel pokemon;
  const DetaySayfa({required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return ScreenUtil().orientation == Orientation.portrait ? methodDikeyEkran(context) : methodYatayEkran(context);
  }

  Scaffold methodDikeyEkran(BuildContext context) {
    return Scaffold(
    backgroundColor: Helper.getColorFromType(pokemon.type![0]),
    body: SafeArea(child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: Helper.iconGetPadding(),
          child: IconButton(onPressed: (){
                    Navigator.of(context).pop(); 
        
          }, icon:Icon(Icons.arrow_back_ios), iconSize: 24.w,),
        ),
        PokeNameTypeWidget(pokemon: pokemon),
        SizedBox(height: 0.05.sh,),
        Expanded(child: Stack(children: [
          Positioned(child: Image.asset('images/pokeball.jpg',height: 0.15.sh, fit: BoxFit.fitHeight,),right: 0,top: 0,),
           Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            top: 0.10.sh,
            child: PokeInformation(pokemon: pokemon)),

            Align(
              alignment: Alignment.topCenter,
              child: Hero( tag: pokemon.id!,child: CachedNetworkImage(imageUrl: pokemon.img?? '',height: 0.20.sh,)),
            )
        ],))
        

      ],
    )),
  );
  }
  
    Scaffold methodYatayEkran(BuildContext context) {
    return Scaffold(
    backgroundColor: Helper.getColorFromType(pokemon.type![0]),
    body: SafeArea(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
             Padding(
            padding: Helper.iconGetPadding(),
            child: IconButton(onPressed: (){
                      Navigator.of(context).pop(); 
          
            }, icon:Icon(Icons.arrow_back_ios), iconSize: 24.w,),
          ),
          Expanded(child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PokeNameTypeWidget(pokemon: pokemon),
                    Hero( tag: pokemon.id!,child: CachedNetworkImage(imageUrl: pokemon.img?? '',height: 0.20.sw,)),
                  ],
                ),
              ),
              Expanded(flex: 4, child: Padding(
                padding: Helper.getPadding(),
                child: PokeInformation(pokemon: pokemon),
              )),
            ],
          ))
      ],),
    ));
  
    }
}