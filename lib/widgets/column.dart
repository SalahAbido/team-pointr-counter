import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'button.dart';

class TeamColumn extends StatefulWidget {
  TeamColumn({Key? key, required this.Name, required this.counter})
      : super(key: key);
  final String Name;

  int counter;

  @override
  State<TeamColumn> createState() => _TeamColumnState();
}

class _TeamColumnState extends State<TeamColumn> {
  addOnePoint() {
    setState(() {
      widget.counter = widget.counter + 1;
    });
  }

  addTowPoint() {
    setState(() {
      widget.counter = widget.counter + 2;
    });
  }

  addThreePoint() {
    setState(() {
      widget.counter = widget.counter + 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Team ${widget.Name}",
          style: Theme.of(context).textTheme.headline2,
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          child: Text(
            widget.counter.toString(),
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        Button(
          text: "Add 1 Point",
          onpress: () => addOnePoint(),
        ),
        Button(
          text: "Add 2 Point",
          onpress: addTowPoint,
        ),
        Button(
          text: "Add 3 Point",
          onpress: () => addThreePoint(),
        ),
      ],
    );
  }
}
