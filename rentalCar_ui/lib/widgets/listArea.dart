import 'package:flutter/material.dart';
import 'package:rentalCar_ui/models/car_model.dart';
import 'package:rentalCar_ui/widgets/carListItem.dart';

class ListArea extends StatelessWidget {
  final List<Car> _carList = [
    Car(
        rating: 4.5,
        path: 'assets/images/car1.png',
        name: 'Blue Honda City',
        rate: 199,
        deals: '18'),
    Car(
        rating: 4.3,
        path: 'assets/images/car2.png',
        name: 'Red Tesla',
        rate: 299,
        deals: '10 Deals'),
    Car(
        rating: 4.3,
        path: 'assets/images/car3.png',
        name: 'Red Tesla',
        rate: 299,
        deals: '10 Deals'),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          // SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                '23 Results',
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                Icons.more_horiz,
                size: 24,
                color: Colors.black45,
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return Column(
                  children: <Widget>[
                    SizedBox(height:10),
                    CarListItem(_carList[index]),
                    SizedBox(height:10),
                  ],
                );
              },
              itemCount: _carList.length,
              scrollDirection: Axis.vertical,
            ),
          )
        ],
      ),
    );
  }
}
