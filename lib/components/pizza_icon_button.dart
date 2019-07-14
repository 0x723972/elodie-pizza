import 'package:flutter/material.dart';

class PizzaIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;

  PizzaIconButton({@required this.icon, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: this.onPressed,
      child: Icon(this.icon),
      elevation: 0,
      constraints: BoxConstraints.tightFor(width: 30, height: 30),
      shape: CircleBorder(),
      fillColor: Colors.transparent,
    );
  }
}