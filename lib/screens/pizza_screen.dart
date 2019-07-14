import 'package:elodie_pizza/components/pizza_icon_button.dart';
import 'package:elodie_pizza/logic/pizza.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PizzaScreen extends StatefulWidget {
  @override
  _PizzaScreenState createState() => _PizzaScreenState();
}

class _PizzaScreenState extends State<PizzaScreen> {
  @override
  Widget build(BuildContext context) {
    final Pizza pizza = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: pizza.color,
        elevation: 0,
        leading: MaterialButton(          
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.chevron_left),
        ),
      ),
      body: Container(
        color: pizza.color,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60, bottom: 60),
              child: Container(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    pizza.name,
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(right: 5),
                                      child: Icon(FontAwesomeIcons.circle, size: 15, color: Colors.grey),
                                    ),
                                    Text('base', style: TextStyle(color: Colors.grey)),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Text(pizza.ingredients.first)
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(right: 5),
                                      child: Icon(FontAwesomeIcons.bacon, size: 15, color: Colors.grey),
                                    ),
                                    Text('ingrédients', style: TextStyle(color: Colors.grey)),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Text(pizza.ingredients.skip(1).join(', '))
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Text('30 cm', style: TextStyle(fontSize: 30)),
                      Row(
                        children: <Widget>[
                          // Todo : uncomment when basket is ready
                          // PizzaIconButton(
                          //   icon: FontAwesomeIcons.minus,
                          //   onPressed: () {},
                          // ),
                          // SizedBox(width: 15),
                          // Text('0', style: TextStyle(fontSize: 30)),
                          // SizedBox(width: 15),
                          // PizzaIconButton(
                          //   icon: FontAwesomeIcons.plus,
                          //   onPressed: () {},
                          // ),
                          Expanded(
                            child: Text(
                              pizza.price30.toStringAsFixed(2),
                              textAlign: TextAlign.end,
                              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                            ),
                          ),
                          SizedBox(width: 20),
                        ],
                      ),
                      Text('40 cm', style: TextStyle(fontSize: 30)),
                      Row(
                        children: <Widget>[
                          // TODO : uncomment when basket is ready
                          // PizzaIconButton(
                          //   icon: FontAwesomeIcons.minus,
                          //   onPressed: () {},
                          // ),
                          // SizedBox(width: 15),
                          // Text('0', style: TextStyle(fontSize: 30)),
                          // SizedBox(width: 15),
                          // PizzaIconButton(
                          //   icon: FontAwesomeIcons.plus,
                          //   onPressed: () {},
                          // ),
                          Expanded(
                            child: Text(
                              pizza.price40.toStringAsFixed(2),
                              textAlign: TextAlign.end,
                              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                            ),
                          ),
                          SizedBox(width: 20),
                        ],
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Opacity(
                        // TODO : remove opacity when button is activated
                        opacity: 0,
                        child: MaterialButton(
                          minWidth: double.infinity,
                          color: pizza.color,
                          child: Text('Ajouter'),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
