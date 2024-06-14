import 'package:dashloc_interview/util/constant_colors.dart';
import 'package:flutter/material.dart';

class PokemonCard extends StatelessWidget {
  const PokemonCard({
    super.key,
    required this.name,
    required this.id,
    required this.type,
    this.image =
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/132.png',
  });

  final String name;
  final int id;
  final String type;
  final String image;

  @override
  Widget build(BuildContext context) {
    // Variable to find the size of the device screen.
    final deviceScreenWidth = MediaQuery.sizeOf(context).width;
    final deviceScreenHeight = MediaQuery.sizeOf(context).height;
    return Container(
      margin: const EdgeInsets.all(8),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: deviceScreenHeight * 0.125,
            decoration: BoxDecoration(
              color: ConstantColors.pokemonBackgroundColor,
              image: DecorationImage(
                image: NetworkImage(
                  image,
                ),
              ),
            ),
          ),
          Container(
            height: (deviceScreenHeight * 0.125) - 20, // Because of margin
            width: double.infinity,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    id.toString(),
                    style: TextStyle(
                      fontSize: deviceScreenWidth * 0.04,
                    ),
                  ),
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: deviceScreenWidth * 0.045,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(type),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
