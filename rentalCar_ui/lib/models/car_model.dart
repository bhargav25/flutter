import 'package:flutter/foundation.dart';

class Car{
  final double rating;
  final String path;
  final String deals;
  final String name;
  final int rate;
  final int door;
  Car({
    @required this.rating,
    @required this.path,
    @required this.deals,
    @required this.name,
    @required this.rate,
    this.door,
  });
}