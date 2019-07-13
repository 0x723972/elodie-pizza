import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:elodie_pizza/components/pizza_card.dart';
import 'package:elodie_pizza/constants.dart';
import 'package:flutter/material.dart';

class BrowseScreen extends StatefulWidget {
  @override
  _BrowseScreenState createState() => _BrowseScreenState();
}

class _BrowseScreenState extends State<BrowseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        elevation: 0,
        leading: Icon(Icons.short_text),
        actions: <Widget>[Icon(Icons.shopping_basket)],
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ColorizeAnimatedTextKit(
              duration: Duration(seconds: 15),
              isRepeatingAnimation: false,
              text: ['Elodie Pizza'],
              textStyle: kTextTitle,
              colors: [
                Colors.purple,
                Colors.indigo,
                Colors.blue,
                Colors.green,
                Colors.yellow,
                Colors.orange,
                Colors.red,
                Colors.black
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Ingrédients, Pizza, Prix, ...',
                      icon: Icon(Icons.search),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Icon(Icons.euro_symbol, color: Colors.grey),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: <Widget>[
                  Wrap(
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    direction: Axis.horizontal,
                    children: <Widget>[
                      PizzaCard(name: 'Agenaise', price: 10.5, color: Colors.brown),
                      PizzaCard(name: 'Armorique', price: 9.5, color: Colors.yellow.shade900),
                      PizzaCard(name: 'Bambino', price: 6, color: Colors.red.shade900),
                      PizzaCard(name: 'Bicquette', price: 9.5, color: Colors.teal),
                      PizzaCard(name: 'Bolognaise', price: 8.5, color: Colors.green),
                      PizzaCard(name: 'Bretonne', price: 9.5, color: Colors.brown.shade800),
                      PizzaCard(name: 'Calzone', price: 7.5, color: Colors.pink.shade800),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
