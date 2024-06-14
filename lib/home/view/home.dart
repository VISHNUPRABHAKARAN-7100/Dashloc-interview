import 'package:dashloc_interview/services/check_internet/view/no_internet_screen.dart';
import 'package:dashloc_interview/util/constant_colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../services/check_internet/connectivity_services/connectivity_services.dart';
import 'widgets/pokemon_card.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final List<String> widgetList = ['A', 'B', 'C'];

  final List<Map<String, dynamic>> pokemonList = [
    {
      'id': 1,
      'name': 'Bulbasaur',
      'types': 'Grass, Poison',
      'sprite':
          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/1.png',
    },
    {
      'id': 2,
      'name': 'Ivysaur',
      'types': 'Grass, Poison',
      'sprite':
          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/2.png',
    },
    {
      'id': 3,
      'name': 'Venusaur',
      'types': 'Grass, Poison',
      'sprite':
          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/3.png',
    },
    {
      'id': 4,
      'name': 'Charmander',
      'types': 'Fire',
      'sprite':
          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/4.png',
    },
    {
      'id': 5,
      'name': 'Charmeleon',
      'types': 'Fire',
      'sprite':
          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/5.png',
    },
    {
      'id': 6,
      'name': 'Charizard',
      'types': 'Fire, Flying',
      'sprite':
          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/6.png',
    },
    {
      'id': 7,
      'name': 'Squirtle',
      'types': 'Water',
      'sprite':
          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/7.png',
    },
    {
      'id': 8,
      'name': 'Wartortle',
      'types': 'Water',
      'sprite':
          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/8.png',
    },
    {
      'id': 9,
      'name': 'Blastoise',
      'types': 'Water',
      'sprite':
          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/9.png',
    },
    {
      'id': 10,
      'name': 'Caterpie',
      'types': 'Bug',
      'sprite':
          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/10.png',
    },
    {
      'id': 11,
      'name': 'Metapod',
      'types': 'Bug',
      'sprite':
          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/11.png',
    },
    {
      'id': 12,
      'name': 'Butterfree',
      'types': 'Bug, Flying',
      'sprite':
          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/12.png',
    },
    {
      'id': 13,
      'name': 'Weedle',
      'types': 'Bug, Poison',
      'sprite':
          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/13.png',
    },
    {
      'id': 14,
      'name': 'Kakuna',
      'types': 'Bug, Poison',
      'sprite':
          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/14.png',
    },
    {
      'id': 15,
      'name': 'Beedrill',
      'types': 'Bug, Poison',
      'sprite':
          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/15.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    // Variable to find the size of the device screen.
    final deviceScreenWidth = MediaQuery.sizeOf(context).width;
    final deviceScreenHeight = MediaQuery.sizeOf(context).height;

    final connectivityStatus = Provider.of<ConnectivityStatus>(context);
    return connectivityStatus == ConnectivityStatus.connected
        ? SafeArea(
            child: DefaultTabController(
              length: 2,
              child: Scaffold(
                appBar: AppBar(
                  title: const Text('Pokemon'),
                  centerTitle: true,
                ),
                body: Column(
                  children: [
                    const Divider(),
                    const TabBar(
                      labelStyle: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                      labelColor: Colors.black,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicator: UnderlineTabIndicator(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(15),
                        ),
                        borderSide: BorderSide(
                          width: 5.0,
                          color: ConstantColors.primaryColor,
                        ),
                      ),
                      tabs: [
                        Tab(
                          text: 'All Pokemons',
                        ),
                        Tab(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Favorites',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(width: 5),
                              CircleAvatar(
                                radius: 13,
                                backgroundColor: Colors.blue,
                                child: Text(
                                  '1',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          ColoredBox(
                            color: Colors.grey.shade200,
                            child: GridView.builder(
                              itemCount: pokemonList.length,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                mainAxisExtent: deviceScreenHeight * 0.25,
                              ),
                              itemBuilder: (context, index) => PokemonCard(
                                id: pokemonList[index]["id"],
                                name: pokemonList[index]["name"],
                                type: pokemonList[index]["types"],
                                image: pokemonList[index]["sprite"],
                              ),
                            ),
                          ),
                          GridView.count(
                            crossAxisCount: 2,
                            childAspectRatio:
                                (deviceScreenWidth / deviceScreenHeight),
                            controller:
                                ScrollController(keepScrollOffset: false),
                            shrinkWrap: true,
                            children: widgetList.map((String value) {
                              return Container(
                                color: Colors.green,
                                child: Center(
                                  child: Text(
                                    value,
                                    style: const TextStyle(
                                      fontSize: 50.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                          // const Text('data2'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        : const NoInternetScreen();
  }
}
