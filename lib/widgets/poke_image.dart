import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:pokedox/consts/helper.dart';
import 'package:pokedox/model/pokemonMOdel.dart';
class PokeImage extends StatelessWidget {
  final PokeModel pokeModel;
  const PokeImage({required this.pokeModel});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
     
      Align( alignment: Alignment.centerRight,
        child: Image.asset('images/pokeball.jpg', width: Helper.calculaterPokeImageSize(),
        height: Helper.calculaterPokeImageSize(), fit: BoxFit.fitHeight,),
      ),
      Align(
        alignment: Alignment.centerRight,
        child: Hero(
          tag: pokeModel.id! ,
          child: CachedNetworkImage(imageUrl: pokeModel.img ?? '',fit: BoxFit.fitHeight, placeholder: (context, url) {
            return CircularProgressIndicator(color: Helper.getColorFromType(pokeModel.type![0]),); 
          },
          errorWidget: (context, url, error) {
            return Icon(Icons.ac_unit);
          },),
        ))
    ],);
  }
}