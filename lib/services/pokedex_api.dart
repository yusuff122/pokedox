import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pokedox/model/pokemonMOdel.dart';

import 'package:dio/dio.dart';
class PokeApi{

  static const String _url= "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json";

   
   static Future<List<PokeModel>> getPokemon ()async{
    List<PokeModel> _list = [];
    
    var res=  await Dio().get(_url);
    var pokeList = jsonDecode(res.data)['pokemon'];

     if(pokeList is List){
      _list = pokeList.map((e) => PokeModel.fromJson(e)).toList();
     }

    debugPrint(_list.length.toString());

      return _list;
   }
}