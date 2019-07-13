import 'package:flutter/material.dart';

class PizzaCard extends StatelessWidget {
  final String name;
  final double price;
  final Function onTap;
  final Color color;
  final bool noImage;

  PizzaCard({@required this.name, @required this.price, this.onTap, @required this.color, this.noImage = false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        width: (MediaQuery.of(context).size.width / 2) - 40,
        height: (MediaQuery.of(context).size.height / 4),
        child: Stack(
          children: <Widget>[
            noImage
                ? Container()
                : Align(
                    alignment: Alignment.bottomRight,
                    child: ClipRRect(
                      child: Image.asset('images/${this.name.toLowerCase()}.png'),
                      borderRadius: BorderRadius.circular(10),
                    )),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(this.name, style: TextStyle(fontSize: 16)),
                  SizedBox(height: 5),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(this.price.toStringAsFixed(2), style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300)),
                      Text('€', style: TextStyle(fontWeight: FontWeight.w100)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: this.color,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
