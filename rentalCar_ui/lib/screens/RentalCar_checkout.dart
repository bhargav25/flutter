import 'package:flutter/material.dart';
import 'package:rentalCar_ui/models/car_model.dart';
import 'package:rentalCar_ui/widgets/CarSwipeItem.dart';

class RentalCheckout extends StatelessWidget {
  final List<Car> _carList = [
    Car(
        rating: 4.5,
        path: 'assets/images/car1.png',
        name: 'Blue Honda City',
        rate: 199,
        door: 4,
        deals: '18'),
    Car(
        rating: 4.3,
        path: 'assets/images/car2.png',
        name: 'Red Tesla',
        rate: 299,
        door: 2,
        deals: '10 Deals'),
    Car(
        rating: 4.3,
        path: 'assets/images/car3.png',
        name: 'Orange Audi',
        rate: 299,
        door: 2,
        deals: '10 Deals'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Color.fromRGBO(200, 200, 200, 0.3),
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  height: 280,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(25, 75, 201, 1),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(60),
                      bottomRight: Radius.circular(60),
                    ),
                  ),
                  child: AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    leading: GestureDetector(
                      child: Icon(Icons.arrow_back),
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 100.0,
              child: Container(
                height: 360,
                // color: Colors.red,
                width: MediaQuery.of(context).size.width,
                child: PageView.builder(
                  controller: PageController(viewportFraction: 0.8),
                  scrollDirection: Axis.horizontal,
                  pageSnapping: true,
                  itemCount: _carList.length,
                  itemBuilder: (ctx, index) {
                    return CarSwipeItem(_carList[index]);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
