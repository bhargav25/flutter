import 'package:flutter/material.dart';
import 'package:iconsAndFonts_ui/fonts/my_flutter_app_icons.dart';

class CustomIconApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('Custom font and icons'),
            Text(
              'This is poppins regular font',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
            Text(
              'This is poppins bold font',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'This is poppins italic font',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20,
                fontStyle: FontStyle.italic,
              ),
            ),
            Text(
              'This is Galada regular font',
              style: TextStyle(
                fontFamily: 'Galada',
                fontSize: 20,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(
                  MyFlutterApp.flight,
                  color: Colors.red,
                ),
                Icon(
                  MyFlutterApp.article_alt,
                  color: Colors.green,
                ),
                Icon(
                  MyFlutterApp.paper_plane_empty,
                  color: Colors.yellow,
                ),
                Icon(
                  MyFlutterApp.tune,
                  color: Colors.blue,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
