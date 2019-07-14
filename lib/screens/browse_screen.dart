import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:elodie_pizza/components/pizza_card.dart';
import 'package:elodie_pizza/constants.dart';
import 'package:elodie_pizza/logic/pizza.dart';
import 'package:elodie_pizza/screens/screens.dart';
import 'package:flutter/material.dart';

class BrowseScreen extends StatefulWidget {
  @override
  _BrowseScreenState createState() => _BrowseScreenState();
}

class _BrowseScreenState extends State<BrowseScreen> {
  List<Pizza> _pizzas;
  List<PizzaCard> _cards = [];

  @override
  void initState() {
    super.initState();
    _pizzas = Pizza.pizzas;
    updateCards();
  }

  updateCards() {
    _cards.clear();
    for (var pizza in _pizzas) {
      var card = PizzaCard(pizza: pizza, onTap: () {
        Navigator.pushNamed(context, Screens.article, arguments: pizza);
      });
      _cards.add(card);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        elevation: 0,
        leading: Icon(Icons.menu),
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
                    children: _cards,
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
