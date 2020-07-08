import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              colors: [
                Colors.purple[800],
                Colors.purple[200],
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 80.0,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Login',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Welcome Back',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 60.0,
                        ),
                        Container(
                          padding: EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.purpleAccent[100],
                                  blurRadius: 20,
                                  offset: Offset(0, 10)),
                            ],
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(8.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Email ID or Phone Number',
                                    hintStyle: TextStyle(
                                      color: Colors.grey,
                                    ),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(8.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Password',
                                    hintStyle: TextStyle(
                                      color: Colors.grey,
                                    ),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 60.0,
                        ),
                        Text(
                          "Forgot Password?",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 60.0,
                        ),
                        Container(
                          height: 60,
                          margin: EdgeInsets.all(8.0),
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            // color: Colors.purple[500],
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              colors: [
                                Colors.purple[800],
                                Colors.purple[300],
                              ],
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        Text(
                          "Continue with Social Login",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                height: 60,
                                margin: EdgeInsets.all(8.0),
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  // color: Colors.purple[500],
                                  gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    colors: [
                                      Colors.blue[800],
                                      Colors.blue[300],
                                    ],
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'Facebook',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Expanded(
                              child: Container(
                                height: 60,
                                margin: EdgeInsets.all(8.0),
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  // color: Colors.purple[500],
                                  gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    colors: [
                                      Colors.orange[800],
                                      Colors.orange[300],
                                    ],
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'Google',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
