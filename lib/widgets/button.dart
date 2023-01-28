import 'package:flutter/material.dart';
class Button extends StatelessWidget {
   Button({Key? key, required this.text, required this.onpress}) : super(key: key);
final String text;
final Function()onpress;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ElevatedButton(
        onPressed: onpress,
        style: ButtonStyle(
            // fixedSize: MaterialStatePropertyAll(
            //     Size.fromWidth(size.width * 0.2)),
            backgroundColor: const MaterialStatePropertyAll(Colors.teal)),
        child:
        Text(text, style: Theme.of(context).textTheme.bodyText1));
  }
}
