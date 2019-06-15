import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

class ItemListScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ItemListState();
}

class _ItemListState extends State<ItemListScreen> {
  @override
  Widget build(BuildContext context) => CupertinoPageScaffold(
        child: buildChild(),
      );

  buildChild() => Container(
        child: Center(
          child: Text('Item'),
        ),
      );
}
