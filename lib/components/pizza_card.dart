import 'package:elodie_pizza/logic/pizza.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PizzaCard extends StatelessWidget {
  final Function onTap;
  final Pizza pizza;

  PizzaCard({@required this.pizza, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: this.pizza.color,
          borderRadius: BorderRadius.circular(10),
        ),
        width: (MediaQuery.of(context).size.width / 2) - 40,
        height: (MediaQuery.of(context).size.height / 4),
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.bottomRight,
              child: ClipRRect(
                child: this.pizza.customImage == null
                    ? Image.asset(
                        'images/${this.pizza.name.toLowerCase().replaceAll(' ', '_').replaceAll('è', 'e')}.png')
                    : Image.asset('images/${this.pizza.customImage}.png'),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Hero(
                    tag: this.pizza.name,
                    child: Material(
                      type: MaterialType.transparency,
                      child: Text(
                        this.pizza.name,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(this.pizza.price30.toStringAsFixed(2),
                          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300)),
                      Text('€', style: TextStyle(fontWeight: FontWeight.w100)),
                    ],
                  ),
                  SizedBox(height: 12),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 30,
                width: 30,
                child: Icon(FontAwesomeIcons.plus, size: 12, color: Colors.white.withOpacity(0.8)),
                decoration: BoxDecoration(color: Colors.black38, borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomLeft: Radius.circular(10))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
