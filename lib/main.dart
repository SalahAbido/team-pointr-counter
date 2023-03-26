import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:team_point_counter/my_provider.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // primarySwatch: Colors.teal,
          dividerColor: Colors.blue,
          appBarTheme: const AppBarTheme(
              color: Colors.teal,
              titleTextStyle: TextStyle(color: Colors.white, fontSize: 20.0)),
          backgroundColor: Colors.white,
          textTheme: const TextTheme(
            headline1: TextStyle(
                fontWeight: FontWeight.normal,
                color: Colors.black,
                fontSize: 200.0),
            bodyText1: TextStyle(
                fontWeight: FontWeight.normal,
                color: Colors.white,
                fontSize: 15.0),
            bodyText2: TextStyle(
                fontWeight: FontWeight.normal,
                color: Colors.black,
                fontSize: 20.0),
            headline2: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 30.0),
          )),
      home: ChangeNotifierProvider<MyProvider>(
        create: (context) =>  MyProvider(),
        child: MyHomePage(),
      ),
    );
  }
}
