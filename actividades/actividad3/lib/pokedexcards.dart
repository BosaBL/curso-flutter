import 'package:flutter/material.dart';

enum TPokemon {
  electric,
  plant,
  fire,
}

abstract class PokemonTypes {}

class PokedexCard extends StatelessWidget {
  const PokedexCard({
    super.key,
    required this.tipo,
    required this.pokedex,
    this.name = "defaultName",
  });

  final TPokemon tipo;
  final String name;
  final int pokedex;

  @override
  Widget build(BuildContext context) {
    final Text title = getPokemonTitle()["title"];
    final Color tileColor = getPokemonTitle()["tileColor"];

    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image(image: AssetImage('assets/images/$pokedex.png')),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  name,
                  style: const TextStyle(
                      fontWeight: FontWeight.w800, fontSize: 24),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    title: title,
                    tileColor: tileColor,
                    textColor: Colors.white,
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  "Pokedex: $pokedex",
                  style: const TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  dynamic getPokemonTitle() {
    switch (tipo) {
      case TPokemon.electric:
        return {
          "title": const Text('Eléctrico'),
          "tileColor": Colors.yellow,
        };
      case TPokemon.plant:
        return {
          "title": const Text('Planta'),
          "tileColor": Colors.green,
        };
      case TPokemon.fire:
        return {
          "title": const Text('Fuego'),
          "tileColor": Colors.orange,
        };
      default:
        return const ListTile(
          title: Text('Not Available'),
          tileColor: Colors.black,
          textColor: Colors.white,
        );
    }
  }
}
