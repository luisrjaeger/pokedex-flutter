import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PokemonListScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonListScreen> {
  @override
  Widget build(BuildContext context) => buildChild();

  buildChild() => CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Pokemon'),
          backgroundColor: Colors.white.withOpacity(0.6),
        ),
        child: Container(
          padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/img_background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            //color: Colors.red,
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Card(
                      child: Container(
                        padding: EdgeInsets.all(15.0),
                        child: Text('Teste'),
                        alignment: Alignment(0.0, 0.0),
                      ),
                    )
                  ],
                );
              },
            ),
          ),
        ),
      );
}
