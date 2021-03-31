import 'package:coffee/models/Coffee.dart';

final DUMMY_COFFEES = [
  Coffee(
    id: 'c1',
    name: 'Cappuciono',
    description:
        "this is an espresso whith a thick layer of faamy steamed milk",
    price: 13,
    imageUrl: "images/principal.png",
  ),
  Coffee(
    id: 'c2',
    name: 'Frapuciono',
    description:
        "this is an espresso whith a thick layer of faamy steamed milk",
    price: 14,
    imageUrl: "images/principal.png",
  ),
  Coffee(
      id: 'c3',
      name: 'Americano',
      description:
          "this is an espresso whith a thick layer of faamy steamed milk",
      price: 11,
      imageUrl: "images/principal.png",
      isFavorite: true),
];
