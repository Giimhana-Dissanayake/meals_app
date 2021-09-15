import 'package:flutter/material.dart';
import './favorites_screen.dart';
import './categories_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabScrrenState createState() => _TabScrrenState();
}

class _TabScrrenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: Text('Meals'),
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.category),
                  text: 'Category',
                ),
                Tab(
                  icon: Icon(
                    Icons.star,
                  ),
                  text: 'Favorites',
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              CategoriesScreen(),
              FavoritesScreen(),
            ],
          )),
    );
  }
}
