Used custom icons and fonts from google fonts

Icons:

1. Go to FlutterIcon.com
2. Click on the icons that you want, upload custom SVG files, font-files, or JSON files
3. Insert your own name like ‘Custom’, ‘Icecons’ etc.
4. Click ‘Download’ and extract files
5. The config.json is absolute genius, it saves all your selections and custom icons, so when you revisit the website just drag and drop it in and it’s all there again.
6. Move the ttf file into your desired directory (e.g. fonts/CustomIcons.ttf)
7. Move the dart file into your desired directory in lib (I did lib/presentation/custom_icons_icons.dart )
8. Follow the instructions at the top of your dart file and copy the fonts code into pubspec.yml (I put mine underneath flutter: uses-material-design)
flutter run to ensure project compiles and app starts expectedly
9. Use your icon!

Credits https://medium.com/flutterpub/how-to-use-custom-icons-in-flutter-834a079d977

https://www.fluttericon.com/

https://fonts.google.com/

Download desired font family
Place it in the fonts folder
Update the pubspec.yaml file about the fonts
Use fonts by using fontFamily
