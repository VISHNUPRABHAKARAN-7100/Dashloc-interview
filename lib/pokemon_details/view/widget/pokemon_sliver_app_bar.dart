import 'package:flutter/material.dart';
import '../../../util/constant_colors.dart';

class PokemonSliverAppBar extends StatelessWidget {
  const PokemonSliverAppBar({
    super.key,
    required this.appBarTitle,
    required this.description,
    required this.id,
    required this.image,
  });

  final String appBarTitle;
  final String description;
  final String id;
  final String image;

  @override
  Widget build(BuildContext context) {
    final deviceScreenWidth = MediaQuery.sizeOf(context).width;
    final deviceScreenHeight = MediaQuery.sizeOf(context).height;
    return SliverAppBar(
      automaticallyImplyLeading: false,
      backgroundColor: ConstantColors.pokemonBackgroundColor,
      floating: true,
      expandedHeight: deviceScreenHeight * 0.3,
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                appBarTitle,
                style: TextStyle(
                  fontSize: deviceScreenWidth * 0.08,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                description,
                style: TextStyle(
                  fontSize: deviceScreenWidth * 0.06,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '#001',
                    style: TextStyle(
                      fontSize: deviceScreenWidth * 0.06,
                    ),
                  ),
                  Image(
                    fit: BoxFit.contain,
                    image: NetworkImage(
                      image,
                    ),
                    height: deviceScreenHeight * 0.2,
                    width: deviceScreenWidth * 0.6,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
