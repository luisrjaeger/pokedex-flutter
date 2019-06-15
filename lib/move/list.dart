import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

class MoveListScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MoveListState();
}

class _MoveListState extends State<MoveListScreen> {
  @override
  Widget build(BuildContext context) => CupertinoPageScaffold(
        child: buildChild(),
      );

  buildChild() => Container(
        child: Center(
          child: Text('Move'),
        ),
      );
}
