import 'package:elodie_pizza/screens/browse_screen.dart';
import 'package:elodie_pizza/screens/screens.dart';
import 'package:flutter/material.dart';

void main() => runApp(ElodiePizza());

class ElodiePizza extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Montserrat',
      ),      
      initialRoute: Screens.browse,
      routes: {
        Screens.browse: (context) => BrowseScreen(),
      },
    );
  }
}

