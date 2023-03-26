import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../my_provider.dart';
import 'button.dart';

class TeamColumn extends StatelessWidget {
  TeamColumn({
    Key? key,
    required this.Name,
    // required this.counter,
  }) : super(key: key);
  final String Name;

  // int counter;

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Column(
      children: [
        Text(
          "Team ${Name}",
          style: Theme.of(context).textTheme.headline2,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0),
          child: Text(
            "${Name == "A" ? context.watch<MyProvider>().counterA : context.watch<MyProvider>().counterB}",
            style: TextStyle(
              color: Colors.black,fontWeight: FontWeight.normal,fontSize: size.width*0.35
            ),
          ),
        ),
        Button(
          text: "Add 1 Point",
          onpress: () {
            // context.watch<MyProvider>();
            context.read<MyProvider>().addOnePoint(Name == "A" ? 0 : 1);
          },
        ),
        Button(
          text: "Add 2 Point",
          onpress: () {
            context.read<MyProvider>().addTowPoint(Name == "A" ? 0 : 1);
          },
        ),
        Button(
          text: "Add 3 Point",
          onpress: () {
            context.read<MyProvider>().addThreePoint(Name == "A" ? 0 : 1);
          },
        ),
      ],
    );
  }
}
