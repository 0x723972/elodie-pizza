import 'package:flutter/material.dart';

class Pizza {
  final String name;
  final List<String> ingredients;
  final double price30;
  final double price40;
  final String customImage;
  final Color color;

  Pizza({
    @required this.name,
    @required this.ingredients,
    @required this.price30,
    @required this.price40,
    @required this.color,
    this.customImage,
  });

  static final List<Pizza> pizzas = [
    Pizza(
        name: 'Agenaise',
        ingredients: ['tomate', 'mozzarella', 'poulet', 'tomates séchées', 'pruneaux'],
        price30: 10.5,
        price40: 14.5,
        color: Colors.brown),
    Pizza(
        name: 'Armorique',
        ingredients: ['crème', 'mozzarella', 'fruits de mer', 'beurre persillé'],
        price30: 9.5,
        price40: 13.5,
        color: Colors.yellow.shade900),
    Pizza(
        name: 'Bambino',
        ingredients: ['', '', '', '', ''],
        price30: 6,
        price40: 10,
        color: Colors.red.shade900),
    Pizza(
        name: 'Bicquette',
        ingredients: ['', '', '', '', ''],
        price30: 9.5,
        price40: 13.5,
        color: Colors.teal),
    Pizza(
        name: 'Bolognaise',
        ingredients: ['', '', '', '', ''],
        price30: 8.5,
        price40: 12.5,
        color: Colors.green),
    Pizza(
        name: 'Bretonne',
        ingredients: ['', '', '', '', ''],
        price30: 9.5,
        price40: 13.5,
        color: Colors.brown.shade800),
    Pizza(
        name: 'Calzone (soufflée)',
        ingredients: ['', '', '', '', ''],
        price30: 7.5,
        price40: 11.5,
        color: Colors.pink.shade800,
        customImage: 'calzone'),
    Pizza(
        name: 'Calzone Capri (soufflée)',
        ingredients: ['', '', '', '', ''],
        price30: 7.5,
        price40: 11.5,
        color: Colors.red.shade300,
        customImage: 'calzone_capri'),
    Pizza(
        name: 'Campagnarde',
        ingredients: ['', '', '', '', ''],
        price30: 9.5,
        price40: 13.5,
        color: Colors.orange.shade800),
    Pizza(
        name: 'Capri',
        ingredients: ['', '', '', '', ''],
        price30: 7.5,
        price40: 11.5,
        color: Colors.yellow.shade800,
        customImage: 'calzone_capri'),
    Pizza(
        name: 'Carbonara',
        ingredients: ['', '', '', '', ''],
        price30: 9.5,
        price40: 13.5,
        color: Colors.green.shade800),
    Pizza(
        name: 'Catalane',
        ingredients: ['', '', '', '', ''],
        price30: 10.5,
        price40: 14.5,
        color: Colors.blue.shade800),
    Pizza(
        name: 'Chevrette',
        ingredients: ['', '', '', '', ''],
        price30: 10,
        price40: 14,
        color: Colors.indigo.shade800),
    Pizza(
        name: 'Cochonette',
        ingredients: ['', '', '', '', ''],
        price30: 9,
        price40: 13,
        color: Colors.purple.shade800),
    Pizza(
        name: 'Fermière',
        ingredients: ['', '', '', '', ''],
        price30: 9,
        price40: 13,
        color: Colors.teal),
    Pizza(
        name: 'Flammekueche',
        ingredients: ['', '', '', '', ''],
        price30: 9.5,
        price40: 13.5,
        color: Colors.brown),
    Pizza(
        name: 'Fromagère',
        ingredients: ['', '', '', '', ''],
        price30: 9.5,
        price40: 13.5,
        color: Colors.pink.shade900),
    Pizza(
        name: 'Indienne',
        ingredients: ['', '', '', '', ''],
        price30: 9.5,
        price40: 13.5,
        color: Colors.green.shade900),
    Pizza(
        name: 'Kebab',
        ingredients: ['', '', '', '', ''],
        price30: 9.5,
        price40: 13.5,
        color: Colors.yellow.shade900),
    Pizza(
        name: 'Kebab+',
        ingredients: ['', '', '', '', ''],
        price30: 10.5,
        price40: 14.5,
        color: Colors.orange.shade900,
        customImage: 'kebab'),        
    Pizza(
        name: 'Landaise',
        ingredients: ['', '', '', '', ''],
        price30: 10,
        price40: 14,
        color: Colors.blueGrey.shade900),
    Pizza(
        name: 'Marocaine',
        ingredients: ['', '', '', '', ''],
        price30: 10.5,
        price40: 14.5,
        color: Colors.purple.shade900),
    
  ];
}
