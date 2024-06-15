import 'package:flutter/material.dart';
import '../../util/constant_colors.dart';
import 'widget/base_stats_details.dart';
import 'widget/details_column.dart';
import 'widget/pokemon_sliver_app_bar.dart';

class PokemonDetails extends StatelessWidget {
  const PokemonDetails({super.key});

  @override
  Widget build(BuildContext context) {
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
        body: const CustomScrollView(
          slivers: [
            // Sliver appBar for
            // 1. Name of the Pokemon
            // 2. Description of the Pokemon
            // 3. Id of the Pokemon
            // 4. Image of the Pokemon
            PokemonSliverAppBar(
              appBarTitle: 'Pokemon Title',
              description: 'Grass, Poison',
              id: '#001',
              image:
                  'https://images.pexels.com/photos/25935100/pexels-photo-25935100/free-photo-of-work-coffee.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
            ),

            // Details of the Pokemon
            // 1. Height of the Pokemon
            // 2. Weight of the Pokemon
            // 3. BMI of the of the Pokemon
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(top: 8.0, left: 15),
                child: Row(
                  children: [
                    DetailsColumn(
                      title: 'Height',
                      description: '69',
                    ),
                    Spacer(),
                    DetailsColumn(
                      title: 'Weight',
                      description: '7',
                    ),
                    Spacer(),
                    DetailsColumn(
                      title: 'BMI',
                      description: '14.7',
                    ),
                    Spacer(flex: 4),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Divider(
                thickness: 10,
              ),
            ),
            SliverAppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.white,
              pinned: true,
              title: Text(
                'Base stats',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.all(8.0),
              sliver: SliverToBoxAdapter(
                child: Column(
                  children: [
                    BaseStatsDetails(
                      type: 'Hp 20',
                      progressIndicatorValue: 0.5,
                      progressIndicatorColor: Colors.pink,
                    ),
                    BaseStatsDetails(
                      type: 'Attack 30',
                      progressIndicatorValue: 0.2,
                      progressIndicatorColor: Colors.pink,
                    ),
                    BaseStatsDetails(
                      type: 'Defense 30',
                      progressIndicatorValue: 0.8,
                      progressIndicatorColor: Colors.blueAccent,
                    ),
                    BaseStatsDetails(
                      type: 'Special Attack 30',
                      progressIndicatorValue: 0.3,
                      progressIndicatorColor: Color(0xFF29313F),
                    ),
                    BaseStatsDetails(
                      type: 'Special Defense 30',
                      progressIndicatorValue: 0.7,
                      progressIndicatorColor: Colors.amber,
                    ),
                    BaseStatsDetails(
                      type: 'Speed 10',
                      progressIndicatorValue: 0.1,
                      progressIndicatorColor: Colors.amber,
                    ),
                    BaseStatsDetails(
                      type: 'Avg Power   10',
                      progressIndicatorValue: 0.3,
                      progressIndicatorColor: Colors.pink,
                    ),

                    // !
                    BaseStatsDetails(
                      type: 'Hp 20',
                      progressIndicatorValue: 0.5,
                      progressIndicatorColor: Colors.pink,
                    ),
                    BaseStatsDetails(
                      type: 'Attack 30',
                      progressIndicatorValue: 0.2,
                      progressIndicatorColor: Colors.pink,
                    ),
                    BaseStatsDetails(
                      type: 'Defense 30',
                      progressIndicatorValue: 0.8,
                      progressIndicatorColor: Colors.blueAccent,
                    ),
                    BaseStatsDetails(
                      type: 'Special Attack 30',
                      progressIndicatorValue: 0.3,
                      progressIndicatorColor: Colors.blueAccent,
                    ),
                    BaseStatsDetails(
                      type: 'Special Defense 30',
                      progressIndicatorValue: 0.7,
                      progressIndicatorColor: Colors.amber,
                    ),
                    BaseStatsDetails(
                      type: 'Speed 10',
                      progressIndicatorValue: 0.1,
                      progressIndicatorColor: Colors.amber,
                    ),
                    BaseStatsDetails(
                      type: 'Avg Power   10',
                      progressIndicatorValue: 0.3,
                      progressIndicatorColor: Colors.pink,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
