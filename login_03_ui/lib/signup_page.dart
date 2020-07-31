import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_03_ui/button_widget.dart';
import 'package:login_03_ui/passbook_icons.dart';
import 'package:login_03_ui/textField_widget.dart';

import 'constants.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: kBackgroundColor),
        child: Column(
          children: <Widget>[
            Container(
              child: Image.asset(
                'assets/signin_image.png',
                height: 180,
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Sign Up',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w900,
                            letterSpacing: 1.2,
                            color: kLabelColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Fullname',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.2,
                            color: kLabelColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFieldWidget('Fullname', Passbook.user),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Email',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.2,
                            color: kLabelColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFieldWidget('Email', Passbook.mail),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Password',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.2,
                            color: kLabelColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFieldWidget('Password', Passbook.key),
                      SizedBox(
                        height: 30,
                      ),
                      ButtonWidget(),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            'Already a member?',
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: Colors.grey,
                              letterSpacing: 1.2,
                            ),
                          ),
                          GestureDetector(
                            onTap: () => Navigator.of(context).pop(),
                            child: Text(
                              ' Sign in',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: kCredTextColor,
                                letterSpacing: 1.2,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
