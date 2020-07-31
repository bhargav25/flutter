import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_03_ui/constants.dart';
import 'package:login_03_ui/passbook_icons.dart';

class TextFieldWidget extends StatelessWidget {
  final String type;
  final IconData _icon;

  TextFieldWidget(this.type, this._icon);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.maxFinite,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: kTextFieldBgColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Row(
          children: <Widget>[
            Icon(
              _icon,
              size: 16,
              color: kBackgroundColor,
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              width: 200,
              child: TextField(
                keyboardType: type == 'Email'
                    ? TextInputType.emailAddress
                    : TextInputType.text,
                obscureText: type == 'Password' ? true : false,
                textAlignVertical: TextAlignVertical.center,
                style: GoogleFonts.poppins(
                  color: kCredTextColor,
                  letterSpacing: 2,
                  fontSize: 16,
                  height: 1,
                ),
                decoration: InputDecoration(
                  hintText: type,
                  hintStyle: TextStyle(
                    color: kCredTextColor,
                    letterSpacing: 2,
                    fontSize: 16,
                  ),
                  border: InputBorder.none,
                ),
              ),
            )
            //
          ],
        ),
      ),
    );
  }
}
