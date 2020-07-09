import 'package:flutter/material.dart';
import 'package:rentalCar_ui/models/car_model.dart';
import 'package:rentalCar_ui/screens/RentalCar_checkout.dart';

class CarListItem extends StatelessWidget {
  final Car _carItem;
  CarListItem(this._carItem);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: CarItemClipper(),
          child: Container(
            height: 250,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: 20,
                      padding:
                          EdgeInsets.only(top: 4, bottom: 4, left: 6, right: 6),
                      decoration: BoxDecoration(
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.star, color: Colors.white, size: 10),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            _carItem.rating.toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      _carItem.deals + ' Deals',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Image.asset(
                  _carItem.path,
                  fit: BoxFit.scaleDown,
                  height: 130,
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        _carItem.name,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'From \₹' + _carItem.rate.toString() + '/ day',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.normal,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RentalCheckout()),
              );
            },
            child: Container(
              height: 60,
              width: 60,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromRGBO(34, 85, 190, 1),
              ),
              child: Icon(
                Icons.fast_forward,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CarItemClipper extends CustomClipper<Path> {
  Path getClip(Size size) {
    double radius = 50.0;
    Path path = Path();
    path.lineTo(0.0, size.height);
    path.lineTo(size.width - (2 * radius), size.height);

    path.arcToPoint(
      Offset(
        size.width - (1.5 * radius),
        size.height - (radius / 2),
      ),
      clockwise: false,
      radius: Radius.circular(radius / 2),
    );

    path.lineTo(size.width - (1.5 * radius), size.height - radius);

    path.arcToPoint(
      Offset(
        size.width - radius,
        size.height - (1.5 * radius),
      ),
      clockwise: true,
      radius: Radius.circular(radius / 2),
    );

    path.lineTo(size.width - (0.5 * radius), size.height - (1.5 * radius));

    path.arcToPoint(
      Offset(
        size.width,
        size.height - (2 * radius),
      ),
      clockwise: false,
      radius: Radius.circular(radius / 2),
    );

    path.lineTo(size.width, 0.0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
