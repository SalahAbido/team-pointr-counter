import 'package:flutter/material.dart';
import 'package:team_point_counter/widgets/button.dart';
import 'package:team_point_counter/widgets/column.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counterA = 0;

  int counterB = 0;

  ResetCounter() {
    setState(() {
      counterA = 0;
      counterB = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Point Counter"),
      ),
      body: Container(
        margin: EdgeInsets.only(
          top: size.height * 0.04,
          bottom: size.height * 0.1,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TeamColumn(Name: "A", counter: counterA),
                Container(
                  height: 450,
                  child: VerticalDivider(
                    thickness: 1,
                    width: 20,
                    color: Colors.black26,
                  ),
                ),
                TeamColumn(Name: "B", counter: counterB),
              ],
            ),
            ElevatedButton(
                onPressed: () => ResetCounter(),
                style: ButtonStyle(
                    fixedSize: MaterialStatePropertyAll(
                        Size.fromWidth(size.width * 0.4)),
                    backgroundColor:
                        const MaterialStatePropertyAll(Colors.teal)),
                child:
                    Text("Reset", style: Theme.of(context).textTheme.bodyText2))
          ],
        ),
      ),
    );
  }
}
