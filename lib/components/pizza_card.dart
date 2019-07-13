import 'package:flutter/material.dart';

class PizzaCard extends StatelessWidget {
  final String name;
  final double price;
  final Function onTap;
  final Color color;
  final bool noImage;
  final String customImage;

  PizzaCard(
      {@required this.name,
      @required this.price,
      this.onTap,
      @required this.color,
      this.noImage = false,
      this.customImage});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: this.color,
          borderRadius: BorderRadius.circular(10),
        ),
        width: (MediaQuery.of(context).size.width / 2) - 40,
        height: (MediaQuery.of(context).size.height / 4),
        child: Stack(
          children: <Widget>[
            noImage
                ? Container()
                : Align(
                    alignment: Alignment.bottomRight,
                    child: ClipRRect(
                      child: customImage == null
                          ? Image.asset(
                              'images/${this.name.toLowerCase().replaceAll(' ', '_').replaceAll('è', 'e')}.png')
                          : Image.asset('images/${this.customImage}.png'),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
            // Container(
            //   margin: EdgeInsets.only(top: 90),
            //   decoration: BoxDecoration(
            //     color: Colors.black38,
            //     borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
            //   ),
            // ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 14),
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
                  SizedBox(height: 12),
                  // Expanded(
                  //   child: Center(
                  //     child: Text(
                  //         'tomate, mozzarella, champignons, oignons, pommes de terre, coeur... d\'artichaud, tomate fraiche, poivrons, olives',
                  //         style: kTextDescription),
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
