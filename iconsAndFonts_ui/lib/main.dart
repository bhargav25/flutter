import 'package:flutter/material.dart';
import 'package:iconsAndFonts_ui/customIconApp.dart';

void main() => runApp(IconsApp());

class IconsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CustomIconApp(),
    );
  }
}