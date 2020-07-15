import 'package:flutter/material.dart';

class StoryMgmtApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    const double padding = 20.0;
    return Scaffold(
      backgroundColor: Color(0xffFFD34A),
      body: Padding(
        padding: const EdgeInsets.all(padding),
        child: SafeArea(
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              ClipPath(
                clipper: SplashClipper(),
                child: Container(
                  height: size.height - 2 * padding,
                  width: size.width - 2 * padding,
                  decoration: BoxDecoration(
                    color: Color(0xFF00A25C),
                  ),
                  child: Text('Text'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SplashClipper extends CustomClipper<Path> {
  Path getClip(Size size) {
    double radius = 50.0;
    Path path = Path();
    // path.lineTo(0, 0);
    // path.lineTo(0, size.height);
    // path.lineTo(radius/6, size.height - (4 * radius));
    // path.
    path.arcToPoint(Offset(radius, size.height-radius/2), clockwise: false, radius: Radius.circular(radius));
    // path.lineTo(radius, size.height - radius/2);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    // path.lineTo(0, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
