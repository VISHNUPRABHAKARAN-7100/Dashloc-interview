import 'package:flutter/material.dart';
import '../../util/constant_colors.dart';

class PokemonDetails extends StatelessWidget {
  const PokemonDetails({super.key});

  @override
  Widget build(BuildContext context) {
    // Variable to find the size of the device screen.
    final deviceScreenWidth = MediaQuery.sizeOf(context).width;
    final deviceScreenHeight = MediaQuery.sizeOf(context).height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          backgroundColor: ConstantColors.pokemonBackgroundColor,
          leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              automaticallyImplyLeading: false,
              backgroundColor: ConstantColors.pokemonBackgroundColor,
              pinned: true,
              expandedHeight: deviceScreenHeight * 0.3,
              flexibleSpace: FlexibleSpaceBar(
                background: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Pokemon Title',
                        style: TextStyle(
                          fontSize: deviceScreenWidth * 0.08,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Grass, Poison',
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
                            image: const NetworkImage(
                              'https://images.pexels.com/photos/25935100/pexels-photo-25935100/free-photo-of-work-coffee.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
                              // scale: 2,
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
            ),
            // const SliverToBoxAdapter(
            //   child: Divider(),
            // ),
            // const SliverToBoxAdapter(
            //   child: Padding(
            //     padding: EdgeInsets.all(16.0),
            //     child: Text(
            //       'Additional content goes here.',
            //       style: TextStyle(fontSize: 16),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
