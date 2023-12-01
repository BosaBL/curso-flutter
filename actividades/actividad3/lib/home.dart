import 'package:actividad3/pokedexcards.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Super Pokedex"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CarouselSlider(
            options: CarouselOptions(
              height: 400,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
              scrollDirection: Axis.horizontal,
            ),
            items: <Widget>[
              const PokedexCard(
                tipo: TPokemon.plant,
                pokedex: 1,
                name: "Bulbasaur",
              ),
              const PokedexCard(
                tipo: TPokemon.plant,
                pokedex: 2,
                name: "Ivysaur",
              ),
              const PokedexCard(
                tipo: TPokemon.plant,
                pokedex: 3,
                name: "Venusaur",
              ),
              const PokedexCard(
                tipo: TPokemon.fire,
                pokedex: 4,
                name: "Charmander",
              ),
            ].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(left: 0, right: 0),
                    child: i,
                  );
                },
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
