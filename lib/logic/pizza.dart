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
        ingredients: ['tomate', 'mozzarella', 'jambon supérieur'],
        price30: 6,
        price40: 10,
        color: Colors.red.shade900),
    Pizza(
        name: 'Bicquette',
        ingredients: ['tomate', 'mozzarella', 'chèvre', 'lardons', 'oignons', 'oeuf'],
        price30: 9.5,
        price40: 13.5,
        color: Colors.teal.shade900),
    Pizza(
        name: 'Bolognaise',
        ingredients: ['tomate', 'mozzarella', 'champignons', 'bolognaise', 'crème', 'oeuf'],
        price30: 8.5,
        price40: 12.5,
        color: Colors.green),
    Pizza(
        name: 'Bretonne',
        ingredients: ['crème', 'mozzarella', 'andouille', 'lardons', 'oignons', 'oeuf'],
        price30: 9.5,
        price40: 13.5,
        color: Colors.brown.shade800),
    Pizza(
        name: 'Calzone (soufflée)',
        ingredients: ['tomate', 'mozzarella', 'jambon supérieur', 'crème', 'oeuf'],
        price30: 7.5,
        price40: 11.5,
        color: Colors.pink.shade800,
        customImage: 'calzone'),
    Pizza(
        name: 'Calzone Capri (soufflée)',
        ingredients: ['tomate', 'mozzarella', 'thon', 'pommes de terre', 'crème'],
        price30: 7.5,
        price40: 11.5,
        color: Colors.red.shade300,
        customImage: 'calzone_capri'),
    Pizza(
        name: 'Campagnarde',
        ingredients: ['tomate', 'mozzarella', 'poulet', 'pommes de terre', 'oignons', 'oeuf'],
        price30: 9.5,
        price40: 13.5,
        color: Colors.orange.shade800),
    Pizza(
        name: 'Capri',
        ingredients: ['tomate', 'mozzarella', 'thon', 'pommes de terre', 'crème'],
        price30: 7.5,
        price40: 11.5,
        color: Colors.yellow.shade800,
        customImage: 'calzone_capri'),
    Pizza(
        name: 'Carbonara',
        ingredients: ['crème', 'mozzarella', 'champignons', 'lardons', 'oeuf'],
        price30: 9.5,
        price40: 13.5,
        color: Colors.green.shade800),
    Pizza(
        name: 'Catalane',
        ingredients: ['tomate', 'mozzarella', 'moules', 'chorizo espagnol', 'poivrons', 'sauce harissa'],
        price30: 10.5,
        price40: 14.5,
        color: Colors.blue.shade800),
    Pizza(
        name: 'Chevrette',
        ingredients: ['crème', 'mozzarella', 'chèvre', 'miel', 'noix'],
        price30: 10,
        price40: 14,
        color: Colors.indigo.shade800),
    Pizza(
        name: 'Cochonette',
        ingredients: [
          'tomate',
          'mozzarella',
          'andouille',
          'moutarde à l\'ancienne',
          'pommes de terre',
          'oignons',
          'oeuf'
        ],
        price30: 9,
        price40: 13,
        color: Colors.purple.shade800),
    Pizza(
        name: 'Fermière',
        ingredients: ['tomate', 'mozzarella', 'oignons', 'lardons', 'gésiers', 'chèvre', 'oeuf'],
        price30: 9,
        price40: 13,
        color: Colors.teal),
    Pizza(
        name: 'Flammekueche',
        ingredients: ['crème', 'mozzarella', 'oignons', 'lardons', 'reblochon'],
        price30: 9.5,
        price40: 13.5,
        color: Colors.brown),
    Pizza(
        name: 'Fromagère',
        ingredients: ['tomate', 'mozzarella', 'camembert', 'chèvre', 'reblochon', 'raclette'],
        price30: 9.5,
        price40: 13.5,
        color: Colors.pink.shade900),
    Pizza(
        name: 'Indienne',
        ingredients: ['tomate', 'mozzarella', 'champignons', 'poulet', 'oignons', 'sauce curry'],
        price30: 9.5,
        price40: 13.5,
        color: Colors.green.shade900),
    Pizza(
        name: 'Kebab',
        ingredients: ['tomate', 'mozzarella', 'viande à kébab', 'poivrons', 'oignons', 'sauce kébab'],
        price30: 9.5,
        price40: 13.5,
        color: Colors.yellow.shade900),
    Pizza(
        name: 'Kebab+',
        ingredients: ['tomate', 'mozzarella', 'viande à kébab', 'merguez', 'poivrons', 'oignons', 'sauce kébab'],
        price30: 10.5,
        price40: 14.5,
        color: Colors.orange.shade900,
        customImage: 'kebab'),
    Pizza(
        name: 'Landaise',
        ingredients: ['crème', 'mozzarella', 'pommes de terre', 'gésiers', 'magret fumé', 'asperges', 'oignons'],
        price30: 10,
        price40: 14,
        color: Colors.blueGrey.shade900),
    Pizza(
        name: 'Marocaine',
        ingredients: ['tomate', 'mozzarella', 'poulet', 'merguez', 'oignons', 'raisins secs', 'sauce marocaine'],
        price30: 10.5,
        price40: 14.5,
        color: Colors.purple.shade900),
    Pizza(
        name: 'Méditerranéenne',
        ingredients: ['tomate', 'mozzarella', 'anchois à l\'orientale', 'tomates séchées', 'olives'],
        price30: 9.5,
        price40: 13.5,
        color: Colors.green.shade700),
    Pizza(
        name: 'Mexicaine',
        ingredients: ['tomate', 'mozzarella', 'poulet', 'poivrons', 'oignons', 'sauce harissa'],
        price30: 10.5,
        price40: 14.5,
        color: Colors.teal.shade600),
    Pizza(
        name: 'Neptune',
        ingredients: ['tomate', 'mozzarella', 'saint-jacques', 'saumon', 'crème'],
        price30: 10,
        price40: 14,
        color: Colors.indigo.shade600),
    Pizza(
        name: 'Normande',
        ingredients: ['crème', 'mozzarella', 'andouille', 'camembert'],
        price30: 10.5,
        price40: 14.5,
        color: Colors.blue.shade700),
    Pizza(
        name: 'Océane',
        ingredients: ['tomate', 'mozzarella', 'fruits de mer', 'crème'],
        price30: 8.5,
        price40: 12.5,
        color: Colors.amber.shade900),
    Pizza(
        name: 'Orientale',
        ingredients: ['tomate', 'mozzarella', 'merguez', 'chorizo espagnol', 'poivrons', 'oignons'],
        price30: 8.5,
        price40: 12.5,
        color: Colors.cyan.shade900),
    Pizza(
        name: 'Paysanne',
        ingredients: ['tomate', 'mozzarella', 'pommes de terre', 'lardons', 'oignons', 'oeuf'],
        price30: 8.5,
        price40: 12.5,
        color: Colors.blueGrey.shade800,
        customImage: 'campagnarde'),
    Pizza(
        name: 'Poulette',
        ingredients: ['tomate', 'mozzarella', 'poulet', 'gésiers', 'oeuf'],
        price30: 9.5,
        price40: 13.5,
        color: Colors.deepOrange.shade900),
    Pizza(
        name: '4 saisons',
        ingredients: [
          'tomate',
          'mozzarella',
          'coeur d\'artichaut',
          'tomate fraiche',
          'champignons',
          'poivrons',
          'oignons',
          'olives'
        ],
        price30: 9,
        price40: 13,
        color: Colors.brown.shade900),
    Pizza(
        name: 'Reine',
        ingredients: ['tomate', 'mozzarella', 'jambon supérieur', 'champignons'],
        price30: 6.5,
        price40: 10.5,
        color: Colors.yellow.shade900),
    Pizza(
        name: 'Savoyarde',
        ingredients: ['tomate', 'mozzarella', 'pommes de terre', 'oignons', 'crème', 'raclette', 'jambon cru'],
        price30: 8.5,
        price40: 12.5,
        color: Colors.red.shade800),
    Pizza(
        name: 'Sicilienne',
        ingredients: ['tomate', 'mozzarella', 'thon', 'anchois', 'olives', 'câpres'],
        price30: 8.5,
        price40: 12.5,
        color: Colors.lightGreen.shade900),
    Pizza(name: 'Simplicimo', ingredients: ['tomate', 'mozzarella'], price30: 6, price40: 10, color: Colors.grey.shade900),
    Pizza(
        name: 'Super',
        ingredients: [
          'tomate',
          'mozzarella',
          'jambon supérieur',
          'lardons',
          'chorizo espagnol',
          'champignons',
          'oignons',
          'chèvre',
          'crème',
          'oeuf'
        ],
        price30: 10,
        price40: 14,
        color: Colors.pink.shade900),
    Pizza(
        name: 'Super de la mer',
        ingredients: ['tomate', 'mozzarella', 'fruits de mer', 'saint-jacques', 'saumon', 'crème'],
        price30: 10.5,
        price40: 14.5,
        color: Colors.pinkAccent),
    Pizza(
        name: 'Tartiflette',
        ingredients: ['crème', 'mozzarella', 'pommes de terre', 'oignons', 'lardons', 'reblochon'],
        price30: 9.5,
        price40: 13.5,
        color: Colors.lime.shade800,
        customImage: 'flammekueche'),
    Pizza(
        name: 'Terre-mer',
        ingredients: ['crème', 'mozzarella', 'saint-jacques', 'lardons', 'oignons'],
        price30: 10.5,
        price40: 14.5,
        color: Colors.blue),
    Pizza(
        name: 'Végétarienne',
        ingredients: [
          'tomate',
          'mozzarella',
          'champignons',
          'oignons',
          'pommes de terre',
          'coeur d\'artichaut',
          'tomate fraiche',
          'poivrons',
          'olives',
          'crème'
        ],
        price30: 9.5,
        price40: 13.5,
        color: Colors.indigo.shade300),
  ];
}
