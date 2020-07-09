import 'package:flutter/material.dart';
import 'package:rentalCar_ui/models/car_model.dart';

class CarSwipeItem extends StatelessWidget {
  final Car _carItem;
  CarSwipeItem(this._carItem);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 80.0,
            child: Container(
              height: 240,
              width: 290,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    _carItem.name,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    _carItem.door.toString() + ' Door | ' + _carItem.name,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Row(),
                  Row(),
                ],
              ),
            ),
          ),
          Image.asset(_carItem.path),
        ],
      ),
    );
  }
}
