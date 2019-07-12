import 'package:elodie_pizza/screens/browse_screen.dart';
import 'package:elodie_pizza/screens/screens.dart';
import 'package:flutter/material.dart';

void main() => runApp(ElodiePizza());

class ElodiePizza extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.white,
        appBarTheme: AppBarTheme.of(context).copyWith(
          textTheme: Theme.of(context).textTheme,
          elevation: 0
        ),
        textTheme: Typography.blackMountainView,
      ),
      darkTheme: ThemeData.dark().copyWith(

      ),
      initialRoute: Screens.browse,
      routes: {
        Screens.browse: (context) => BrowseScreen(),
      },
    );
  }
}

