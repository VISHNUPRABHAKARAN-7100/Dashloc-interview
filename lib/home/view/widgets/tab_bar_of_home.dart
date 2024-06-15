import 'package:flutter/material.dart';
import '../../../util/constant_colors.dart';

class TabBarOfHome extends StatelessWidget {
  const TabBarOfHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabBar(
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
    );
  }
}
