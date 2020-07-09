import 'package:flutter/material.dart';

import 'widgets/listArea.dart';
import 'widgets/searchArea.dart';

class RentalCarDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(200, 200, 200, 0.3),
        // color: Colors.black,
        child: Column(
          children: <Widget>[
            Container(
              height: 280,
              // padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Color.fromRGBO(25, 75, 201, 1),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(60),
                  bottomRight: Radius.circular(60),
                ),
              ),
              child: SearchArea(),
            ),
            Expanded(
              child: ListArea(),
            ),
          ],
        ),
      ),
    );
  }
}
