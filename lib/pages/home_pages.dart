import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pokedox/widgets/app_titles.dart';
import 'package:pokedox/widgets/pokemon_list_widget.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body : Column(
      children: [
        AppTitle(),
        Expanded(child: PokemonList()),
      ],
    ));
  }
}