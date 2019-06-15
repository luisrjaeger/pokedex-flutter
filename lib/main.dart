import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/item/list.dart';
import 'package:pokedex/move/list.dart';
import 'package:pokedex/pokedex_icons_icons.dart';
import 'package:pokedex/pokemon/list.dart';

void main() => runApp(MainScreen());

class MainScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainScreenState();
  }
}

class _MainScreenState extends State<MainScreen> {
  static const _tabItems = [
    BottomNavigationBarItem(icon: Icon(PokedexIcons.ic_pikachu), title: Text("Pokemon")),
    BottomNavigationBarItem(icon: Icon(PokedexIcons.ic_ball), title: Text("Moves")),
    BottomNavigationBarItem(icon: Icon(PokedexIcons.ic_item), title: Text("Items"))
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: _tabItems,
          activeColor: Colors.black,
          backgroundColor: Colors.white.withOpacity(0.6),
        ),
        tabBuilder: (BuildContext context, int index) => _configTab(index),
      ),
    );
  }

  Widget _configTab(int index) {
    var page;

    switch (index) {
      case 0:
        page = PokemonListScreen();
        break;
      case 1:
        page = MoveListScreen();
        break;
      default:
        page = ItemListScreen();
    }

    return CupertinoTabView(
      builder: (BuildContext context) => page,
    );
  }
}
