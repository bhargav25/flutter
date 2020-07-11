import 'package:flutter/material.dart';
import 'package:safetyApp_ui/OnboardingModel.dart';

class ArtWorkWidget extends StatelessWidget {
  final OnbMdl _screenData;
  ArtWorkWidget(this._screenData);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          height: size.height / 1.4,
          width: size.width,
          padding: EdgeInsets.all(40),
          decoration: BoxDecoration(
            // color: Colors.green,
            borderRadius: BorderRadius.circular(90),
          ),
        ),
        Container(
          height: size.height / 2.5,
          width: size.width,
          padding: EdgeInsets.all(40),
          decoration: BoxDecoration(
            color: _screenData.bgColor,
            borderRadius: BorderRadius.circular(90),
            boxShadow: [
              BoxShadow(
                color: _screenData.bgColor.withOpacity(0.2),
                blurRadius: 30.0,
                spreadRadius: 15.0,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                _screenData.text1,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              Text(
                _screenData.text2,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 0.0,
          child: Container(
            height: size.height / 2.5,
            width: 304,
            // padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(90),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(90),
              child: Image.asset(
                _screenData.imgPath,
                // fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
